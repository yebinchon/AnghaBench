; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_GetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_GetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i8*, i8*, i32, i32 }

@MSSTYLES_GetFont.szBold = internal constant [5 x i8] c"bold\00", align 1
@MSSTYLES_GetFont.szItalic = internal constant [7 x i8] c"italic\00", align 1
@MSSTYLES_GetFont.szUnderline = internal constant [10 x i8] c"underline\00", align 1
@MSSTYLES_GetFont.szStrikeOut = internal constant [10 x i8] c"strikeout\00", align 1
@LF_FACESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Property is there, but failed to get face name\0A\00", align 1
@E_PROP_ID_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Property is there, but failed to get point size\0A\00", align 1
@LOGPIXELSY = common dso_local global i32 0, align 4
@FW_REGULAR = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@FW_BOLD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, %struct.TYPE_3__*)* @MSSTYLES_GetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSSTYLES_GetFont(i32 %0, i32 %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @LF_FACESIZE, align 4
  %19 = call i64 @MSSTYLES_GetNextToken(i32 %13, i32 %14, i32* %6, i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @E_PROP_ID_UNSUPPORTED, align 4
  store i32 %25, i32* %5, align 4
  br label %105

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MSSTYLES_GetNextInteger(i32 %27, i32 %28, i32* %6, i32* %10)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @E_PROP_ID_UNSUPPORTED, align 4
  store i32 %35, i32* %5, align 4
  br label %105

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = call i32 @GetDC(i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @LOGPIXELSY, align 4
  %44 = call i32 @GetDeviceCaps(i32 %42, i32 %43)
  %45 = call i32 @MulDiv(i32 %41, i32 %44, i32 72)
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ReleaseDC(i32 0, i32 %47)
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @FW_REGULAR, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @DEFAULT_CHARSET, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %100, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %63 = call i64 @MSSTYLES_GetNextToken(i32 %60, i32 %61, i32* %6, i8* %62, i32 32)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %59
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %67 = call i32 @lstrcmpiW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @MSSTYLES_GetFont.szBold, i64 0, i64 0), i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @FW_BOLD, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  br label %100

73:                                               ; preds = %65
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %75 = call i32 @lstrcmpiW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @MSSTYLES_GetFont.szItalic, i64 0, i64 0), i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  br label %99

81:                                               ; preds = %73
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %83 = call i32 @lstrcmpiW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @MSSTYLES_GetFont.szUnderline, i64 0, i64 0), i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** @TRUE, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  br label %98

89:                                               ; preds = %81
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %91 = call i32 @lstrcmpiW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @MSSTYLES_GetFont.szStrikeOut, i64 0, i64 0), i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** @TRUE, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %77
  br label %100

100:                                              ; preds = %99, %69
  br label %59

101:                                              ; preds = %59
  %102 = load i32, i32* %6, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @S_OK, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %31, %21
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @MSSTYLES_GetNextToken(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @MSSTYLES_GetNextInteger(i32, i32, i32*, i32*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @lstrcmpiW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
