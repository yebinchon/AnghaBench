; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_extract_icon.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_extract_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IExtractIconW = common dso_local global i32 0, align 4
@_MAX_PATH = common dso_local global i32 0, align 4
@GIL_FORSHELL = common dso_local global i32 0, align 4
@GIL_NOTFILENAME = common dso_local global i32 0, align 4
@GIL_DONTCACHE = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @extract_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_icon(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32** %6 to i32*
  %17 = call i32 @IShellFolder_GetUIObjectOf(i32* %15, i32 0, i32 1, i32* %5, i32* @IID_IExtractIconW, i32 0, i32* %16)
  %18 = call i64 @SUCCEEDED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %2
  %21 = load i32, i32* @_MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @GIL_FORSHELL, align 4
  %27 = load i32, i32* @_MAX_PATH, align 4
  %28 = call i32 @IExtractIconW_GetIconLocation(i32* %25, i32 %26, i32* %24, i32 %27, i32* %11, i32* %9)
  %29 = call i64 @SUCCEEDED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @GIL_NOTFILENAME, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @ExtractIconExW(i32* %24, i32 %41, i32 0, i32* %10, i32 1)
  %43 = trunc i64 %42 to i32
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @GIL_DONTCACHE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %40
  br label %65

51:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @SM_CXSMICON, align 4
  %55 = call i32 @GetSystemMetrics(i32 %54)
  %56 = call i32 @MAKELONG(i32 0, i32 %55)
  %57 = call i32 @IExtractIconW_Extract(i32* %52, i32* %24, i32 %53, i32* %12, i32* %10, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i64 @SUCCEEDED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @DestroyIcon(i32 %62)
  br label %64

64:                                               ; preds = %61, %51
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %68

67:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %65
  %69 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %14, align 4
  switch i32 %70, label %75 [
    i32 0, label %71
    i32 1, label %73
  ]

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %2
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %3, align 4
  ret i32 %74

75:                                               ; preds = %68
  unreachable
}

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IShellFolder_GetUIObjectOf(i32*, i32, i32, i32*, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IExtractIconW_GetIconLocation(i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @ExtractIconExW(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @IExtractIconW_Extract(i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @DestroyIcon(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
