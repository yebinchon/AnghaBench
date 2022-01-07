; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_unregister_categories.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_unregister_categories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_category = type { i32* }

@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@CLSID_WICImagingCategories = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@instance_keyname = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_category*)* @unregister_categories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_categories(%struct.regsvr_category* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_category*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [39 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regsvr_category* %0, %struct.regsvr_category** %3, align 8
  %9 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %10 = load i32*, i32** @clsid_keyname, align 8
  %11 = load i32, i32* @KEY_READ, align 4
  %12 = load i32, i32* @KEY_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @RegOpenKeyExW(i32 %9, i32* %10, i32 0, i32 %13, i32* %6)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @HRESULT_FROM_WIN32(i64 %19)
  store i32 %20, i32* %2, align 4
  br label %96

21:                                               ; preds = %1
  %22 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %23 = call i32 @StringFromGUID2(i32* @CLSID_WICImagingCategories, i32* %22, i32 39)
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %26 = load i32, i32* @KEY_READ, align 4
  %27 = load i32, i32* @KEY_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @RegOpenKeyExW(i32 %24, i32* %25, i32 0, i32 %28, i32* %7)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @RegCloseKey(i32 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @HRESULT_FROM_WIN32(i64 %42)
  store i32 %43, i32* %2, align 4
  br label %96

44:                                               ; preds = %21
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** @instance_keyname, align 8
  %47 = load i32, i32* @KEY_READ, align 4
  %48 = load i32, i32* @KEY_WRITE, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @RegOpenKeyExW(i32 %45, i32* %46, i32 0, i32 %49, i32* %8)
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %71, %44
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.regsvr_category*, %struct.regsvr_category** %3, align 8
  %57 = getelementptr inbounds %struct.regsvr_category, %struct.regsvr_category* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %62, label %74

62:                                               ; preds = %60
  %63 = load %struct.regsvr_category*, %struct.regsvr_category** %3, align 8
  %64 = getelementptr inbounds %struct.regsvr_category, %struct.regsvr_category* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %67 = call i32 @StringFromGUID2(i32* %65, i32* %66, i32 39)
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %70 = call i64 @RegDeleteTreeW(i32 %68, i32* %69)
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %62
  %72 = load %struct.regsvr_category*, %struct.regsvr_category** %3, align 8
  %73 = getelementptr inbounds %struct.regsvr_category, %struct.regsvr_category* %72, i32 1
  store %struct.regsvr_category* %73, %struct.regsvr_category** %3, align 8
  br label %51

74:                                               ; preds = %60
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @RegCloseKey(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @RegCloseKey(i32 %77)
  %79 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %80 = call i32 @StringFromGUID2(i32* @CLSID_WICImagingCategories, i32* %79, i32 39)
  %81 = load i32, i32* %6, align 4
  %82 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %83 = call i64 @RegDeleteTreeW(i32 %81, i32* %82)
  store i64 %83, i64* %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @RegCloseKey(i32 %84)
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @HRESULT_FROM_WIN32(i64 %90)
  br label %94

92:                                               ; preds = %74
  %93 = load i32, i32* @S_OK, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %39, %18
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegDeleteTreeW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
