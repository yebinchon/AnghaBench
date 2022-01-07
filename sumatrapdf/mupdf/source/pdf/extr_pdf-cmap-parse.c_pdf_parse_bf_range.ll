; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_bf_range.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap-parse.c_pdf_parse_bf_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }

@PDF_TOK_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"endbfrange\00", align 1
@PDF_TOK_STRING = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"expected string or endbfrange\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"expected string\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"bf_range limits out of range in cmap %s\00", align 1
@PDF_TOK_OPEN_ARRAY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"expected string or array or endbfrange\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32*, %struct.TYPE_10__*)* @pdf_parse_bf_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_parse_bf_range(i32* %0, %struct.TYPE_11__* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  br label %16

16:                                               ; preds = %4, %188
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = call i64 @pdf_lex(i32* %17, i32* %18, %struct.TYPE_10__* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @PDF_TOK_KEYWORD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @strcmp(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %189

31:                                               ; preds = %24, %16
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @PDF_TOK_STRING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %38 = call i32 @fz_throw(i32* %36, i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pdf_code_from_string(i32* %43, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = call i64 @pdf_lex(i32* %48, i32* %49, %struct.TYPE_10__* %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @PDF_TOK_STRING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %58 = call i32 @fz_throw(i32* %56, i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %40
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pdf_code_from_string(i32* %62, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 65535
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 65535
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78, %75, %72, %69, %59
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @fz_warn(i32* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %189

88:                                               ; preds = %78
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = call i64 @pdf_lex(i32* %89, i32* %90, %struct.TYPE_10__* %91)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @PDF_TOK_STRING, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %171

96:                                               ; preds = %88
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pdf_code_from_string(i32* %104, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @pdf_map_range_to_range(i32* %109, %struct.TYPE_11__* %110, i32 %111, i32 %112, i32 %113)
  br label %170

115:                                              ; preds = %96
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %169

121:                                              ; preds = %115
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sdiv i32 %124, 2
  %126 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %127 = call i32 @nelem(i32* %126)
  %128 = call i32 @fz_mini(i32 %125, i32 %127)
  store i32 %128, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %145, %121
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = mul nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = call i32 @pdf_code_from_string(i32* %140, i32 2)
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %143
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %129

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %153, %148
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @pdf_map_one_to_many(i32* %154, %struct.TYPE_11__* %155, i32 %156, i32* %157, i32 %158)
  %160 = load i32, i32* %14, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %149

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %168, %115
  br label %170

170:                                              ; preds = %169, %101
  br label %188

171:                                              ; preds = %88
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* @PDF_TOK_OPEN_ARRAY, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @pdf_parse_bf_range_array(i32* %176, %struct.TYPE_11__* %177, i32* %178, %struct.TYPE_10__* %179, i32 %180, i32 %181)
  br label %187

183:                                              ; preds = %171
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %186 = call i32 @fz_throw(i32* %184, i32 %185, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %187

187:                                              ; preds = %183, %175
  br label %188

188:                                              ; preds = %187, %170
  br label %16

189:                                              ; preds = %82, %30
  ret void
}

declare dso_local i64 @pdf_lex(i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @pdf_code_from_string(i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32) #1

declare dso_local i32 @pdf_map_range_to_range(i32*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @nelem(i32*) #1

declare dso_local i32 @pdf_map_one_to_many(i32*, %struct.TYPE_11__*, i32, i32*, i32) #1

declare dso_local i32 @pdf_parse_bf_range_array(i32*, %struct.TYPE_11__*, i32*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
