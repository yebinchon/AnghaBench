; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_telemetry.c_tsl_telemetry_add_license_info.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_telemetry.c_tsl_telemetry_add_license_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LICENSE_EDITION_KEY = common dso_local global i32 0, align 4
@LICENSE_EDITION_COMMUNITY = common dso_local global i8* null, align 8
@timestamptz_out = common dso_local global i32 0, align 4
@LICENSE_EDITION_ENTERPRISE = common dso_local global i8* null, align 8
@LICENSE_KIND_KEY = common dso_local global i32 0, align 4
@LICENSE_ID_KEY = common dso_local global i32 0, align 4
@LICENSE_START_TIME_KEY = common dso_local global i32 0, align 4
@LICENSE_END_TIME_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsl_telemetry_add_license_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 (...) @license_enterprise_enabled()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @LICENSE_EDITION_KEY, align 4
  %10 = load i8*, i8** @LICENSE_EDITION_COMMUNITY, align 8
  %11 = call i32 @ts_jsonb_add_str(i32* %8, i32 %9, i8* %10)
  br label %43

12:                                               ; preds = %1
  %13 = load i32, i32* @timestamptz_out, align 4
  %14 = call i32 (...) @license_start_time()
  %15 = call i32 @TimestampTzGetDatum(i32 %14)
  %16 = call i32 @DirectFunctionCall1(i32 %13, i32 %15)
  %17 = call i8* @DatumGetCString(i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = load i32, i32* @timestamptz_out, align 4
  %19 = call i32 (...) @license_end_time()
  %20 = call i32 @TimestampTzGetDatum(i32 %19)
  %21 = call i32 @DirectFunctionCall1(i32 %18, i32 %20)
  %22 = call i8* @DatumGetCString(i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @LICENSE_EDITION_KEY, align 4
  %25 = load i8*, i8** @LICENSE_EDITION_ENTERPRISE, align 8
  %26 = call i32 @ts_jsonb_add_str(i32* %23, i32 %24, i8* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @LICENSE_KIND_KEY, align 4
  %29 = call i8* (...) @license_kind_str()
  %30 = call i32 @ts_jsonb_add_str(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @LICENSE_ID_KEY, align 4
  %33 = call i8* (...) @license_id_str()
  %34 = call i32 @ts_jsonb_add_str(i32* %31, i32 %32, i8* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @LICENSE_START_TIME_KEY, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @ts_jsonb_add_str(i32* %35, i32 %36, i8* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @LICENSE_END_TIME_KEY, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @ts_jsonb_add_str(i32* %39, i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @license_enterprise_enabled(...) #1

declare dso_local i32 @ts_jsonb_add_str(i32*, i32, i8*) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @TimestampTzGetDatum(i32) #1

declare dso_local i32 @license_start_time(...) #1

declare dso_local i32 @license_end_time(...) #1

declare dso_local i8* @license_kind_str(...) #1

declare dso_local i8* @license_id_str(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
