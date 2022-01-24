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
struct window_client_modedata {scalar_t__ item_size; struct window_client_itemdata** item_list; } ;
struct window_client_itemdata {int dummy; } ;

/* Variables and functions */
 struct window_client_itemdata* FUNC0 (int,int) ; 
 struct window_client_itemdata** FUNC1 (struct window_client_itemdata**,scalar_t__,int) ; 

__attribute__((used)) static struct window_client_itemdata *
FUNC2(struct window_client_modedata *data)
{
	struct window_client_itemdata	*item;

	data->item_list = FUNC1(data->item_list, data->item_size + 1,
	    sizeof *data->item_list);
	item = data->item_list[data->item_size++] = FUNC0(1, sizeof *item);
	return (item);
}