#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ parse_data ;
struct TYPE_16__ {int canon_len; } ;
typedef  TYPE_2__ Uri ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(const parse_data *data, DWORD flags) {
    Uri uri;

    FUNC7(&uri, 0, sizeof(Uri));

    FUNC1("(%p %x): Beginning to compute canonicalized length for URI %s\n", data, flags,
            FUNC6(data->uri));

    if(!FUNC5(data, &uri, flags, TRUE)) {
        FUNC0("(%p %x): Failed to compute URI scheme length.\n", data, flags);
        return -1;
    }

    if(!FUNC3(data, &uri, flags, TRUE)) {
        FUNC0("(%p %x): Failed to compute URI hierpart length.\n", data, flags);
        return -1;
    }

    if(!FUNC4(data, &uri, flags, TRUE)) {
        FUNC0("(%p %x): Failed to compute query string length.\n", data, flags);
        return -1;
    }

    if(!FUNC2(data, &uri, flags, TRUE)) {
        FUNC0("(%p %x): Failed to compute fragment length.\n", data, flags);
        return -1;
    }

    FUNC1("(%p %x): Finished computing canonicalized URI length. length=%d\n", data, flags, uri.canon_len);

    return uri.canon_len;
}