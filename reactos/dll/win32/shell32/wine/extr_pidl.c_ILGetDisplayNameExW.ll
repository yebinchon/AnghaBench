; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_pidl.c_ILGetDisplayNameExW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_pidl.c_ILGetDisplayNameExW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p %p %p %x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SHGDN_FORPARSING = common dso_local global i32 0, align 4
@SHGDN_FORADDRESSBAR = common dso_local global i32 0, align 4
@SHGDN_NORMAL = common dso_local global i32 0, align 4
@SHGDN_INFOLDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown type parameter = %x\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@IID_IShellFolder = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%p %p %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ILGetDisplayNameExW(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* @NO_ERROR, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, i64, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19, i32 %20, i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %4
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %5, align 8
  br label %125

30:                                               ; preds = %25
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = call i32 @SHGetDesktopFolder(i64* %11)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %5, align 8
  br label %125

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %51 [
    i32 130, label %43
    i32 128, label %47
    i32 129, label %49
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @SHGDN_FORPARSING, align 4
  %45 = load i32, i32* @SHGDN_FORADDRESSBAR, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %15, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load i32, i32* @SHGDN_NORMAL, align 4
  store i32 %48, i32* %15, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load i32, i32* @SHGDN_INFOLDER, align 4
  store i32 %50, i32* %15, align 4
  br label %57

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @SHGDN_FORPARSING, align 4
  %55 = load i32, i32* @SHGDN_FORADDRESSBAR, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %51, %49, %47, %43
  %58 = load i64, i64* %7, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 130
  br i1 %64, label %65, label %83

65:                                               ; preds = %62, %57
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @IShellFolder_GetDisplayNameOf(i64 %66, i64 %67, i32 %68, i32* %14)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @SUCCEEDED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MAX_PATH, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @StrRetToStrNW(i32 %74, i32 %75, i32* %14, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @E_FAIL, align 4
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %65
  br label %111

83:                                               ; preds = %62
  %84 = load i64, i64* %7, align 8
  %85 = bitcast i64* %10 to i32*
  %86 = call i32 @SHBindToParent(i64 %84, i32* @IID_IShellFolder, i32* %85, i64* %13)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @SUCCEEDED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @IShellFolder_GetDisplayNameOf(i64 %91, i64 %92, i32 %93, i32* %14)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @SUCCEEDED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @MAX_PATH, align 4
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @StrRetToStrNW(i32 %99, i32 %100, i32* %14, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @E_FAIL, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %98
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @IShellFolder_Release(i64 %108)
  br label %110

110:                                              ; preds = %107, %83
  br label %111

111:                                              ; preds = %110, %82
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @debugstr_w(i32 %114)
  %116 = call i32 (i8*, i64, i64, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %113, i32 %115)
  %117 = load i64, i64* %6, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %111
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @IShellFolder_Release(i64 %120)
  br label %122

122:                                              ; preds = %119, %111
  %123 = load i32, i32* %12, align 4
  %124 = call i64 @SUCCEEDED(i32 %123)
  store i64 %124, i64* %5, align 8
  br label %125

125:                                              ; preds = %122, %38, %28
  %126 = load i64, i64* %5, align 8
  ret i64 %126
}

declare dso_local i32 @TRACE(i8*, i64, i64, i32, ...) #1

declare dso_local i32 @SHGetDesktopFolder(i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @IShellFolder_GetDisplayNameOf(i64, i64, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @StrRetToStrNW(i32, i32, i32*, i64) #1

declare dso_local i32 @SHBindToParent(i64, i32*, i32*, i64*) #1

declare dso_local i32 @IShellFolder_Release(i64) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
