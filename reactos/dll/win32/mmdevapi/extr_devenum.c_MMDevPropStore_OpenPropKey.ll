; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevPropStore_OpenPropKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevPropStore_OpenPropKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eRender = common dso_local global i64 0, align 8
@key_render = common dso_local global i32 0, align 4
@key_capture = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Opening key %s failed with %u\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@reg_properties = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*)* @MMDevPropStore_OpenPropKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMDevPropStore_OpenPropKey(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [39 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds [39 x i32], [39 x i32]* %8, i64 0, i64 0
  %13 = call i32 @StringFromGUID2(i32* %11, i32* %12, i32 39)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @eRender, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @key_render, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @key_capture, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds [39 x i32], [39 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* @KEY_READ, align 4
  %25 = load i32, i32* @KEY_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @RegOpenKeyExW(i32 %22, i32* %23, i32 0, i32 %28, i32* %10)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = getelementptr inbounds [39 x i32], [39 x i32]* %8, i64 0, i64 0
  %34 = call i32 @debugstr_w(i32* %33)
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35)
  %37 = load i32, i32* @E_FAIL, align 4
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %21
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** @reg_properties, align 8
  %41 = load i32, i32* @KEY_READ, align 4
  %42 = load i32, i32* @KEY_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @RegOpenKeyExW(i32 %39, i32* %40, i32 0, i32 %45, i32* %46)
  store i64 %47, i64* %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @RegCloseKey(i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load i32*, i32** @reg_properties, align 8
  %55 = call i32 @debugstr_w(i32* %54)
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %56)
  %58 = load i32, i32* @E_FAIL, align 4
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %38
  %60 = load i32, i32* @S_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %53, %32
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
