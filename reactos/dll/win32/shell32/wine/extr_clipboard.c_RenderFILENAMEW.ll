; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_clipboard.c_RenderFILENAMEW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_clipboard.c_RenderFILENAMEW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%u)\0A\00", align 1
@GHND = common dso_local global i32 0, align 4
@GMEM_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenderFILENAMEW(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ILCombine(i32 %24, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @SHGetPathFromIDListW(i32 %33, i32* %19)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @SHFree(i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %64

40:                                               ; preds = %32
  %41 = call i32 @strlenW(i32* %19)
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @GHND, align 4
  %47 = load i32, i32* @GMEM_SHARE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @GlobalAlloc(i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %64

55:                                               ; preds = %40
  %56 = load i32, i32* %13, align 4
  %57 = call i32* @GlobalLock(i32 %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @memcpy(i32* %58, i32* %19, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @GlobalUnlock(i32 %61)
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %64

64:                                               ; preds = %55, %53, %39, %31
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, i32*, i32) #2

declare dso_local i32 @ILCombine(i32, i32) #2

declare dso_local i32 @SHGetPathFromIDListW(i32, i32*) #2

declare dso_local i32 @SHFree(i32) #2

declare dso_local i32 @strlenW(i32*) #2

declare dso_local i32 @GlobalAlloc(i32, i32) #2

declare dso_local i32* @GlobalLock(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @GlobalUnlock(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
