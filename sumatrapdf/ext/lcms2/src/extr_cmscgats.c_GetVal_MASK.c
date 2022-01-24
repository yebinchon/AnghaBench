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
typedef  int cmsUInt32Number ;
struct TYPE_4__ {int sy; int inum; char* DoubleFormatter; int dnum; int /*<<< orphan*/  str; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ cmsIT8 ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
#define  SDNUM 132 
#define  SEOLN 131 
#define  SIDENT 130 
#define  SINUM 129 
#define  SSTRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
cmsBool FUNC3(cmsContext ContextID, cmsIT8* it8, char* Buffer, cmsUInt32Number max, const char* ErrorTitle)
{
    switch (it8->sy) {

    case SEOLN:   // Empty value
                  Buffer[0]=0;
                  break;
    case SIDENT:  FUNC2(Buffer, it8->id, max);
                  Buffer[max-1]=0;
                  break;
    case SINUM:   FUNC1(Buffer, max, "%d", it8 -> inum); break;
    case SDNUM:   FUNC1(Buffer, max, it8->DoubleFormatter, it8 -> dnum); break;
    case SSTRING: FUNC2(Buffer, it8->str, max);
                  Buffer[max-1] = 0;
                  break;


    default:
         return FUNC0(ContextID, it8, "%s", ErrorTitle);
    }

    Buffer[max] = 0;
    return TRUE;
}