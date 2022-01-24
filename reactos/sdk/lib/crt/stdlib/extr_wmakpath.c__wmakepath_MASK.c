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
typedef  char wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char const*) ; 

void FUNC3(wchar_t* path, const wchar_t* drive, const wchar_t* dir, const wchar_t* fname, const wchar_t* ext)
{
    wchar_t *p = path;

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
        FUNC0(p, dir, len * sizeof(wchar_t));
        p += len;
        if (p[-1] != '/' && p[-1] != '\\')
            *p++ = '\\';
    }
    if (fname && fname[0])
    {
        size_t len = FUNC2(fname);
        FUNC0(p, fname, len * sizeof(wchar_t));
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