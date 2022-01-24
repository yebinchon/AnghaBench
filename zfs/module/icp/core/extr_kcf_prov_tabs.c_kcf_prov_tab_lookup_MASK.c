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
typedef  int /*<<< orphan*/  kcf_provider_desc_t ;
typedef  size_t crypto_provider_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** prov_tab ; 
 int /*<<< orphan*/  prov_tab_mutex ; 

kcf_provider_desc_t *
FUNC3(crypto_provider_id_t prov_id)
{
	kcf_provider_desc_t *prov_desc;

	FUNC1(&prov_tab_mutex);

	prov_desc = prov_tab[prov_id];

	if (prov_desc == NULL) {
		FUNC2(&prov_tab_mutex);
		return (NULL);
	}

	FUNC0(prov_desc);

	FUNC2(&prov_tab_mutex);

	return (prov_desc);
}