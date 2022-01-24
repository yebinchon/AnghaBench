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
typedef  int uint32_t ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(char **comments, size_t *length, const char *tag,
                       const char *val)
{
    char *p = *comments;
    uint32_t vendor_length = FUNC0(p + 8);
    size_t user_comment_list_length = FUNC0(p + 8 + 4 + vendor_length);
    size_t tag_len = (tag ? FUNC4(tag) : 0);
    size_t val_len = FUNC4(val);
    size_t len = (*length) + 4 + tag_len + val_len;

    char *reaced = FUNC3(p, len);
    if (reaced == NULL)
        return 1;
    p = reaced;

    FUNC1(p + *length, tag_len + val_len);          /* length of comment */
    if (tag) FUNC2(p + *length + 4, tag, tag_len);         /* comment */
    FUNC2(p + *length + 4 + tag_len, val, val_len);        /* comment */
    FUNC1(p + 8 + 4 + vendor_length, user_comment_list_length + 1);
    *comments = p;
    *length = len;
    return 0;
}