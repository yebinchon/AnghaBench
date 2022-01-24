#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_provider_desc_t ;
struct TYPE_10__ {int /*<<< orphan*/  me_gen_swprov; } ;
typedef  TYPE_1__ kcf_mech_entry_t ;
struct TYPE_11__ {int /*<<< orphan*/  ct_generation; int /*<<< orphan*/  ct_size; int /*<<< orphan*/  ct_prov_tmpl; } ;
typedef  TYPE_2__ kcf_ctx_template_t ;
struct TYPE_12__ {int /*<<< orphan*/  cm_param_len; int /*<<< orphan*/  cm_param; int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_3__ crypto_mechanism_t ;
typedef  int /*<<< orphan*/  crypto_key_t ;
typedef  TYPE_2__* crypto_ctx_template_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int CRYPTO_ARGUMENTS_BAD ; 
 int CRYPTO_HOST_MEMORY ; 
 int CRYPTO_MECHANISM_INVALID ; 
 int CRYPTO_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_1__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

int
FUNC7(crypto_mechanism_t *mech, crypto_key_t *key,
    crypto_ctx_template_t *ptmpl, int kmflag)
{
	int error;
	kcf_mech_entry_t *me;
	kcf_provider_desc_t *pd;
	kcf_ctx_template_t *ctx_tmpl;
	crypto_mechanism_t prov_mech;

	/* A few args validation */

	if (ptmpl == NULL)
		return (CRYPTO_ARGUMENTS_BAD);

	if (mech == NULL)
		return (CRYPTO_MECHANISM_INVALID);

	error = FUNC4(mech->cm_type, &pd, &me, B_TRUE);
	if (error != CRYPTO_SUCCESS)
		return (error);

	if ((ctx_tmpl = (kcf_ctx_template_t *)FUNC5(
	    sizeof (kcf_ctx_template_t), kmflag)) == NULL) {
		FUNC1(pd);
		return (CRYPTO_HOST_MEMORY);
	}

	/* Pass a mechtype that the provider understands */
	prov_mech.cm_type = FUNC3(pd, mech->cm_type);
	prov_mech.cm_param = mech->cm_param;
	prov_mech.cm_param_len = mech->cm_param_len;

	error = FUNC0(pd, &prov_mech, key,
	    &(ctx_tmpl->ct_prov_tmpl), &(ctx_tmpl->ct_size), FUNC2(kmflag));

	if (error == CRYPTO_SUCCESS) {
		ctx_tmpl->ct_generation = me->me_gen_swprov;
		*ptmpl = ctx_tmpl;
	} else {
		FUNC6(ctx_tmpl, sizeof (kcf_ctx_template_t));
	}
	FUNC1(pd);

	return (error);
}