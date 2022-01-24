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

/* Variables and functions */
 int cd_media ; 
 int cd_media_bd ; 
 int cd_media_bd_r ; 
 int cd_media_bd_re ; 
 int cd_media_cd_r ; 
 int cd_media_cd_rom ; 
 int cd_media_cd_rw ; 
 int cd_media_dvd_plus_r ; 
 int cd_media_dvd_plus_r_dl ; 
 int cd_media_dvd_plus_rw ; 
 int cd_media_dvd_plus_rw_dl ; 
 int cd_media_dvd_r ; 
 int cd_media_dvd_ram ; 
 int cd_media_dvd_rom ; 
 int cd_media_dvd_rw ; 
 int cd_media_dvd_rw_ro ; 
 int cd_media_dvd_rw_seq ; 
 int cd_media_hddvd ; 
 int cd_media_hddvd_r ; 
 int cd_media_hddvd_rw ; 
 int cd_media_mo ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(int cur_profile) {
        switch (cur_profile) {
        case 0x03:
        case 0x04:
        case 0x05:
                FUNC0("profile 0x%02x ", cur_profile);
                cd_media = 1;
                cd_media_mo = 1;
                break;
        case 0x08:
                FUNC0("profile 0x%02x media_cd_rom", cur_profile);
                cd_media = 1;
                cd_media_cd_rom = 1;
                break;
        case 0x09:
                FUNC0("profile 0x%02x media_cd_r", cur_profile);
                cd_media = 1;
                cd_media_cd_r = 1;
                break;
        case 0x0a:
                FUNC0("profile 0x%02x media_cd_rw", cur_profile);
                cd_media = 1;
                cd_media_cd_rw = 1;
                break;
        case 0x10:
                FUNC0("profile 0x%02x media_dvd_ro", cur_profile);
                cd_media = 1;
                cd_media_dvd_rom = 1;
                break;
        case 0x11:
                FUNC0("profile 0x%02x media_dvd_r", cur_profile);
                cd_media = 1;
                cd_media_dvd_r = 1;
                break;
        case 0x12:
                FUNC0("profile 0x%02x media_dvd_ram", cur_profile);
                cd_media = 1;
                cd_media_dvd_ram = 1;
                break;
        case 0x13:
                FUNC0("profile 0x%02x media_dvd_rw_ro", cur_profile);
                cd_media = 1;
                cd_media_dvd_rw = 1;
                cd_media_dvd_rw_ro = 1;
                break;
        case 0x14:
                FUNC0("profile 0x%02x media_dvd_rw_seq", cur_profile);
                cd_media = 1;
                cd_media_dvd_rw = 1;
                cd_media_dvd_rw_seq = 1;
                break;
        case 0x1B:
                FUNC0("profile 0x%02x media_dvd_plus_r", cur_profile);
                cd_media = 1;
                cd_media_dvd_plus_r = 1;
                break;
        case 0x1A:
                FUNC0("profile 0x%02x media_dvd_plus_rw", cur_profile);
                cd_media = 1;
                cd_media_dvd_plus_rw = 1;
                break;
        case 0x2A:
                FUNC0("profile 0x%02x media_dvd_plus_rw_dl", cur_profile);
                cd_media = 1;
                cd_media_dvd_plus_rw_dl = 1;
                break;
        case 0x2B:
                FUNC0("profile 0x%02x media_dvd_plus_r_dl", cur_profile);
                cd_media = 1;
                cd_media_dvd_plus_r_dl = 1;
                break;
        case 0x40:
                FUNC0("profile 0x%02x media_bd", cur_profile);
                cd_media = 1;
                cd_media_bd = 1;
                break;
        case 0x41:
        case 0x42:
                FUNC0("profile 0x%02x media_bd_r", cur_profile);
                cd_media = 1;
                cd_media_bd_r = 1;
                break;
        case 0x43:
                FUNC0("profile 0x%02x media_bd_re", cur_profile);
                cd_media = 1;
                cd_media_bd_re = 1;
                break;
        case 0x50:
                FUNC0("profile 0x%02x media_hddvd", cur_profile);
                cd_media = 1;
                cd_media_hddvd = 1;
                break;
        case 0x51:
                FUNC0("profile 0x%02x media_hddvd_r", cur_profile);
                cd_media = 1;
                cd_media_hddvd_r = 1;
                break;
        case 0x52:
                FUNC0("profile 0x%02x media_hddvd_rw", cur_profile);
                cd_media = 1;
                cd_media_hddvd_rw = 1;
                break;
        default:
                FUNC0("profile 0x%02x <ignored>", cur_profile);
                break;
        }
}