; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/bootvid_font_generator/extr_bootvid_font_generator.c_DumpFont.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/bootvid_font_generator/extr_bootvid_font_generator.c_DumpFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEIGHT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"CreateCompatibleDC failed with error %lu!\0A\00", align 1
@LOGPIXELSY = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@NONANTIALIASED_QUALITY = common dso_local global i32 0, align 4
@FIXED_PITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CreateFont failed with error %lu!\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @DumpFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpFont(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = load i32, i32* @HEIGHT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %67

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @LOGPIXELSY, align 4
  %30 = call i32 @GetDeviceCaps(i32* %28, i32 %29)
  %31 = call i32 @MulDiv(i32 %27, i32 %30, i32 72)
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @FW_NORMAL, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32, i32* @ANSI_CHARSET, align 4
  %39 = load i32, i32* @OUT_DEFAULT_PRECIS, align 4
  %40 = load i32, i32* @CLIP_DEFAULT_PRECIS, align 4
  %41 = load i32, i32* @NONANTIALIASED_QUALITY, align 4
  %42 = load i32, i32* @FIXED_PITCH, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32* @CreateFontA(i32 %33, i32 0, i32 0, i32 0, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %26
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %67

51:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 256
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @PlotCharacter(i32* %56, i32* %57, i32 %58, i32 %59, i32 %60, i32* %18)
  %62 = call i32 @DumpCharacterFontData(i32* %18)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %52

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %47, %22
  %68 = load i32*, i32** %11, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @DeleteObject(i32* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @DeleteDC(i32* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @CreateCompatibleDC(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @MulDiv(i32, i32, i32) #2

declare dso_local i32 @GetDeviceCaps(i32*, i32) #2

declare dso_local i32* @CreateFontA(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PlotCharacter(i32*, i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @DumpCharacterFontData(i32*) #2

declare dso_local i32 @DeleteObject(i32*) #2

declare dso_local i32 @DeleteDC(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
