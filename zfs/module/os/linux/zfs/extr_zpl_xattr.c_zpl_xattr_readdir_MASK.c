#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  xattr_filldir_t ;
struct inode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  z_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  z_os; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct inode *dxip, xattr_filldir_t *xf)
{
	zap_cursor_t zc;
	zap_attribute_t	zap;
	int error;

	FUNC5(&zc, FUNC1(dxip)->z_os, FUNC0(dxip)->z_id);

	while ((error = -FUNC6(&zc, &zap)) == 0) {

		if (zap.za_integer_length != 8 || zap.za_num_integers != 1) {
			error = -ENXIO;
			break;
		}

		error = FUNC7(xf, zap.za_name, FUNC2(zap.za_name));
		if (error)
			break;

		FUNC3(&zc);
	}

	FUNC4(&zc);

	if (error == -ENOENT)
		error = 0;

	return (error);
}