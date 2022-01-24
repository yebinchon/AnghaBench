#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ start; } ;
struct TYPE_8__ {scalar_t__ temperature; void** gamma; void* brightness; } ;
struct TYPE_7__ {scalar_t__ temperature; void** gamma; void* brightness; } ;
struct TYPE_9__ {TYPE_5__ dusk; TYPE_5__ dawn; TYPE_2__ night; TYPE_1__ day; void* low; void* high; } ;
struct TYPE_10__ {int use_fade; TYPE_3__ scheme; int /*<<< orphan*/ * provider; int /*<<< orphan*/ * method; } ;
typedef  TYPE_4__ options_t ;
typedef  int /*<<< orphan*/  location_provider_t ;
typedef  int /*<<< orphan*/  gamma_method_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 void* FUNC1 (char const*) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void**,void**,int) ; 
 int FUNC9 (char const*,void**) ; 
 int FUNC10 (char const*,TYPE_5__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

__attribute__((used)) static int
FUNC12(
	const char *key, const char *value, options_t *options,
	const gamma_method_t *gamma_methods,
	const location_provider_t *location_providers)
{
	if (FUNC11(key, "temp-day") == 0) {
		if (options->scheme.day.temperature < 0) {
			options->scheme.day.temperature = FUNC2(value);
		}
	} else if (FUNC11(key, "temp-night") == 0) {
		if (options->scheme.night.temperature < 0) {
			options->scheme.night.temperature = FUNC2(value);
		}
	} else if (FUNC11(key, "transition") == 0 ||
		   FUNC11(key, "fade") == 0) {
		/* "fade" is preferred, "transition" is
		   deprecated as the setting key. */
		if (options->use_fade < 0) {
			options->use_fade = !!FUNC2(value);
		}
	} else if (FUNC11(key, "brightness") == 0) {
		if (FUNC7(options->scheme.day.brightness)) {
			options->scheme.day.brightness = FUNC1(value);
		}
		if (FUNC7(options->scheme.night.brightness)) {
			options->scheme.night.brightness = FUNC1(value);
		}
	} else if (FUNC11(key, "brightness-day") == 0) {
		if (FUNC7(options->scheme.day.brightness)) {
			options->scheme.day.brightness = FUNC1(value);
		}
	} else if (FUNC11(key, "brightness-night") == 0) {
		if (FUNC7(options->scheme.night.brightness)) {
			options->scheme.night.brightness = FUNC1(value);
		}
	} else if (FUNC11(key, "elevation-high") == 0) {
		options->scheme.high = FUNC1(value);
	} else if (FUNC11(key, "elevation-low") == 0) {
		options->scheme.low = FUNC1(value);
	} else if (FUNC11(key, "gamma") == 0) {
		if (FUNC7(options->scheme.day.gamma[0])) {
			int r = FUNC9(
				value, options->scheme.day.gamma);
			if (r < 0) {
				FUNC6(FUNC0("Malformed gamma setting.\n"), stderr);
				return -1;
			}
			FUNC8(options->scheme.night.gamma,
			       options->scheme.day.gamma,
			       sizeof(options->scheme.night.gamma));
		}
	} else if (FUNC11(key, "gamma-day") == 0) {
		if (FUNC7(options->scheme.day.gamma[0])) {
			int r = FUNC9(
				value, options->scheme.day.gamma);
			if (r < 0) {
				FUNC6(FUNC0("Malformed gamma setting.\n"), stderr);
				return -1;
			}
		}
	} else if (FUNC11(key, "gamma-night") == 0) {
		if (FUNC7(options->scheme.night.gamma[0])) {
			int r = FUNC9(
				value, options->scheme.night.gamma);
			if (r < 0) {
				FUNC6(FUNC0("Malformed gamma setting.\n"), stderr);
				return -1;
			}
		}
	} else if (FUNC11(key, "adjustment-method") == 0) {
		if (options->method == NULL) {
			options->method = FUNC3(
				gamma_methods, value);
			if (options->method == NULL) {
				FUNC5(stderr, FUNC0("Unknown adjustment"
						  " method `%s'.\n"), value);
				return -1;
			}
		}
	} else if (FUNC11(key, "location-provider") == 0) {
		if (options->provider == NULL) {
			options->provider = FUNC4(
				location_providers, value);
			if (options->provider == NULL) {
				FUNC5(stderr, FUNC0("Unknown location"
						  " provider `%s'.\n"), value);
				return -1;
			}
		}
	} else if (FUNC11(key, "dawn-time") == 0) {
		if (options->scheme.dawn.start < 0) {
			int r = FUNC10(
				value, &options->scheme.dawn);
			if (r < 0) {
				FUNC5(stderr, FUNC0("Malformed dawn-time"
						  " setting `%s'.\n"), value);
				return -1;
			}
		}
	} else if (FUNC11(key, "dusk-time") == 0) {
		if (options->scheme.dusk.start < 0) {
			int r = FUNC10(
				value, &options->scheme.dusk);
			if (r < 0) {
				FUNC5(stderr, FUNC0("Malformed dusk-time"
						  " setting `%s'.\n"), value);
				return -1;
			}
		}
	} else {
		FUNC5(stderr, FUNC0("Unknown configuration setting `%s'.\n"),
			key);
	}

	return 0;
}