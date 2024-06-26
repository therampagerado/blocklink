{**
 * Copyright (C) 2017-2024 thirty bees
 * Copyright (C) 2007-2016 PrestaShop SA
 *
 * thirty bees is an extension to the PrestaShop software by PrestaShop SA.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2017-2024 thirty bees
 * @copyright 2007-2016 PrestaShop SA
 * @license   Academic Free License (AFL 3.0)
 * PrestaShop is an internationally registered trademark of PrestaShop SA.
 *}

<!-- Block links module -->
<div id="links_block_left" class="block">
	<h4 class="title_block">
	{if $url}
		<a href="{$url|escape}" title="{$title|escape}">{$title|escape}</a>
	{else}
		{$title|escape}
	{/if}
	</h4>
	<ul class="block_content bullet">
	{foreach from=$blocklink_links item=blocklink_link}
		{if isset($blocklink_link.$lang)}
			<li>
				<a href="{$blocklink_link.url|escape}" title="{$blocklink_link.$lang|escape}" {if $blocklink_link.newWindow} onclick="window.open(this.href);return false;"{/if}>{$blocklink_link.$lang|escape}</a></li>
		{/if}
	{/foreach}
	</ul>
</div>
<!-- /Block links module -->
