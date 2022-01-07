; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_COMCAT_UnRegisterClassCategories.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_COMCAT_UnRegisterClassCategories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_POINTER = common dso_local global i64 0, align 8
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i32*)* @COMCAT_UnRegisterClassCategories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COMCAT_UnRegisterClassCategories(i32* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [68 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = bitcast [68 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 68, i1 false)
  %14 = bitcast i8* %13 to <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>*
  %15 = getelementptr inbounds <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>* %14, i32 0, i32 0
  store i8 67, i8* %15, align 16
  %16 = getelementptr inbounds <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>* %14, i32 0, i32 1
  store i8 76, i8* %16, align 1
  %17 = getelementptr inbounds <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>* %14, i32 0, i32 2
  store i8 83, i8* %17, align 2
  %18 = getelementptr inbounds <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>* %14, i32 0, i32 3
  store i8 73, i8* %18, align 1
  %19 = getelementptr inbounds <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>* %14, i32 0, i32 4
  store i8 68, i8* %19, align 4
  %20 = getelementptr inbounds <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [62 x i8] }>* %14, i32 0, i32 5
  store i8 92, i8* %20, align 1
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* @E_POINTER, align 8
  store i64 %27, i64* %5, align 8
  br label %82

28:                                               ; preds = %23, %4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds [68 x i8], [68 x i8]* %10, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = load i32, i32* @CHARS_IN_GUID, align 4
  %33 = call i64 @StringFromGUID2(i32* %29, i8* %31, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @FAILED(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %5, align 8
  br label %82

39:                                               ; preds = %28
  %40 = getelementptr inbounds [68 x i8], [68 x i8]* %10, i64 0, i64 44
  store i8 92, i8* %40, align 4
  %41 = getelementptr inbounds [68 x i8], [68 x i8]* %10, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 45
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @lstrcpyW(i8* %42, i32 %43)
  %45 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %46 = getelementptr inbounds [68 x i8], [68 x i8]* %10, i64 0, i64 0
  %47 = load i32, i32* @KEY_READ, align 4
  %48 = load i32, i32* @KEY_WRITE, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @open_classes_key(i32 %45, i8* %46, i32 %49, i32* %12)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i64, i64* @E_FAIL, align 8
  store i64 %55, i64* %5, align 8
  br label %82

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds [68 x i8], [68 x i8]* %10, i64 0, i64 0
  %63 = load i32, i32* @CHARS_IN_GUID, align 4
  %64 = call i64 @StringFromGUID2(i32* %61, i8* %62, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @FAILED(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  %71 = getelementptr inbounds [68 x i8], [68 x i8]* %10, i64 0, i64 0
  %72 = call i32 @RegDeleteKeyW(i32 %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %68
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  br label %57

78:                                               ; preds = %57
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @RegCloseKey(i32 %79)
  %81 = load i64, i64* @S_OK, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %78, %54, %37, %26
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @StringFromGUID2(i32*, i8*, i32) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i32 @lstrcpyW(i8*, i32) #2

declare dso_local i64 @open_classes_key(i32, i8*, i32, i32*) #2

declare dso_local i32 @RegDeleteKeyW(i32, i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
