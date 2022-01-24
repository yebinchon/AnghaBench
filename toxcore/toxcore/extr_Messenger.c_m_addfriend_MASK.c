#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  nospam ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  checksum ;
typedef  int /*<<< orphan*/  check ;
struct TYPE_9__ {TYPE_2__* friendlist; TYPE_1__* net_crypto; } ;
struct TYPE_8__ {scalar_t__ status; scalar_t__ friendrequest_nospam; scalar_t__* info; scalar_t__ info_size; int /*<<< orphan*/  friendrequest_timeout; } ;
struct TYPE_7__ {int /*<<< orphan*/  self_public_key; } ;
typedef  TYPE_3__ Messenger ;

/* Variables and functions */
 int FAERR_ALREADYSENT ; 
 int FAERR_BADCHECKSUM ; 
 int FAERR_NOMESSAGE ; 
 int FAERR_OWNKEY ; 
 int FAERR_SETNEWNOSPAM ; 
 int FAERR_TOOLONG ; 
 int /*<<< orphan*/  FRIENDREQUEST_TIMEOUT ; 
 int /*<<< orphan*/  FRIEND_ADDED ; 
 scalar_t__ FRIEND_ADDRESS_SIZE ; 
 scalar_t__ FRIEND_CONFIRMED ; 
 scalar_t__ MAX_FRIEND_REQUEST_DATA_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int32_t FUNC7(Messenger *m, const uint8_t *address, const uint8_t *data, uint16_t length)
{
    if (length > MAX_FRIEND_REQUEST_DATA_SIZE)
        return FAERR_TOOLONG;

    uint8_t real_pk[crypto_box_PUBLICKEYBYTES];
    FUNC2(real_pk, address);

    if (!FUNC6(real_pk))
        return FAERR_BADCHECKSUM;

    uint16_t check, checksum = FUNC0(address, FRIEND_ADDRESS_SIZE - sizeof(checksum));
    FUNC5(&check, address + crypto_box_PUBLICKEYBYTES + sizeof(uint32_t), sizeof(check));

    if (check != checksum)
        return FAERR_BADCHECKSUM;

    if (length < 1)
        return FAERR_NOMESSAGE;

    if (FUNC3(real_pk, m->net_crypto->self_public_key))
        return FAERR_OWNKEY;

    int32_t friend_id = FUNC1(m, real_pk);

    if (friend_id != -1) {
        if (m->friendlist[friend_id].status >= FRIEND_CONFIRMED)
            return FAERR_ALREADYSENT;

        uint32_t nospam;
        FUNC5(&nospam, address + crypto_box_PUBLICKEYBYTES, sizeof(nospam));

        if (m->friendlist[friend_id].friendrequest_nospam == nospam)
            return FAERR_ALREADYSENT;

        m->friendlist[friend_id].friendrequest_nospam = nospam;
        return FAERR_SETNEWNOSPAM;
    }

    int32_t ret = FUNC4(m, real_pk, FRIEND_ADDED);

    if (ret < 0) {
        return ret;
    }

    m->friendlist[ret].friendrequest_timeout = FRIENDREQUEST_TIMEOUT;
    FUNC5(m->friendlist[ret].info, data, length);
    m->friendlist[ret].info_size = length;
    FUNC5(&(m->friendlist[ret].friendrequest_nospam), address + crypto_box_PUBLICKEYBYTES, sizeof(uint32_t));

    return ret;
}