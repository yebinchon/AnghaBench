; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_ParseSystemFonts.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_ParseSystemFonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @Android_ParseSystemFonts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Android_ParseSystemFonts(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @vlc_stream_NewURL(i32* %14, i8* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @xml_ReaderCreate(i32* %22, i32* %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @vlc_stream_Delete(i32* %28)
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %4, align 4
  br label %99

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %92, %31
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @xml_ReaderNextNode(i32* %33, i8** %11)
  store i32 %34, i32* %12, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @XML_READER_STARTELEM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @Android_Nougat_ParseFamily(i32* %48, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %93

53:                                               ; preds = %47
  br label %92

54:                                               ; preds = %44, %40, %36
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @XML_READER_STARTELEM, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @Android_Legacy_ParseFamily(i32* %66, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %93

71:                                               ; preds = %65
  br label %91

72:                                               ; preds = %62, %58, %54
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @XML_READER_STARTELEM, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @Android_ParseAlias(i32* %84, i32* %85)
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %93

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %80, %76, %72
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %53
  br label %32

93:                                               ; preds = %88, %70, %52, %32
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @xml_ReaderDelete(i32* %94)
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @vlc_stream_Delete(i32* %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %27, %19
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32* @vlc_stream_NewURL(i32*, i8*) #1

declare dso_local i32* @xml_ReaderCreate(i32*, i32*) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @Android_Nougat_ParseFamily(i32*, i32*) #1

declare dso_local i32 @Android_Legacy_ParseFamily(i32*, i32*) #1

declare dso_local i32 @Android_ParseAlias(i32*, i32*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
