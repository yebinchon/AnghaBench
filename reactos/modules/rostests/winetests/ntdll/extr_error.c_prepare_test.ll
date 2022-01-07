; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_error.c_prepare_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_error.c_prepare_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"RtlNtStatusToDosError\00", align 1
@pRtlNtStatusToDosError = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"RtlNtStatusToDosError is not available\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@strict = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prepare_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @GetProcAddress(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @pRtlNtStatusToDosError, align 8
  %9 = load i8*, i8** @pRtlNtStatusToDosError, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = call i32 @win_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %1, align 4
  br label %28

14:                                               ; preds = %0
  %15 = call i32 @winetest_get_mainargs(i8*** %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i1 [ false, %14 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* @strict, align 4
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %11
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @winetest_get_mainargs(i8***) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
