; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_create_test_association.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_create_test_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"shlexec%s\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"could not create association %s (rc=%d)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"RegSetValueEx '%s' failed, expected ERROR_SUCCESS, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_test_association to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_test_association(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @KEY_SET_VALUE, align 4
  %18 = call i64 @RegCreateKeyExA(i32 %15, i8* %16, i32 0, i32* null, i32 0, i32 %17, i32* null, i32* %4, i32* null)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %1
  %27 = phi i1 [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %12, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %53

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @REG_SZ, align 4
  %39 = ptrtoint i8* %12 to i32
  %40 = call i64 @strlen(i8* %12)
  %41 = add nsw i64 %40, 1
  %42 = call i64 @RegSetValueExA(i32 %37, i32* null, i32 0, i32 %38, i32 %39, i64 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %12, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @CloseHandle(i32 %49)
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @create_test_class(i8* %12, i32 %51)
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %36, %34
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i8*, i64) #2

declare dso_local i64 @RegSetValueExA(i32, i32*, i32, i32, i32, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @create_test_class(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
