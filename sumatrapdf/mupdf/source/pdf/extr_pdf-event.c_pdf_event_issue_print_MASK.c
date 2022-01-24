#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  event_cb_data; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ pdf_document ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ pdf_doc_event ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  PDF_DOCUMENT_EVENT_PRINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC1(fz_context *ctx, pdf_document *doc)
{
	pdf_doc_event e;

	e.type = PDF_DOCUMENT_EVENT_PRINT;

	if (doc->event_cb)
		doc->event_cb(ctx, doc, &e, doc->event_cb_data);
}