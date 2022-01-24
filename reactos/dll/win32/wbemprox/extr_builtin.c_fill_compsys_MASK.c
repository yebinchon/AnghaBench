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
struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_computersystem {int /*<<< orphan*/  username; int /*<<< orphan*/  total_physical_memory; int /*<<< orphan*/  num_processors; int /*<<< orphan*/  num_logical_processors; int /*<<< orphan*/  name; int /*<<< orphan*/  model; int /*<<< orphan*/  manufacturer; scalar_t__ domainrole; int /*<<< orphan*/  domain; int /*<<< orphan*/  description; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_UNFILTERED ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  compsys_descriptionW ; 
 int /*<<< orphan*/  compsys_domainW ; 
 int /*<<< orphan*/  compsys_manufacturerW ; 
 int /*<<< orphan*/  compsys_modelW ; 
 int /*<<< orphan*/  FUNC1 (struct table*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct table*,scalar_t__,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct table*,int,int) ; 

__attribute__((used)) static enum fill_status FUNC9( struct table *table, const struct expr *cond )
{
    struct record_computersystem *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    UINT row = 0;

    if (!FUNC8( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    rec = (struct record_computersystem *)table->data;
    rec->description            = compsys_descriptionW;
    rec->domain                 = compsys_domainW;
    rec->domainrole             = 0; /* standalone workstation */
    rec->manufacturer           = compsys_manufacturerW;
    rec->model                  = compsys_modelW;
    rec->name                   = FUNC2();
    rec->num_logical_processors = FUNC3( NULL );
    rec->num_processors         = FUNC4();
    rec->total_physical_memory  = FUNC5();
    rec->username               = FUNC6();
    if (!FUNC7( table, row, cond, &status )) FUNC1( table, row );
    else row++;

    FUNC0("created %u rows\n", row);
    table->num_rows = row;
    return status;
}