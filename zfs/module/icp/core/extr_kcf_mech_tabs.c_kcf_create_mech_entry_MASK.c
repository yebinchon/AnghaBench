#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mod_hash_val_t ;
typedef  int /*<<< orphan*/  mod_hash_key_t ;
typedef  size_t kcf_ops_class_t ;
struct TYPE_3__ {scalar_t__* me_name; int /*<<< orphan*/  me_mutex; int /*<<< orphan*/  me_mechid; scalar_t__ me_threshold; } ;
typedef  TYPE_1__ kcf_mech_entry_t ;
typedef  scalar_t__ crypto_mech_type_t ;
struct TYPE_4__ {int met_size; TYPE_1__* met_tab; } ;

/* Variables and functions */
 int CRYPTO_MAX_MECH_NAME ; 
 scalar_t__ CRYPTO_MECH_INVALID ; 
 size_t KCF_FIRST_OPSCLASS ; 
 int KCF_INVALID_MECH_CLASS ; 
 int KCF_INVALID_MECH_NAME ; 
 size_t KCF_LAST_OPSCLASS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int KCF_MECH_TAB_FULL ; 
 int KCF_SUCCESS ; 
 int /*<<< orphan*/  kcf_mech_hash ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  kcf_mech_tabs_lock ; 
 TYPE_2__* kcf_mech_tabs_tab ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*,int) ; 

__attribute__((used)) static int
FUNC6(kcf_ops_class_t class, char *mechname)
{
	crypto_mech_type_t mt;
	kcf_mech_entry_t *me_tab;
	int i = 0, size;

	if ((class < KCF_FIRST_OPSCLASS) || (class > KCF_LAST_OPSCLASS))
		return (KCF_INVALID_MECH_CLASS);

	if ((mechname == NULL) || (mechname[0] == 0))
		return (KCF_INVALID_MECH_NAME);
	/*
	 * First check if the mechanism is already in one of the tables.
	 * The mech_entry could be in another class.
	 */
	FUNC3(&kcf_mech_tabs_lock);
	mt = FUNC1(mechname);
	if (mt != CRYPTO_MECH_INVALID) {
		/* Nothing to do, regardless the suggested class. */
		FUNC4(&kcf_mech_tabs_lock);
		return (KCF_SUCCESS);
	}
	/* Now take the next unused mech entry in the class's tab */
	me_tab = kcf_mech_tabs_tab[class].met_tab;
	size = kcf_mech_tabs_tab[class].met_size;

	while (i < size) {
		FUNC3(&(me_tab[i].me_mutex));
		if (me_tab[i].me_name[0] == 0) {
			/* Found an empty spot */
			(void) FUNC5(me_tab[i].me_name, mechname,
			    CRYPTO_MAX_MECH_NAME);
			me_tab[i].me_name[CRYPTO_MAX_MECH_NAME-1] = '\0';
			me_tab[i].me_mechid = FUNC0(class, i);
			/*
			 * No a-priori information about the new mechanism, so
			 * the threshold is set to zero.
			 */
			me_tab[i].me_threshold = 0;

			FUNC4(&(me_tab[i].me_mutex));
			/* Add the new mechanism to the hash table */
			(void) FUNC2(kcf_mech_hash,
			    (mod_hash_key_t)me_tab[i].me_name,
			    (mod_hash_val_t)&(me_tab[i].me_mechid));
			break;
		}
		FUNC4(&(me_tab[i].me_mutex));
		i++;
	}

	FUNC4(&kcf_mech_tabs_lock);

	if (i == size) {
		return (KCF_MECH_TAB_FULL);
	}

	return (KCF_SUCCESS);
}