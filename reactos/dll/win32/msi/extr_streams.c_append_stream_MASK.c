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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_6__ {size_t num_streams; TYPE_1__* streams; int /*<<< orphan*/  strings; } ;
struct TYPE_5__ {int /*<<< orphan*/ * stream; int /*<<< orphan*/  str_index; } ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  IStream ;

/* Variables and functions */
 size_t ERROR_OUTOFMEMORY ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  StringNonPersistent ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 

__attribute__((used)) static UINT FUNC4( MSIDATABASE *db, const WCHAR *name, IStream *stream )
{
    UINT i = db->num_streams;

    if (!FUNC3( db, db->num_streams + 1 ))
        return ERROR_OUTOFMEMORY;

    db->streams[i].str_index = FUNC2( db->strings, name, -1, StringNonPersistent );
    db->streams[i].stream = stream;
    db->num_streams++;

    FUNC0("added %s\n", FUNC1( name ));
    return ERROR_SUCCESS;
}