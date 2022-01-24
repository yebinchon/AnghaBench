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
typedef  int uint8_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ signature_packet_t ;

/* Variables and functions */
 scalar_t__ BINARY_SIGNATURE ; 
 scalar_t__ SIGNATURE_PACKET ; 
 scalar_t__ TEXT_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (size_t) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int) ; 
 int FUNC5 (char*,size_t,int*,size_t) ; 
 int FUNC6 (int*,int) ; 
 size_t FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(signature_packet_t *s, const uint8_t *sig)
{
    size_t sig_size = FUNC7((char*)sig);
    uint8_t *unarmored_sig = FUNC1((sig_size * 3) / 4 + 1);
    FUNC0(sig[0] < 0x80); // ASCII
    int bytes = FUNC5((char*)sig, sig_size, unarmored_sig, sig_size);

    FUNC0(FUNC3(unarmored_sig[0]) == SIGNATURE_PACKET);

    int header_len = FUNC2(unarmored_sig[0]);
    FUNC0(header_len == 1 || header_len == 2 || header_len == 4);
    FUNC0(header_len < bytes);

    int len = FUNC6(&unarmored_sig[1], header_len);
    FUNC0(len + header_len + 1 == bytes);

    FUNC0(!FUNC4(s, &unarmored_sig[1+header_len], len));

    FUNC0(s->type == BINARY_SIGNATURE || s->type == TEXT_SIGNATURE);
}