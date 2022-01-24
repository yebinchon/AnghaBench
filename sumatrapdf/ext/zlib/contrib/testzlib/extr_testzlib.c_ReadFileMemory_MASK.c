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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 long FUNC2 (unsigned char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (long) ; 

int FUNC6(const char* filename,long* plFileSize,unsigned char** pFilePtr)
{
    FILE* stream;
    unsigned char* ptr;
    int retVal=1;
    stream=FUNC1(filename, "rb");
    if (stream==NULL)
        return 0;

    FUNC3(stream,0,SEEK_END);

    *plFileSize=FUNC4(stream);
    FUNC3(stream,0,SEEK_SET);
    ptr=FUNC5((*plFileSize)+1);
    if (ptr==NULL)
        retVal=0;
    else
    {
        if (FUNC2(ptr, 1, *plFileSize,stream) != (*plFileSize))
            retVal=0;
    }
    FUNC0(stream);
    *pFilePtr=ptr;
    return retVal;
}