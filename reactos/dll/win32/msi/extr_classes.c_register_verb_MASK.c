#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_12__ {int /*<<< orphan*/  FullKeypath; } ;
struct TYPE_11__ {TYPE_1__* Feature; } ;
struct TYPE_10__ {scalar_t__ Sequence; scalar_t__ Verb; scalar_t__ Command; int /*<<< orphan*/  Argument; } ;
struct TYPE_9__ {int /*<<< orphan*/  Feature; } ;
typedef  TYPE_2__ MSIVERB ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_3__ MSIEXTENSION ;
typedef  TYPE_4__ MSICOMPONENT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 scalar_t__ MSI_NULL_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szSpace ; 

__attribute__((used)) static UINT FUNC16(MSIPACKAGE *package, LPCWSTR progid, 
                MSICOMPONENT* component, const MSIEXTENSION* extension,
                MSIVERB* verb, INT* Sequence )
{
    LPWSTR keyname;
    HKEY key;
    static const WCHAR szShell[] = {'s','h','e','l','l',0};
    static const WCHAR szCommand[] = {'c','o','m','m','a','n','d',0};
    static const WCHAR fmt[] = {'\"','%','s','\"',' ','%','s',0};
    static const WCHAR fmt2[] = {'\"','%','s','\"',0};
    LPWSTR command;
    DWORD size;
    LPWSTR advertise;

    keyname = FUNC6(4, progid, szShell, verb->Verb, szCommand);

    FUNC2("Making Key %s\n",FUNC3(keyname));
    FUNC1(HKEY_CLASSES_ROOT, keyname, &key);
    size = FUNC15(component->FullKeypath);
    if (verb->Argument)
        size += FUNC15(verb->Argument);
     size += 4;

     command = FUNC4(size * sizeof (WCHAR));
     if (verb->Argument)
        FUNC12(command, fmt, component->FullKeypath, verb->Argument);
     else
        FUNC12(command, fmt2, component->FullKeypath);

     FUNC11( key, NULL, command );
     FUNC8(command);

     advertise = FUNC7(package, component,
                                                       extension->Feature->Feature);
     size = FUNC15(advertise);

     if (verb->Argument)
         size += FUNC15(verb->Argument);
     size += 4;

     command = FUNC5(size * sizeof (WCHAR));

     FUNC14(command,advertise);
     if (verb->Argument)
     {
         FUNC13(command,szSpace);
         FUNC13(command,verb->Argument);
     }

     FUNC10( key, szCommand, command );
     
     FUNC0(key);
     FUNC8(keyname);
     FUNC8(advertise);
     FUNC8(command);

     if (verb->Command)
     {
        keyname = FUNC6( 3, progid, szShell, verb->Verb );
        FUNC9( HKEY_CLASSES_ROOT, keyname, NULL, verb->Command );
        FUNC8(keyname);
     }

     if (verb->Sequence != MSI_NULL_INTEGER)
     {
        if (*Sequence == MSI_NULL_INTEGER || verb->Sequence < *Sequence)
        {
            *Sequence = verb->Sequence;
            keyname = FUNC6( 2, progid, szShell );
            FUNC9( HKEY_CLASSES_ROOT, keyname, NULL, verb->Verb );
            FUNC8(keyname);
        }
    }
    return ERROR_SUCCESS;
}