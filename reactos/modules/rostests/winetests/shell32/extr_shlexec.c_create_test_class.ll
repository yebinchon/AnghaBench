; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_create_test_class.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_create_test_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create class %s (rc=%d)\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"URL Protocol\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"RegSetValueEx '%s' failed, expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"RegCreateKeyEx 'shell' failed, expected ERROR_SUCCESS, got %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @create_test_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_test_class(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %12 = load i32, i32* @KEY_SET_VALUE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @RegCreateKeyExA(i32 %9, i8* %10, i32 0, i32* null, i32 0, i32 %13, i32* null, i32* %6, i32* null)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ERROR_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i1 [ true, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32, i8*, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ERROR_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %3, align 8
  br label %64

33:                                               ; preds = %22
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @REG_SZ, align 4
  %39 = call i32 @RegSetValueExA(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %38, i32 ptrtoint ([1 x i8]* @.str.2 to i32), i32 1)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %33
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %50 = call i32 @RegCreateKeyExA(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %49, i32* null, i32* %7, i32* null)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ERROR_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i32, i8*, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @CloseHandle(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @CloseHandle(i32 %61)
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %47, %31
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i32 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
