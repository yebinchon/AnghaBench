; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_registry.h_DeleteRegistryKey.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_registry.h_DeleteRegistryKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SOFTWARE\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to delete registry key HKCU\\Software\\%s: %s\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Key is not empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @DeleteRegistryKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DeleteRegistryKey(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @KEY_READ, align 4
  %10 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @RegOpenKeyExA(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %11, i32** %6)
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @RegDeleteKeyA(i32* %18, i8* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @SetLastError(i64 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %38

36:                                               ; preds = %28
  %37 = call i8* (...) @WindowsErrorString()
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %35 ], [ %37, %36 ]
  %40 = call i32 @uprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %39)
  br label %41

41:                                               ; preds = %38, %24, %17
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @RegCloseKey(i32* %42)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i1 [ true, %41 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @RegOpenKeyExA(i32*, i8*, i32, i32, i32**) #1

declare dso_local i64 @RegDeleteKeyA(i32*, i8*) #1

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i32 @uprintf(i8*, i8*, i8*) #1

declare dso_local i8* @WindowsErrorString(...) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
