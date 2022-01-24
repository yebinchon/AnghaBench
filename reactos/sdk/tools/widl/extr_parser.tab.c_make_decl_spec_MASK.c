#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  enum storage_class { ____Placeholder_storage_class } storage_class ;
struct TYPE_12__ {scalar_t__ stgclass; int /*<<< orphan*/ * attrs; TYPE_1__* type; } ;
typedef  TYPE_2__ decl_spec_t ;
typedef  int /*<<< orphan*/  attr_t ;
typedef  int /*<<< orphan*/  attr_list_t ;

/* Variables and functions */
 scalar_t__ STG_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int) ; 

__attribute__((used)) static decl_spec_t *FUNC8(type_t *type, decl_spec_t *left, decl_spec_t *right, attr_t *attr, enum storage_class stgclass)
{
  decl_spec_t *declspec = left ? left : right;
  if (!declspec)
  {
    declspec = FUNC7(sizeof(*declspec));
    declspec->type = NULL;
    declspec->attrs = NULL;
    declspec->stgclass = STG_NONE;
  }
  declspec->type = type;
  if (left && declspec != left)
  {
    declspec->attrs = FUNC1(declspec->attrs, left->attrs);
    if (declspec->stgclass == STG_NONE)
      declspec->stgclass = left->stgclass;
    else if (left->stgclass != STG_NONE)
      FUNC4("only one storage class can be specified\n");
    FUNC2(!left->type);
    FUNC5(left);
  }
  if (right && declspec != right)
  {
    declspec->attrs = FUNC1(declspec->attrs, right->attrs);
    if (declspec->stgclass == STG_NONE)
      declspec->stgclass = right->stgclass;
    else if (right->stgclass != STG_NONE)
      FUNC4("only one storage class can be specified\n");
    FUNC2(!right->type);
    FUNC5(right);
  }

  declspec->attrs = FUNC0(declspec->attrs, attr);
  if (declspec->stgclass == STG_NONE)
    declspec->stgclass = stgclass;
  else if (stgclass != STG_NONE)
    FUNC4("only one storage class can be specified\n");

  /* apply attributes to type */
  if (type && declspec->attrs)
  {
    attr_list_t *attrs;
    declspec->type = FUNC3(type, 1);
    attrs = FUNC6(type->attrs, NULL);
    declspec->type->attrs = FUNC1(attrs, declspec->attrs);
    declspec->attrs = NULL;
  }

  return declspec;
}