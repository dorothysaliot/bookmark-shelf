<?php

namespace Tests\Feature;

use Tests\TestCase;

class SiteTest extends TestCase
{
    public function test_home_page_loads(): void
    {
        $this->get('/')->assertOk();
    }

    public function test_health_check_returns_ok(): void
    {
        $this->get('/health')->assertOk();
    }
}
