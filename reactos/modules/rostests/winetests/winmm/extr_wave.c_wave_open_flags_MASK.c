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
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CALLBACK_EVENT ; 
 int CALLBACK_FUNCTION ; 
 int CALLBACK_NULL ; 
 int CALLBACK_THREAD ; 
 int CALLBACK_TYPEMASK ; 
 int CALLBACK_WINDOW ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int WAVE_ALLOWSYNC ; 
 int WAVE_FORMAT_DIRECT ; 
 int WAVE_FORMAT_QUERY ; 
 int WAVE_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

const char * FUNC1(DWORD flags)
{
    static char msg[1024];
    BOOL first = TRUE;
    msg[0] = 0;
    if ((flags & CALLBACK_TYPEMASK) == CALLBACK_EVENT) {
        FUNC0(msg, "CALLBACK_EVENT");
        first = FALSE;
    }
    if ((flags & CALLBACK_TYPEMASK) == CALLBACK_FUNCTION) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "CALLBACK_FUNCTION");
        first = FALSE;
    }
    if ((flags & CALLBACK_TYPEMASK) == CALLBACK_NULL) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "CALLBACK_NULL");
        first = FALSE;
    }
    if ((flags & CALLBACK_TYPEMASK) == CALLBACK_THREAD) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "CALLBACK_THREAD");
        first = FALSE;
    }
    if ((flags & CALLBACK_TYPEMASK) == CALLBACK_WINDOW) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "CALLBACK_WINDOW");
        first = FALSE;
    }
    if ((flags & WAVE_ALLOWSYNC) == WAVE_ALLOWSYNC) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "WAVE_ALLOWSYNC");
        first = FALSE;
    }
    if ((flags & WAVE_FORMAT_DIRECT) == WAVE_FORMAT_DIRECT) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "WAVE_FORMAT_DIRECT");
        first = FALSE;
    }
    if ((flags & WAVE_FORMAT_QUERY) == WAVE_FORMAT_QUERY) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "WAVE_FORMAT_QUERY");
        first = FALSE;
    }
    if ((flags & WAVE_MAPPED) == WAVE_MAPPED) {
        if (!first) FUNC0(msg, "|");
        FUNC0(msg, "WAVE_MAPPED");
    }
    return msg;
}