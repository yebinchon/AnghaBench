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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {struct TYPE_4__* MaxPower; struct TYPE_4__* bmAttributes; struct TYPE_4__* iConfiguration; struct TYPE_4__* bConfigurationValue; struct TYPE_4__* bNumInterfaces; struct TYPE_4__* wTotalLength; struct TYPE_4__* bDescriptorType; struct TYPE_4__* bLength; } ;
typedef  TYPE_1__* PUSB_CONFIGURATION_DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 

VOID
FUNC1(PUSB_CONFIGURATION_DESCRIPTOR ConfigurationDescriptor)
{
    FUNC0("Dumping ConfigurationDescriptor %x\n", ConfigurationDescriptor);
    FUNC0("bLength %x\n", ConfigurationDescriptor->bLength);
    FUNC0("bDescriptorType %x\n", ConfigurationDescriptor->bDescriptorType);
    FUNC0("wTotalLength %x\n", ConfigurationDescriptor->wTotalLength);
    FUNC0("bNumInterfaces %x\n", ConfigurationDescriptor->bNumInterfaces);
    FUNC0("bConfigurationValue %x\n", ConfigurationDescriptor->bConfigurationValue);
    FUNC0("iConfiguration %x\n", ConfigurationDescriptor->iConfiguration);
    FUNC0("bmAttributes %x\n", ConfigurationDescriptor->bmAttributes);
    FUNC0("MaxPower %x\n", ConfigurationDescriptor->MaxPower);
}