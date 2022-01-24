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
struct TYPE_4__ {struct TYPE_4__* bNumConfigurations; struct TYPE_4__* iSerialNumber; struct TYPE_4__* iProduct; struct TYPE_4__* iManufacturer; struct TYPE_4__* bcdDevice; struct TYPE_4__* idProduct; struct TYPE_4__* idVendor; struct TYPE_4__* bMaxPacketSize0; struct TYPE_4__* bDeviceProtocol; struct TYPE_4__* bDeviceSubClass; struct TYPE_4__* bDeviceClass; struct TYPE_4__* bcdUSB; struct TYPE_4__* bDescriptorType; struct TYPE_4__* bLength; } ;
typedef  TYPE_1__* PUSB_DEVICE_DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 

VOID
FUNC1(PUSB_DEVICE_DESCRIPTOR DeviceDescriptor)
{
    FUNC0("Dumping Device Descriptor %x\n", DeviceDescriptor);
    FUNC0("bLength %x\n", DeviceDescriptor->bLength);
    FUNC0("bDescriptorType %x\n", DeviceDescriptor->bDescriptorType);
    FUNC0("bcdUSB %x\n", DeviceDescriptor->bcdUSB);
    FUNC0("bDeviceClass %x\n", DeviceDescriptor->bDeviceClass);
    FUNC0("bDeviceSubClass %x\n", DeviceDescriptor->bDeviceSubClass);
    FUNC0("bDeviceProtocol %x\n", DeviceDescriptor->bDeviceProtocol);
    FUNC0("bMaxPacketSize0 %x\n", DeviceDescriptor->bMaxPacketSize0);
    FUNC0("idVendor %x\n", DeviceDescriptor->idVendor);
    FUNC0("idProduct %x\n", DeviceDescriptor->idProduct);
    FUNC0("bcdDevice %x\n", DeviceDescriptor->bcdDevice);
    FUNC0("iManufacturer %x\n", DeviceDescriptor->iManufacturer);
    FUNC0("iProduct %x\n", DeviceDescriptor->iProduct);
    FUNC0("iSerialNumber %x\n", DeviceDescriptor->iSerialNumber);
    FUNC0("bNumConfigurations %x\n", DeviceDescriptor->bNumConfigurations);
}