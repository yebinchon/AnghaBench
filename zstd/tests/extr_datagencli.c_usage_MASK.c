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
 int /*<<< orphan*/  COMPRESSIBILITY_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SEED_DEFAULT ; 
 int /*<<< orphan*/  SIZE_DEFAULT ; 

__attribute__((used)) static int FUNC1(const char* programName)
{
    FUNC0( "Compressible data generator\n");
    FUNC0( "Usage :\n");
    FUNC0( "      %s [args]\n", programName);
    FUNC0( "\n");
    FUNC0( "Arguments :\n");
    FUNC0( " -g#    : generate # data (default:%i)\n", SIZE_DEFAULT);
    FUNC0( " -s#    : Select seed (default:%i)\n", SEED_DEFAULT);
    FUNC0( " -P#    : Select compressibility in %% (default:%i%%)\n",
                        COMPRESSIBILITY_DEFAULT);
    FUNC0( " -h     : display help and exit\n");
    return 0;
}