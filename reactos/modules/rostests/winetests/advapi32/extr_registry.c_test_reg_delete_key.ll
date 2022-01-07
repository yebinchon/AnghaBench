; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_delete_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_delete_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_main = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [92 x i8] c"We are probably running on NT4 or W2K as the main key is deleted, re-creating the main key\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@ERROR_BADKEY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"deleteme\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not create key, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"RegDeleteKeyA failed, got %d\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Key was not deleted, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reg_delete_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reg_delete_key() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @hkey_main, align 4
  %4 = call i64 @RegDeleteKeyA(i32 %3, i8* null)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @trace(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @setup_main_key()
  br label %28

11:                                               ; preds = %0
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @ERROR_BADKEY, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %15, %11
  %24 = phi i1 [ true, %15 ], [ true, %11 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %23, %8
  %29 = load i32, i32* @hkey_main, align 4
  %30 = call i64 @RegCreateKeyA(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @RegDeleteKeyA(i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @RegCloseKey(i32 %45)
  %47 = load i32, i32* @hkey_main, align 4
  %48 = call i64 @RegOpenKeyA(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @RegCloseKey(i32 %55)
  ret void
}

declare dso_local i64 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @setup_main_key(...) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
