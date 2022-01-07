; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_save_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_save_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SE_BACKUP_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SE_RESTORE_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to set SE_BACKUP_NAME privileges, skipping tests\0A\00", align 1
@hkey_main = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"saved_key\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reg_save_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reg_save_key() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @SE_BACKUP_NAME, align 4
  %3 = load i32, i32* @TRUE, align 4
  %4 = call i32 @set_privileges(i32 %2, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @SE_RESTORE_NAME, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32 @set_privileges(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6, %0
  %12 = call i32 @win_skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %25

13:                                               ; preds = %6
  %14 = load i32, i32* @hkey_main, align 4
  %15 = call i64 @RegSaveKeyA(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @SE_BACKUP_NAME, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @set_privileges(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @set_privileges(i32, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @RegSaveKeyA(i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
