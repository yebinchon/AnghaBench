#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ pd_prov_type; int pd_flags; int /*<<< orphan*/  pd_sid; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  kcf_prov_tried_t ;
struct TYPE_13__ {scalar_t__ me_gen_swprov; } ;
typedef  TYPE_2__ kcf_mech_entry_t ;
struct TYPE_14__ {scalar_t__ ct_generation; int /*<<< orphan*/ * ct_prov_tmpl; } ;
typedef  TYPE_3__ kcf_ctx_template_t ;
typedef  int /*<<< orphan*/ * crypto_spi_ctx_template_t ;
struct TYPE_15__ {int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_4__ crypto_mechanism_t ;
typedef  int /*<<< orphan*/  crypto_key_t ;
typedef  scalar_t__ crypto_ctx_template_t ;
typedef  int /*<<< orphan*/  crypto_context_t ;
typedef  int /*<<< orphan*/  crypto_call_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int CRYPTO_BUFFER_TOO_BIG ; 
 int /*<<< orphan*/  CRYPTO_FG_MAC ; 
 int CRYPTO_HASH_NO_UPDATE ; 
 scalar_t__ CRYPTO_HW_PROVIDER ; 
 int CRYPTO_OLD_CTX_TEMPLATE ; 
 int CRYPTO_QUEUED ; 
 int CRYPTO_SUCCESS ; 
 scalar_t__ CRYPTO_SW_PROVIDER ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_2__**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC8(crypto_mechanism_t *mech, crypto_key_t *key,
    crypto_ctx_template_t tmpl, crypto_context_t *ctxp,
    crypto_call_req_t  *crq)
{
	int error;
	kcf_mech_entry_t *me;
	kcf_provider_desc_t *pd;
	kcf_ctx_template_t *ctx_tmpl;
	crypto_spi_ctx_template_t spi_ctx_tmpl = NULL;
	kcf_prov_tried_t *list = NULL;

retry:
	/* The pd is returned held */
	if ((pd = FUNC6(mech->cm_type, &me, &error,
	    list, CRYPTO_FG_MAC, FUNC0(crq), 0)) == NULL) {
		if (list != NULL)
			FUNC5(list);
		return (error);
	}

	/*
	 * For SW providers, check the validity of the context template
	 * It is very rare that the generation number mis-matches, so
	 * is acceptable to fail here, and let the consumer recover by
	 * freeing this tmpl and create a new one for the key and new SW
	 * provider
	 */

	if ((pd->pd_prov_type == CRYPTO_SW_PROVIDER) &&
	    ((ctx_tmpl = (kcf_ctx_template_t *)tmpl) != NULL)) {
		if (ctx_tmpl->ct_generation != me->me_gen_swprov) {
			if (list != NULL)
				FUNC5(list);
			FUNC3(pd);
			return (CRYPTO_OLD_CTX_TEMPLATE);
		} else {
			spi_ctx_tmpl = ctx_tmpl->ct_prov_tmpl;
		}
	}

	if (pd->pd_prov_type == CRYPTO_HW_PROVIDER &&
	    (pd->pd_flags & CRYPTO_HASH_NO_UPDATE)) {
		/*
		 * The hardware provider has limited HMAC support.
		 * So, we fallback early here to using a software provider.
		 *
		 * XXX - need to enhance to do the fallback later in
		 * crypto_mac_update() if the size of accumulated input data
		 * exceeds the maximum size digestable by hardware provider.
		 */
		error = CRYPTO_BUFFER_TOO_BIG;
	} else {
		error = FUNC4(pd, pd->pd_sid, mech, key,
		    spi_ctx_tmpl, ctxp, crq);
	}
	if (error != CRYPTO_SUCCESS && error != CRYPTO_QUEUED &&
	    FUNC1(error)) {
		/* Add pd to the linked list of providers tried. */
		if (FUNC7(&list, pd, FUNC2(crq)) != NULL)
			goto retry;
	}

	if (list != NULL)
		FUNC5(list);

	FUNC3(pd);
	return (error);
}