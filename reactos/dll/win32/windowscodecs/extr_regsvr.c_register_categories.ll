; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_categories.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_categories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_category = type { i32* }

@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@CLSID_WICImagingCategories = common dso_local global i32 0, align 4
@instance_keyname = common dso_local global i32* null, align 8
@clsid_valuename = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_category*)* @register_categories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_categories(%struct.regsvr_category* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_category*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [39 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regsvr_category* %0, %struct.regsvr_category** %3, align 8
  %10 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %11 = load i32*, i32** @clsid_keyname, align 8
  %12 = load i32, i32* @KEY_READ, align 4
  %13 = load i32, i32* @KEY_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @RegCreateKeyExW(i32 %10, i32* %11, i32 0, i32* null, i32 0, i32 %14, i32* null, i32* %6, i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @HRESULT_FROM_WIN32(i64 %20)
  store i32 %21, i32* %2, align 4
  br label %101

22:                                               ; preds = %1
  %23 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %24 = call i32 @StringFromGUID2(i32* @CLSID_WICImagingCategories, i32* %23, i32 39)
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %27 = load i32, i32* @KEY_READ, align 4
  %28 = load i32, i32* @KEY_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @RegCreateKeyExW(i32 %25, i32* %26, i32 0, i32* null, i32 0, i32 %29, i32* null, i32* %7, i32* null)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @RegCloseKey(i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @HRESULT_FROM_WIN32(i64 %37)
  store i32 %38, i32* %2, align 4
  br label %101

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** @instance_keyname, align 8
  %42 = load i32, i32* @KEY_READ, align 4
  %43 = load i32, i32* @KEY_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @RegCreateKeyExW(i32 %40, i32* %41, i32 0, i32* null, i32 0, i32 %44, i32* null, i32* %8, i32* null)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %81, %39
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.regsvr_category*, %struct.regsvr_category** %3, align 8
  %52 = getelementptr inbounds %struct.regsvr_category, %struct.regsvr_category* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i1 [ false, %46 ], [ %54, %50 ]
  br i1 %56, label %57, label %84

57:                                               ; preds = %55
  %58 = load %struct.regsvr_category*, %struct.regsvr_category** %3, align 8
  %59 = getelementptr inbounds %struct.regsvr_category, %struct.regsvr_category* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %62 = call i32 @StringFromGUID2(i32* %60, i32* %61, i32 39)
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %65 = load i32, i32* @KEY_READ, align 4
  %66 = load i32, i32* @KEY_WRITE, align 4
  %67 = or i32 %65, %66
  %68 = call i64 @RegCreateKeyExW(i32 %63, i32* %64, i32 0, i32* null, i32 0, i32 %67, i32* null, i32* %9, i32* null)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @clsid_valuename, align 4
  %75 = load i32, i32* @REG_SZ, align 4
  %76 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %77 = call i64 @RegSetValueExW(i32 %73, i32 %74, i32 0, i32 %75, i32* %76, i32 78)
  store i64 %77, i64* %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @RegCloseKey(i32 %78)
  br label %80

80:                                               ; preds = %72, %57
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.regsvr_category*, %struct.regsvr_category** %3, align 8
  %83 = getelementptr inbounds %struct.regsvr_category, %struct.regsvr_category* %82, i32 1
  store %struct.regsvr_category* %83, %struct.regsvr_category** %3, align 8
  br label %46

84:                                               ; preds = %55
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @RegCloseKey(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @RegCloseKey(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @RegCloseKey(i32 %89)
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @HRESULT_FROM_WIN32(i64 %95)
  br label %99

97:                                               ; preds = %84
  %98 = load i32, i32* @S_OK, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %96, %94 ], [ %98, %97 ]
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %34, %19
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegSetValueExW(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
