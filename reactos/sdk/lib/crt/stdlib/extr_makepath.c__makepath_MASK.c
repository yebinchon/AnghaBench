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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char const*) ; 

void FUNC3(char* path, const char* drive, const char* dir, const char* fname, const char* ext)
{
    char *p = path;

    if ( !path )
        return;

    if (drive && drive[0])
    {
        *p++ = drive[0];
        *p++ = ':';
    }
    if (dir && dir[0])
    {
        size_t len = FUNC2(dir);
        FUNC0(p, dir, len);
        p += len;
        if (p[-1] != '/' && p[-1] != '\\')
            *p++ = '\\';
    }
    if (fname && fname[0])
    {
        size_t len = FUNC2(fname);
        FUNC0(p, fname, len);
        p += len;
    }
    if (ext && ext[0])
    {
        if (ext[0] != '.')
            *p++ = '.';
        FUNC1(p, ext);
    }
    else
        *p = '\0';
}