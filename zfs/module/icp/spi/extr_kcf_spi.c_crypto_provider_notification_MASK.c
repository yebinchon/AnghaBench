#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
struct TYPE_4__ {scalar_t__ pd_state; scalar_t__ pd_prov_type; int /*<<< orphan*/  pd_lock; int /*<<< orphan*/  pd_resume_cv; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  crypto_provider_id_t ;
typedef  scalar_t__ crypto_kcf_provider_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_WARN ; 
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ; 
#define  CRYPTO_PROVIDER_BUSY 133 
#define  CRYPTO_PROVIDER_FAILED 132 
#define  CRYPTO_PROVIDER_READY 131 
#define  KCF_PROV_BUSY 130 
#define  KCF_PROV_FAILED 129 
#define  KCF_PROV_READY 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ KCF_PROV_VERIFICATION_FAILED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(crypto_kcf_provider_handle_t handle, uint_t state)
{
	kcf_provider_desc_t *pd;

	/* lookup the provider from the given handle */
	if ((pd = FUNC3((crypto_provider_id_t)handle)) == NULL)
		return;

	FUNC4(&pd->pd_lock);

	if (pd->pd_state <= KCF_PROV_VERIFICATION_FAILED)
		goto out;

	if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
		FUNC1(CE_WARN, "crypto_provider_notification: "
		    "logical provider (%x) ignored\n", handle);
		goto out;
	}
	switch (state) {
	case CRYPTO_PROVIDER_READY:
		switch (pd->pd_state) {
		case KCF_PROV_BUSY:
			pd->pd_state = KCF_PROV_READY;
			/*
			 * Signal the per-provider taskq threads that they
			 * can start submitting requests.
			 */
			FUNC2(&pd->pd_resume_cv);
			break;

		case KCF_PROV_FAILED:
			/*
			 * The provider recovered from the error. Let us
			 * use it now.
			 */
			pd->pd_state = KCF_PROV_READY;
			break;
		default:
			break;
		}
		break;

	case CRYPTO_PROVIDER_BUSY:
		switch (pd->pd_state) {
		case KCF_PROV_READY:
			pd->pd_state = KCF_PROV_BUSY;
			break;
		default:
			break;
		}
		break;

	case CRYPTO_PROVIDER_FAILED:
		/*
		 * We note the failure and return. The per-provider taskq
		 * threads check this flag and start failing the
		 * requests, if it is set. See process_req_hwp() for details.
		 */
		switch (pd->pd_state) {
		case KCF_PROV_READY:
			pd->pd_state = KCF_PROV_FAILED;
			break;

		case KCF_PROV_BUSY:
			pd->pd_state = KCF_PROV_FAILED;
			/*
			 * The per-provider taskq threads may be waiting. We
			 * signal them so that they can start failing requests.
			 */
			FUNC2(&pd->pd_resume_cv);
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}
out:
	FUNC5(&pd->pd_lock);
	FUNC0(pd);
}