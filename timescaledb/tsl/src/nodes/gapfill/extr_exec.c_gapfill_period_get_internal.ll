; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_exec.c_gapfill_period_get_internal.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_exec.c_gapfill_period_get_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERVALOID = common dso_local global i32 0, align 4
@USECS_PER_DAY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unsupported datatype for time_bucket_gapfill: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gapfill_period_get_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gapfill_period_get_internal(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %50 [
    i32 133, label %9
    i32 129, label %20
    i32 128, label %20
    i32 132, label %29
    i32 131, label %36
    i32 130, label %43
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @INTERVALOID, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @DatumGetIntervalP(i32 %15)
  %17 = call i32 @interval_to_usec(i32 %16)
  %18 = load i32, i32* @USECS_PER_DAY, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3, %3
  %21 = load i32, i32* @INTERVALOID, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @DatumGetIntervalP(i32 %26)
  %28 = call i32 @interval_to_usec(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %59

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 132, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DatumGetInt16(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 131, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DatumGetInt32(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %59

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 130, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @DatumGetInt64(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %59

50:                                               ; preds = %3
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @format_type_be(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %51, i32 %56)
  %58 = call i32 (...) @pg_unreachable()
  br label %59

59:                                               ; preds = %9, %20, %29, %36, %43, %50
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @interval_to_usec(i32) #1

declare dso_local i32 @DatumGetIntervalP(i32) #1

declare dso_local i32 @DatumGetInt16(i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @DatumGetInt64(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @pg_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
