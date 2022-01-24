#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strbuf_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int encode_invalid_numbers; int /*<<< orphan*/  encode_number_precision; } ;
typedef  TYPE_1__ json_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FPCONV_G_FMT_BUFSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (double) ; 
 scalar_t__ FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,char*) ; 
 double FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(lua_State *l, json_config_t *cfg,
                               strbuf_t *json, int lindex)
{
    double num = FUNC4(l, lindex);
    int len;

    if (cfg->encode_invalid_numbers == 0) {
        /* Prevent encoding invalid numbers */
        if (FUNC1(num) || FUNC2(num))
            FUNC3(l, cfg, json, lindex, "must not be NaN or Inf");
    } else if (cfg->encode_invalid_numbers == 1) {
        /* Encode invalid numbers, but handle "nan" separately
         * since some platforms may encode as "-nan". */
        if (FUNC2(num)) {
            FUNC5(json, "nan", 3);
            return;
        }
    } else {
        /* Encode invalid numbers as "null" */
        if (FUNC1(num) || FUNC2(num)) {
            FUNC5(json, "null", 4);
            return;
        }
    }

    FUNC7(json, FPCONV_G_FMT_BUFSIZE);
    len = FUNC0(FUNC6(json), num, cfg->encode_number_precision);
    FUNC8(json, len);
}