; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_load_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_load_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SE_RESTORE_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SE_BACKUP_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Failed to set SE_RESTORE_NAME privileges, skipping tests\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"saved_key\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reg_load_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reg_load_key() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SE_RESTORE_NAME, align 4
  %4 = load i32, i32* @TRUE, align 4
  %5 = call i32 @set_privileges(i32 %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @SE_BACKUP_NAME, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @set_privileges(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %0
  %13 = call i32 @win_skip(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %36

14:                                               ; preds = %7
  %15 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %16 = call i64 @RegLoadKeyA(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @SE_RESTORE_NAME, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @set_privileges(i32 %23, i32 %24)
  %26 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %27 = call i64 @RegOpenKeyA(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @RegCloseKey(i32 %34)
  br label %36

36:                                               ; preds = %14, %12
  ret void
}

declare dso_local i32 @set_privileges(i32, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @RegLoadKeyA(i32, i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
