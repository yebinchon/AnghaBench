#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* psz_path; char* psz_option; int /*<<< orphan*/  psz_host; } ;
typedef  TYPE_1__ vlc_url_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,char*,char*,char const*,char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(vlc_url_t *p_url, const char *psz_file)
{
    /* nfs://<psz_host><psz_path><psz_file>?<psz_option> */
    char *psz_url;
    if (FUNC0(&psz_url, "nfs://%d%s%s%s%s%s", p_url->psz_host,
                 p_url->psz_path != NULL ? p_url->psz_path : "",
                 p_url->psz_path != NULL && p_url->psz_path[0] != '\0' &&
                 p_url->psz_path[FUNC1(p_url->psz_path) - 1] != '/' ? "/" : "",
                 psz_file,
                 p_url->psz_option != NULL ? "?" : "",
                 p_url->psz_option != NULL ? p_url->psz_option : "") == -1)
        return NULL;
    else
        return psz_url;
}