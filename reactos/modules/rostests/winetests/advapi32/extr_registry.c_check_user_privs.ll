; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_check_user_privs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_check_user_privs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"expected success or access denied, got %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"RegOpenKeyExA succeeded but returned NULL hkey\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"RegOpenKeyExA failed but returned hkey %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@limited_user = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"running as limited user\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_user_privs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_user_privs() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %3 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %4 = load i32, i32* @KEY_READ, align 4
  %5 = load i32, i32* @KEY_WRITE, align 4
  %6 = or i32 %4, %5
  %7 = call i64 @RegOpenKeyExA(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %6, i32** %2)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %11, %0
  %16 = phi i1 [ true, %0 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @RegCloseKey(i32* %28)
  br label %38

30:                                               ; preds = %15
  %31 = load i32*, i32** %2, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32* %34)
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* @limited_user, align 4
  %37 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %30, %23
  ret void
}

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @trace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
