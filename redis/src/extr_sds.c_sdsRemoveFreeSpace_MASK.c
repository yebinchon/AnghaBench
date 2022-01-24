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
typedef  char* sds ;

/* Variables and functions */
 char SDS_TYPE_8 ; 
 char SDS_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (void*,int) ; 
 int FUNC4 (char) ; 
 char FUNC5 (size_t) ; 
 size_t FUNC6 (char*) ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 

sds FUNC10(sds s) {
    void *sh, *newsh;
    char type, oldtype = s[-1] & SDS_TYPE_MASK;
    int hdrlen, oldhdrlen = FUNC4(oldtype);
    size_t len = FUNC7(s);
    size_t avail = FUNC6(s);
    sh = (char*)s-oldhdrlen;

    /* Return ASAP if there is no space left. */
    if (avail == 0) return s;

    /* Check what would be the minimum SDS header that is just good enough to
     * fit this string. */
    type = FUNC5(len);
    hdrlen = FUNC4(type);

    /* If the type is the same, or at least a large enough type is still
     * required, we just realloc(), letting the allocator to do the copy
     * only if really needed. Otherwise if the change is huge, we manually
     * reallocate the string to use the different header type. */
    if (oldtype==type || type > SDS_TYPE_8) {
        newsh = FUNC3(sh, oldhdrlen+len+1);
        if (newsh == NULL) return NULL;
        s = (char*)newsh+oldhdrlen;
    } else {
        newsh = FUNC2(hdrlen+len+1);
        if (newsh == NULL) return NULL;
        FUNC0((char*)newsh+hdrlen, s, len+1);
        FUNC1(sh);
        s = (char*)newsh+hdrlen;
        s[-1] = type;
        FUNC9(s, len);
    }
    FUNC8(s, len);
    return s;
}