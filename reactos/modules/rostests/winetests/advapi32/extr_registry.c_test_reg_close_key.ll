; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_close_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_close_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Software\\Wine\\Test\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %d\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"expected ERROR_INVALID_HANDLE or ERROR_SUCCESS, got %d\0A\00", align 1
@ERROR_BADKEY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\0A\00", align 1
@hkey_main = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"The main handle is most likely closed, so re-opening\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reg_close_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reg_close_key() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %3 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %4 = call i64 @RegOpenKeyA(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %2)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @RegCloseKey(i64 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @RegCloseKey(i64 %19)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %0
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %0
  %29 = phi i1 [ true, %0 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = call i64 @RegCloseKey(i64 0)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @ERROR_BADKEY, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi i1 [ true, %28 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* @hkey_main, align 8
  %47 = load i64, i64* %2, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = call i32 @trace(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %52 = call i64 @RegOpenKeyA(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* @hkey_main)
  br label %53

53:                                               ; preds = %49, %41
  ret void
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @RegCloseKey(i64) #1

declare dso_local i32 @trace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
