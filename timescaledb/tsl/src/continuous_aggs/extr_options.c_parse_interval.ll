; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_options.c_parse_interval.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_options.c_parse_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_INT16_MIN = common dso_local global i32 0, align 4
@PG_INT16_MAX = common dso_local global i32 0, align 4
@PG_INT32_MIN = common dso_local global i32 0, align 4
@PG_INT32_MAX = common dso_local global i32 0, align 4
@PG_INT64_MIN = common dso_local global i32 0, align 4
@PG_INT64_MAX = common dso_local global i32 0, align 4
@INTERVALOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unknown time type when parsing timescaledb.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @parse_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_interval(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %43 [
    i32 132, label %12
    i32 131, label %18
    i32 130, label %24
    i32 128, label %30
    i32 129, label %30
    i32 133, label %30
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @PG_INT16_MIN, align 4
  %15 = load i32, i32* @PG_INT16_MAX, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @parse_int_interval(i8* %13, i32 %14, i32 %15, i8* %16)
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @PG_INT32_MIN, align 4
  %21 = load i32, i32* @PG_INT32_MAX, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @parse_int_interval(i8* %19, i32 %20, i32 %21, i8* %22)
  store i32 %23, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @PG_INT64_MIN, align 4
  %27 = load i32, i32* @PG_INT64_MAX, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @parse_int_interval(i8* %25, i32 %26, i32 %27, i8* %28)
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %3, %3, %3
  %31 = load i32, i32* @INTERVALOID, align 4
  %32 = call i32 @getTypeInputInfo(i32 %31, i32* %9, i32* %10)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @OidIsValid(i32 %33)
  %35 = call i32 @Assert(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @OidInputFunctionCall(i32 %36, i8* %37, i32 %38, i32 -1)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @INTERVALOID, align 4
  %42 = call i32 @ts_interval_value_to_internal(i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %48

43:                                               ; preds = %3
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 (...) @pg_unreachable()
  br label %48

48:                                               ; preds = %12, %18, %24, %30, %43
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @parse_int_interval(i8*, i32, i32, i8*) #1

declare dso_local i32 @getTypeInputInfo(i32, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @OidInputFunctionCall(i32, i8*, i32, i32) #1

declare dso_local i32 @ts_interval_value_to_internal(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32 @pg_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
