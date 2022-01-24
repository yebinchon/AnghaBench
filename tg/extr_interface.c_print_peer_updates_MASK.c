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
struct in_ev {int dummy; } ;

/* Variables and functions */
 int TGL_UPDATE_ACCESS_HASH ; 
 int TGL_UPDATE_ADMIN ; 
 int TGL_UPDATE_BLOCKED ; 
 int TGL_UPDATE_CONTACT ; 
 int TGL_UPDATE_FLAGS ; 
 int TGL_UPDATE_MEMBERS ; 
 int TGL_UPDATE_NAME ; 
 int TGL_UPDATE_PHONE ; 
 int TGL_UPDATE_PHOTO ; 
 int TGL_UPDATE_REAL_NAME ; 
 int TGL_UPDATE_REQUESTED ; 
 int TGL_UPDATE_TITLE ; 
 int TGL_UPDATE_USERNAME ; 
 int TGL_UPDATE_WORKING ; 
 int /*<<< orphan*/  FUNC0 (struct in_ev*,char*) ; 

void FUNC1 (struct in_ev *ev, int flags) {
  if (flags & TGL_UPDATE_PHONE) {
    FUNC0 (ev, " phone");
  }
  if (flags & TGL_UPDATE_CONTACT) {
    FUNC0 (ev, " contact");
  }
  if (flags & TGL_UPDATE_PHOTO) {
    FUNC0 (ev, " photo");
  }
  if (flags & TGL_UPDATE_BLOCKED) {
    FUNC0 (ev, " blocked");
  }
  if (flags & TGL_UPDATE_REAL_NAME) {
    FUNC0 (ev, " name");
  }
  if (flags & TGL_UPDATE_NAME) {
    FUNC0 (ev, " contact_name");
  }
  if (flags & TGL_UPDATE_REQUESTED) {
    FUNC0 (ev, " status");
  }
  if (flags & TGL_UPDATE_WORKING) {
    FUNC0 (ev, " status");
  }
  if (flags & TGL_UPDATE_FLAGS) {
    FUNC0 (ev, " flags");
  }
  if (flags & TGL_UPDATE_TITLE) {
    FUNC0 (ev, " title");
  }
  if (flags & TGL_UPDATE_ADMIN) {
    FUNC0 (ev, " admin");
  }
  if (flags & TGL_UPDATE_MEMBERS) {
    FUNC0 (ev, " members");
  }
  if (flags & TGL_UPDATE_ACCESS_HASH) {
    FUNC0 (ev, " access_hash");
  }
  if (flags & TGL_UPDATE_USERNAME) {
    FUNC0 (ev, " username");
  }
}