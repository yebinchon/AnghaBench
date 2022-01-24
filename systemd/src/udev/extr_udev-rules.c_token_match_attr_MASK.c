#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbuf ;
struct TYPE_11__ {int attr_subst_type; scalar_t__ attr_match_remove_trailing_whitespace; scalar_t__ data; } ;
typedef  TYPE_1__ sd_device ;
typedef  int /*<<< orphan*/  nbuf ;
typedef  TYPE_1__ UdevRuleToken ;
typedef  TYPE_1__ UdevEvent ;

/* Variables and functions */
#define  SUBST_TYPE_FORMAT 130 
#define  SUBST_TYPE_PLAIN 129 
#define  SUBST_TYPE_SUBSYS 128 
 int UTIL_NAME_SIZE ; 
 int /*<<< orphan*/  _fallthrough_ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*) ; 
 int FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int,int) ; 

__attribute__((used)) static bool FUNC8(UdevRuleToken *token, sd_device *dev, UdevEvent *event) {
        char nbuf[UTIL_NAME_SIZE], vbuf[UTIL_NAME_SIZE];
        const char *name, *value;

        FUNC0(token);
        FUNC0(dev);
        FUNC0(event);

        name = (const char*) token->data;

        switch (token->attr_subst_type) {
        case SUBST_TYPE_FORMAT:
                (void) FUNC6(event, name, nbuf, sizeof(nbuf), false);
                name = nbuf;
                _fallthrough_;
        case SUBST_TYPE_PLAIN:
                if (FUNC3(dev, name, &value) < 0)
                        return false;
                break;
        case SUBST_TYPE_SUBSYS:
                if (FUNC7(name, vbuf, sizeof(vbuf), true) < 0)
                        return false;
                value = vbuf;
                break;
        default:
                FUNC1("Invalid attribute substitution type");
        }

        /* remove trailing whitespace, if not asked to match for it */
        if (token->attr_match_remove_trailing_whitespace) {
                if (value != vbuf) {
                        FUNC4(vbuf, sizeof(vbuf), value);
                        value = vbuf;
                }

                FUNC2(vbuf, NULL);
        }

        return FUNC5(token, value);
}