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
 void* CGATSout ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TRUE ; 
 void* TiffDiffFilename ; 
 int /*<<< orphan*/  Verbose ; 
 int FUNC2 (int,char**,char*) ; 
 void* xoptarg ; 

__attribute__((used)) static
void FUNC3(int argc, char *argv[])
{
       int s;

       while ((s=FUNC2(argc,argv,"o:O:hHvVg:G:")) != EOF) {

       switch (s) {


       case 'v':
       case 'V':
            Verbose = TRUE;
            break;

       case 'o':
       case 'O':
           TiffDiffFilename  = xoptarg;
           break;


        case 'H':
        case 'h':
            FUNC1();
            break;

        case 'g':
        case 'G':
            CGATSout = xoptarg;
            break;

  default:

       FUNC0("Unknown option - run without args to see valid ones");
    }
    }
}