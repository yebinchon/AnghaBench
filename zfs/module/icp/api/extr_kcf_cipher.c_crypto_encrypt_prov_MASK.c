#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_req_params_t ;
struct TYPE_12__ {scalar_t__ pd_prov_type; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  crypto_session_id_t ;
typedef  TYPE_1__* crypto_provider_t ;
struct TYPE_13__ {int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_3__ crypto_mechanism_t ;
typedef  int /*<<< orphan*/  crypto_key_t ;
typedef  int /*<<< orphan*/  crypto_data_t ;
typedef  int /*<<< orphan*/  crypto_ctx_template_t ;
typedef  int /*<<< orphan*/  crypto_call_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRYPTO_FG_ENCRYPT_ATOMIC ; 
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ; 
 int /*<<< orphan*/  CRYPTO_MECH_INVALID ; 
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  KCF_OP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7(crypto_provider_t provider, crypto_session_id_t sid,
    crypto_mechanism_t *mech, crypto_data_t *plaintext, crypto_key_t *key,
    crypto_ctx_template_t tmpl, crypto_data_t *ciphertext,
    crypto_call_req_t *crq)
{
	kcf_req_params_t params;
	kcf_provider_desc_t *pd = provider;
	kcf_provider_desc_t *real_provider = pd;
	int error;

	FUNC0(FUNC2(pd));

	if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
		error = FUNC5(mech->cm_type,
		    CRYPTO_MECH_INVALID, FUNC1(crq), pd,
		    &real_provider, CRYPTO_FG_ENCRYPT_ATOMIC);

		if (error != CRYPTO_SUCCESS)
			return (error);
	}

	FUNC4(&params, KCF_OP_ATOMIC, sid, mech, key,
	    plaintext, ciphertext, tmpl);

	error = FUNC6(real_provider, NULL, crq, &params, B_FALSE);
	if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)
		FUNC3(real_provider);

	return (error);
}