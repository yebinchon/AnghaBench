; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_init_access_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_init_access_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@user_name = common dso_local global i64* null, align 8
@FALSE = common dso_local global i64 0, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"GetUserNameW is not available.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"User Name Retrieved\0A\00", align 1
@computer_name = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Computer Name Retrieved\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @init_access_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_access_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64*, i64** @user_name, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 0
  store i64 0, i64* %5, align 8
  %6 = load i64*, i64** @user_name, align 8
  %7 = call i32 @ARRAY_SIZE(i64* %6)
  store i32 %7, i32* %2, align 4
  %8 = load i64*, i64** @user_name, align 8
  %9 = call i64 @GetUserNameW(i64* %8, i32* %2)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @FALSE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = call i64 (...) @GetLastError()
  %15 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %1, align 8
  br label %31

20:                                               ; preds = %13, %0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ok(i64 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64*, i64** @computer_name, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** @computer_name, align 8
  %26 = call i32 @ARRAY_SIZE(i64* %25)
  store i32 %26, i32* %2, align 4
  %27 = load i64*, i64** @computer_name, align 8
  %28 = call i64 @GetComputerNameW(i64* %27, i32* %2)
  %29 = call i32 @ok(i64 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %1, align 8
  br label %31

31:                                               ; preds = %20, %17
  %32 = load i64, i64* %1, align 8
  ret i64 %32
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @GetUserNameW(i64*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i64, i8*) #1

declare dso_local i64 @GetComputerNameW(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
