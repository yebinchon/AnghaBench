; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetFileFontByName.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetFileFontByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@FONT_DIR_NT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*)* @GetFileFontByName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFileFontByName(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %26 = load i32, i32* @FONT_DIR_NT, align 4
  %27 = load i32, i32* @KEY_READ, align 4
  %28 = call i64 @RegOpenKeyEx(i32 %25, i32 %26, i32 0, i32 %27, i32* %8)
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %90

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @FromWide(i32* %33)
  store i8* %34, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %82, %32
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  store i32 255, i32* %16, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %14, align 4
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %41 = ptrtoint i32* %40 to i32
  %42 = call i64 @RegEnumValue(i32 %38, i32 %39, i32* %24, i32* %15, i32* null, i32* null, i32 %41, i32* %16)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @RegCloseKey(i32 %49)
  %51 = load i64, i64* %17, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %90

53:                                               ; preds = %35
  %54 = call i8* @FromWide(i32* %24)
  store i8* %54, i8** %18, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 40)
  store i8* %56, i8** %19, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i8*, i8** %19, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %63, %59, %53
  store i32 0, i32* %20, align 4
  %67 = load i8*, i8** %18, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @ConcatenatedIndex(i8* %67, i8* %68)
  store i32 %69, i32* %20, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* %20, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %75 = call i8* @FromWide(i32* %74)
  %76 = load i8**, i8*** %6, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %18, align 8
  %78 = call i32 @free(i8* %77)
  br label %85

79:                                               ; preds = %66
  %80 = load i8*, i8** %18, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %35

85:                                               ; preds = %71
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @RegCloseKey(i32 %88)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %90

90:                                               ; preds = %85, %46, %31
  %91 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #2

declare dso_local i8* @FromWide(i32*) #2

declare dso_local i64 @RegEnumValue(i32, i32, i32*, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @ConcatenatedIndex(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
