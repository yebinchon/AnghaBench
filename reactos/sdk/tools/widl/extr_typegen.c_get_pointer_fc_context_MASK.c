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
typedef  int /*<<< orphan*/  type_t ;
typedef  enum type_context { ____Placeholder_type_context } type_context ;
typedef  int /*<<< orphan*/  attr_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_OUT ; 
 int FC_OP ; 
 int FC_UP ; 
 int TYPE_CONTEXT_PARAM ; 
 int TYPE_CONTEXT_TOPLEVELPARAM ; 
 int /*<<< orphan*/  current_iface ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC3( const type_t *type, const attr_list_t *attrs,
                                             enum type_context context )
{
    int pointer_fc = FUNC0(type, attrs, context == TYPE_CONTEXT_TOPLEVELPARAM);

    if (pointer_fc == FC_UP && FUNC1( attrs, ATTR_OUT ) &&
        context == TYPE_CONTEXT_PARAM && FUNC2( current_iface ))
        pointer_fc = FC_OP;

    return pointer_fc;
}