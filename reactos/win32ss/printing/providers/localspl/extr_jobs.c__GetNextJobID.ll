; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_jobs.c__GetNextJobID.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_jobs.c__GetNextJobID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_dwLastJobID = common dso_local global i64 0, align 8
@GlobalJobList = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Job ID %lu isn't valid!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @_GetNextJobID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_GetNextJobID(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64, i64* @_dwLastJobID, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @_dwLastJobID, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = call i64 @LookupElementSkiplist(i32* @GlobalJobList, i64* @_dwLastJobID, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i64, i64* @_dwLastJobID, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @_dwLastJobID, align 8
  br label %6

12:                                               ; preds = %6
  %13 = load i64, i64* @_dwLastJobID, align 8
  %14 = call i32 @IS_VALID_JOB_ID(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @_dwLastJobID, align 8
  %18 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load i64, i64* @_dwLastJobID, align 8
  %22 = load i64*, i64** %3, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @LookupElementSkiplist(i32*, i64*, i32*) #1

declare dso_local i32 @IS_VALID_JOB_ID(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
