#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/  verbs; } ;
struct TYPE_5__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  Argument; int /*<<< orphan*/  Command; int /*<<< orphan*/  Sequence; int /*<<< orphan*/  Verb; } ;
typedef  TYPE_1__ MSIVERB ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_2__ MSIEXTENSION ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static UINT FUNC10(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE* package = param;
    MSIVERB *verb;
    LPCWSTR buffer;
    MSIEXTENSION *extension;

    buffer = FUNC2(row,1);
    extension = FUNC7( package, buffer );
    if (!extension)
    {
        FUNC0("Verb unable to find loaded extension %s\n", FUNC4(buffer));
        return ERROR_SUCCESS;
    }

    /* fill in the data */

    verb = FUNC8( sizeof(MSIVERB) );
    if (!verb)
        return ERROR_OUTOFMEMORY;

    verb->Verb = FUNC9(row,2);
    FUNC3("loading verb %s\n",FUNC4(verb->Verb));
    verb->Sequence = FUNC1(row,3);

    buffer = FUNC2(row,4);
    FUNC5(package,buffer,&verb->Command);

    buffer = FUNC2(row,5);
    FUNC5(package,buffer,&verb->Argument);

    /* associate the verb with the correct extension */
    FUNC6( &extension->verbs, &verb->entry );
    
    return ERROR_SUCCESS;
}