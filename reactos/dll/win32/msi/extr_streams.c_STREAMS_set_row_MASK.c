#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_6__ {int num_cols; TYPE_2__* db; } ;
struct TYPE_5__ {int num_streams; TYPE_1__* streams; int /*<<< orphan*/  strings; } ;
struct TYPE_4__ {int /*<<< orphan*/ * stream; int /*<<< orphan*/  str_index; } ;
typedef  TYPE_3__ MSISTREAMSVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IStream ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  StringNonPersistent ; 
 int /*<<< orphan*/  FUNC5 (char*,struct tagMSIVIEW*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC7(struct tagMSIVIEW *view, UINT row, MSIRECORD *rec, UINT mask)
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;

    FUNC5("(%p, %d, %p, %08x)\n", view, row, rec, mask);

    if (row > sv->db->num_streams || mask >= (1 << sv->num_cols))
        return ERROR_INVALID_PARAMETER;

    if (mask & 1)
    {
        const WCHAR *name = FUNC4( rec, 1 );

        if (!name) return ERROR_INVALID_PARAMETER;
        sv->db->streams[row].str_index = FUNC6( sv->db->strings, name, -1, StringNonPersistent );
    }
    if (mask & 2)
    {
        IStream *old, *new;
        HRESULT hr;
        UINT r;

        r = FUNC3( rec, 2, &new );
        if (r != ERROR_SUCCESS)
            return r;

        old = sv->db->streams[row].stream;
        hr = FUNC1( new, &IID_IStream, (void **)&sv->db->streams[row].stream );
        if (FUNC0( hr ))
        {
            FUNC2( new );
            return ERROR_FUNCTION_FAILED;
        }
        if (old) FUNC2( old );
    }

    return ERROR_SUCCESS;
}