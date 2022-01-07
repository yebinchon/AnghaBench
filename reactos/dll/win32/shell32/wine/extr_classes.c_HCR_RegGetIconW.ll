; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_RegGetIconW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_RegGetIconW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i64, i32*)* @HCR_RegGetIconW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HCR_RegGetIconW(i32 %0, i32* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [7 x i32], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 @RegQueryValueExW(i32 %21, i32 %22, i32 0, i64* %12, i32 %24, i64* %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @REG_EXPAND_SZ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = call i32 @ExpandEnvironmentStringsW(i32* %32, i32* %20, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @lstrcpynW(i32* %35, i32* %20, i64 %36)
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 0
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 0
  %42 = call i64 @_countof(i32* %41)
  %43 = call i32 @ParseFieldW(i32* %39, i32 2, i32* %40, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 0
  %47 = call i32 @atoiW(i32* %46)
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %51

49:                                               ; preds = %38
  %50 = load i32*, i32** %11, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @ParseFieldW(i32* %52, i32 1, i32* %53, i64 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @PathUnquoteSpacesW(i32* %56)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

59:                                               ; preds = %5
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

61:                                               ; preds = %59, %51
  %62 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RegQueryValueExW(i32, i32, i32, i64*, i32, i64*) #2

declare dso_local i32 @ExpandEnvironmentStringsW(i32*, i32*, i32) #2

declare dso_local i32 @lstrcpynW(i32*, i32*, i64) #2

declare dso_local i32 @ParseFieldW(i32*, i32, i32*, i64) #2

declare dso_local i64 @_countof(i32*) #2

declare dso_local i32 @atoiW(i32*) #2

declare dso_local i32 @PathUnquoteSpacesW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
