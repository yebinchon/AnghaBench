; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_license.c_license_print_expiration_warning_if_needed.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_license.c_license_print_expiration_warning_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@printed_license_expiration_warning = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Timescale License expired\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"Your license expired on %s. Renew your license to continue using enterprise features.\00", align 1
@timestamptz_out = common dso_local global i32 0, align 4
@current_license = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@__const.license_print_expiration_warning_if_needed.week = private unnamed_addr constant %struct.TYPE_4__ { i32 7 }, align 4
@timestamptz_mi_interval = common dso_local global i32 0, align 4
@ERRCODE_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"your Timescale Enterprise License expires on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @license_print_expiration_warning_if_needed() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @printed_license_expiration_warning, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %45

6:                                                ; preds = %0
  store i32 1, i32* @printed_license_expiration_warning, align 4
  %7 = call i64 (...) @license_is_expired()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* @WARNING, align 4
  %11 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @timestamptz_out, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_license, i32 0, i32 0), align 4
  %16 = call i32 @TimestampTzGetDatum(i32 %15)
  %17 = call i32 @DirectFunctionCall1(i32 %14, i32 %16)
  %18 = call i32 @DatumGetCString(i32 %17)
  %19 = call i32 @errhint(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 @ereport(i32 %10, i32 %19)
  br label %45

21:                                               ; preds = %6
  %22 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_4__* @__const.license_print_expiration_warning_if_needed.week to i8*), i64 4, i1 false)
  %23 = load i32, i32* @timestamptz_mi_interval, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_license, i32 0, i32 0), align 4
  %25 = call i32 @TimestampTzGetDatum(i32 %24)
  %26 = call i32 @IntervalPGetDatum(%struct.TYPE_4__* %1)
  %27 = call i32 @DirectFunctionCall2(i32 %23, i32 %25, i32 %26)
  %28 = call i32 @DatumGetTimestampTz(i32 %27)
  store i32 %28, i32* %2, align 4
  %29 = call i32 (...) @GetCurrentTransactionStartTimestamp()
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @timestamp_cmp_internal(i32 %29, i32 %30)
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load i32, i32* @WARNING, align 4
  %35 = load i32, i32* @ERRCODE_WARNING, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i32, i32* @timestamptz_out, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_license, i32 0, i32 0), align 4
  %39 = call i32 @TimestampTzGetDatum(i32 %38)
  %40 = call i32 @DirectFunctionCall1(i32 %37, i32 %39)
  %41 = call i32 @DatumGetCString(i32 %40)
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = call i32 @ereport(i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %33, %21
  br label %45

45:                                               ; preds = %5, %44, %9
  ret void
}

declare dso_local i64 @license_is_expired(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @TimestampTzGetDatum(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DatumGetTimestampTz(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @IntervalPGetDatum(%struct.TYPE_4__*) #1

declare dso_local i64 @timestamp_cmp_internal(i32, i32) #1

declare dso_local i32 @GetCurrentTransactionStartTimestamp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
