; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_tablespace_scan_by_name.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_tablespace_scan_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_tablespace_tablespace_name = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@INVALID_INDEXID = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @tablespace_scan_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tablespace_scan_by_name(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* null, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 %14
  %16 = load i32, i32* @Anum_tablespace_tablespace_name, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_NAMEEQ, align 4
  %19 = load i32, i32* @namein, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @CStringGetDatum(i8* %20)
  %22 = call i32 @DirectFunctionCall1(i32 %19, i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %11, %3
  %25 = load i32, i32* @INVALID_INDEXID, align 4
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @AccessShareLock, align 4
  %31 = call i32 @tablespace_scan_internal(i32 %25, i32* %26, i32 %27, i32 %28, i32* null, i8* %29, i32 0, i32 %30)
  ret i32 %31
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @tablespace_scan_internal(i32, i32*, i32, i32, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
