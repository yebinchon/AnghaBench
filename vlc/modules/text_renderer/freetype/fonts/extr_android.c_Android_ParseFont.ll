; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_ParseFont.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_ParseFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@XML_READER_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Android_ParseFont: no file name\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ANDROID_FONT_PATH = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @Android_ParseFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Android_ParseFont(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @xml_ReaderNextAttr(i32* %16, i8** %10)
  store i8* %17, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %13, align 4
  br label %53

34:                                               ; preds = %26, %23, %19
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51, %41, %38, %34
  br label %53

53:                                               ; preds = %52, %31
  br label %15

54:                                               ; preds = %15
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 700
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @xml_ReaderNextNode(i32* %59, i8** %10)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @XML_READER_TEXT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67, %64, %58
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @msg_Warn(i32* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %4, align 4
  br label %98

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 400
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 700
  br i1 %80, label %81, label %96

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @ANDROID_FONT_PATH, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @asprintf(i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %82, i8* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %14, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @NewFont(i8* %87, i32 0, i32 %88, i32 %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86, %81
  %94 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %94, i32* %4, align 4
  br label %98

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %93, %71
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @NewFont(i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
