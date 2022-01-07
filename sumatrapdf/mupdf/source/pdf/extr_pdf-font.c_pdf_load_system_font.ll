; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_load_system_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_load_system_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@PDF_FD_FIXED_PITCH = common dso_local global i32 0, align 4
@PDF_FD_SERIF = common dso_local global i32 0, align 4
@PDF_FD_ITALIC = common dso_local global i32 0, align 4
@PDF_FD_FORCE_BOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Adobe-CNS1\00", align 1
@FZ_ADOBE_CNS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Adobe-GB1\00", align 1
@FZ_ADOBE_GB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Adobe-Japan1\00", align 1
@FZ_ADOBE_JAPAN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Adobe-Korea1\00", align 1
@FZ_ADOBE_KOREA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Adobe-Identity\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"unknown cid collection: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8*, i8*)* @pdf_load_system_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_load_system_font(i32* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strstr(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strstr(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strstr(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PDF_FD_FIXED_PITCH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PDF_FD_SERIF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PDF_FD_ITALIC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PDF_FD_FORCE_BOLD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %127

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @FZ_ADOBE_CNS, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @pdf_load_substitute_cjk_font(i32* %67, %struct.TYPE_5__* %68, i8* %69, i32 %70, i32 %71)
  br label %126

73:                                               ; preds = %62
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @FZ_ADOBE_GB, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @pdf_load_substitute_cjk_font(i32* %78, %struct.TYPE_5__* %79, i8* %80, i32 %81, i32 %82)
  br label %125

84:                                               ; preds = %73
  %85 = load i8*, i8** %8, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @FZ_ADOBE_JAPAN, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @pdf_load_substitute_cjk_font(i32* %89, %struct.TYPE_5__* %90, i8* %91, i32 %92, i32 %93)
  br label %124

95:                                               ; preds = %84
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* @FZ_ADOBE_KOREA, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @pdf_load_substitute_cjk_font(i32* %100, %struct.TYPE_5__* %101, i8* %102, i32 %103, i32 %104)
  br label %123

106:                                              ; preds = %95
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @fz_warn(i32* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @pdf_load_substitute_font(i32* %115, %struct.TYPE_5__* %116, i8* %117, i32 %118, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %114, %99
  br label %124

124:                                              ; preds = %123, %88
  br label %125

125:                                              ; preds = %124, %77
  br label %126

126:                                              ; preds = %125, %66
  br label %136

127:                                              ; preds = %59
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @pdf_load_substitute_font(i32* %128, %struct.TYPE_5__* %129, i8* %130, i32 %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %127, %126
  ret void
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pdf_load_substitute_cjk_font(i32*, %struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i8*) #1

declare dso_local i32 @pdf_load_substitute_font(i32*, %struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
