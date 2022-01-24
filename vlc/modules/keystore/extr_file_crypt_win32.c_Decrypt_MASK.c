#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void vlc_keystore ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ProcessFunc ;

/* Variables and functions */
 int /*<<< orphan*/  CryptUnprotectData ; 
 size_t FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static size_t FUNC2( vlc_keystore *p_keystore, void *p_ctx, const uint8_t *p_src,
                      size_t i_src_len, uint8_t ** pp_dst )
{
    FUNC1( p_keystore );
    FUNC1( p_ctx );
    // Cast the function pointer to avoid an invalid parameter warning, regarding the "description"
    // parameter. It's LPCWSTR in the case of CryptProtectData, and LPWSTR* in the case of CryptUnprotect
    // Since we pass NULL anyway, we don't care
    return FUNC0( p_src, i_src_len, pp_dst, (ProcessFunc)&CryptUnprotectData );
}