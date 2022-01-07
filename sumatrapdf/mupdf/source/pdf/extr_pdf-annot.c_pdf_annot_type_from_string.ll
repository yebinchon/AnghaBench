; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_type_from_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_type_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@PDF_ANNOT_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@PDF_ANNOT_LINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"FreeText\00", align 1
@PDF_ANNOT_FREE_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@PDF_ANNOT_LINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@PDF_ANNOT_SQUARE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@PDF_ANNOT_CIRCLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Polygon\00", align 1
@PDF_ANNOT_POLYGON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"PolyLine\00", align 1
@PDF_ANNOT_POLY_LINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Highlight\00", align 1
@PDF_ANNOT_HIGHLIGHT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@PDF_ANNOT_UNDERLINE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"Squiggly\00", align 1
@PDF_ANNOT_SQUIGGLY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"StrikeOut\00", align 1
@PDF_ANNOT_STRIKE_OUT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"Redact\00", align 1
@PDF_ANNOT_REDACT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"Stamp\00", align 1
@PDF_ANNOT_STAMP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"Caret\00", align 1
@PDF_ANNOT_CARET = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"Ink\00", align 1
@PDF_ANNOT_INK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"Popup\00", align 1
@PDF_ANNOT_POPUP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"FileAttachment\00", align 1
@PDF_ANNOT_FILE_ATTACHMENT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@PDF_ANNOT_SOUND = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"Movie\00", align 1
@PDF_ANNOT_MOVIE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"Widget\00", align 1
@PDF_ANNOT_WIDGET = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@PDF_ANNOT_SCREEN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"PrinterMark\00", align 1
@PDF_ANNOT_PRINTER_MARK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"TrapNet\00", align 1
@PDF_ANNOT_TRAP_NET = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"Watermark\00", align 1
@PDF_ANNOT_WATERMARK = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@PDF_ANNOT_3D = common dso_local global i32 0, align 4
@PDF_ANNOT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_annot_type_from_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @PDF_ANNOT_TEXT, align 4
  store i32 %10, i32* %3, align 4
  br label %163

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @PDF_ANNOT_LINK, align 4
  store i32 %16, i32* %3, align 4
  br label %163

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @PDF_ANNOT_FREE_TEXT, align 4
  store i32 %22, i32* %3, align 4
  br label %163

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @PDF_ANNOT_LINE, align 4
  store i32 %28, i32* %3, align 4
  br label %163

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @PDF_ANNOT_SQUARE, align 4
  store i32 %34, i32* %3, align 4
  br label %163

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @PDF_ANNOT_CIRCLE, align 4
  store i32 %40, i32* %3, align 4
  br label %163

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @PDF_ANNOT_POLYGON, align 4
  store i32 %46, i32* %3, align 4
  br label %163

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @PDF_ANNOT_POLY_LINE, align 4
  store i32 %52, i32* %3, align 4
  br label %163

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @PDF_ANNOT_HIGHLIGHT, align 4
  store i32 %58, i32* %3, align 4
  br label %163

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @PDF_ANNOT_UNDERLINE, align 4
  store i32 %64, i32* %3, align 4
  br label %163

65:                                               ; preds = %59
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @PDF_ANNOT_SQUIGGLY, align 4
  store i32 %70, i32* %3, align 4
  br label %163

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @PDF_ANNOT_STRIKE_OUT, align 4
  store i32 %76, i32* %3, align 4
  br label %163

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @PDF_ANNOT_REDACT, align 4
  store i32 %82, i32* %3, align 4
  br label %163

83:                                               ; preds = %77
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @PDF_ANNOT_STAMP, align 4
  store i32 %88, i32* %3, align 4
  br label %163

89:                                               ; preds = %83
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @PDF_ANNOT_CARET, align 4
  store i32 %94, i32* %3, align 4
  br label %163

95:                                               ; preds = %89
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @PDF_ANNOT_INK, align 4
  store i32 %100, i32* %3, align 4
  br label %163

101:                                              ; preds = %95
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @PDF_ANNOT_POPUP, align 4
  store i32 %106, i32* %3, align 4
  br label %163

107:                                              ; preds = %101
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @PDF_ANNOT_FILE_ATTACHMENT, align 4
  store i32 %112, i32* %3, align 4
  br label %163

113:                                              ; preds = %107
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @PDF_ANNOT_SOUND, align 4
  store i32 %118, i32* %3, align 4
  br label %163

119:                                              ; preds = %113
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @PDF_ANNOT_MOVIE, align 4
  store i32 %124, i32* %3, align 4
  br label %163

125:                                              ; preds = %119
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @PDF_ANNOT_WIDGET, align 4
  store i32 %130, i32* %3, align 4
  br label %163

131:                                              ; preds = %125
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @PDF_ANNOT_SCREEN, align 4
  store i32 %136, i32* %3, align 4
  br label %163

137:                                              ; preds = %131
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @PDF_ANNOT_PRINTER_MARK, align 4
  store i32 %142, i32* %3, align 4
  br label %163

143:                                              ; preds = %137
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @PDF_ANNOT_TRAP_NET, align 4
  store i32 %148, i32* %3, align 4
  br label %163

149:                                              ; preds = %143
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* @PDF_ANNOT_WATERMARK, align 4
  store i32 %154, i32* %3, align 4
  br label %163

155:                                              ; preds = %149
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* @PDF_ANNOT_3D, align 4
  store i32 %160, i32* %3, align 4
  br label %163

161:                                              ; preds = %155
  %162 = load i32, i32* @PDF_ANNOT_UNKNOWN, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
