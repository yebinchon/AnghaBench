; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_COMCAT_RegisterClassCategories.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_COMCAT_RegisterClassCategories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHARS_IN_GUID = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64, i32*)* @COMCAT_RegisterClassCategories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COMCAT_RegisterClassCategories(i32* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @CHARS_IN_GUID, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* @E_POINTER, align 8
  store i64 %28, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %112

29:                                               ; preds = %24, %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @CHARS_IN_GUID, align 4
  %32 = call i64 @StringFromGUID2(i32* %30, i32* %21, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %112

38:                                               ; preds = %29
  %39 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %40 = load i32*, i32** @clsid_keyname, align 8
  %41 = load i32, i32* @KEY_READ, align 4
  %42 = load i32, i32* @KEY_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @create_classes_key(i32 %39, i32* %40, i32 %43, i32* %13)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i64, i64* @E_FAIL, align 8
  store i64 %49, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %112

50:                                               ; preds = %38
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @KEY_READ, align 4
  %53 = load i32, i32* @KEY_WRITE, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @create_classes_key(i32 %51, i32* %21, i32 %54, i32* %14)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %50
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @KEY_READ, align 4
  %63 = load i32, i32* @KEY_WRITE, align 4
  %64 = or i32 %62, %63
  %65 = call i64 @create_classes_key(i32 %60, i32* %61, i32 %64, i32* %15)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %94, %69
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @CHARS_IN_GUID, align 4
  %76 = call i64 @StringFromGUID2(i32* %74, i32* %21, i32 %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i64 @FAILED(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %94

81:                                               ; preds = %73
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @KEY_READ, align 4
  %84 = load i32, i32* @KEY_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @create_classes_key(i32 %82, i32* %21, i32 %85, i32* %17)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @RegCloseKey(i32 %91)
  br label %93

93:                                               ; preds = %90, %81
  br label %94

94:                                               ; preds = %93, %80
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %8, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %9, align 8
  br label %70

99:                                               ; preds = %70
  %100 = load i64, i64* @S_OK, align 8
  store i64 %100, i64* %12, align 8
  br label %103

101:                                              ; preds = %59
  %102 = load i64, i64* @E_FAIL, align 8
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @RegCloseKey(i32 %104)
  br label %108

106:                                              ; preds = %50
  %107 = load i64, i64* @E_FAIL, align 8
  store i64 %107, i64* %12, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @RegCloseKey(i32 %109)
  %111 = load i64, i64* %12, align 8
  store i64 %111, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %112

112:                                              ; preds = %108, %48, %36, %27
  %113 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @StringFromGUID2(i32*, i32*, i32) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @create_classes_key(i32, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
