; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-output.c_fz_print_stext_block_as_html.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-output.c_fz_print_stext_block_as_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { float, i32, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [84 x i8] c"<p style=\22position:absolute;white-space:pre;margin:0;padding:0;top:%dpt;left:%dpt\22>\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&#x%x;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"</p>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_print_stext_block_as_html(i32* %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  store i32* null, i32** %11, align 8
  store float 0.000000e+00, float* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %7, align 8
  br label %21

21:                                               ; preds = %165, %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %169

24:                                               ; preds = %21
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %33, i32* %34, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  store i32* null, i32** %11, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %8, align 8
  br label %41

41:                                               ; preds = %147, %24
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %151

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = call i32 @detect_super_script(%struct.TYPE_13__* %45, %struct.TYPE_14__* %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load float, float* %55, align 8
  %57 = load float, float* %12, align 4
  %58 = fcmp une float %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63, %59, %53, %44
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load float, float* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @fz_print_style_end_html(i32* %73, i32* %74, i32* %75, float %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %69
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %11, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load float, float* %84, align 8
  store float %85, float* %12, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load float, float* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @fz_print_style_begin_html(i32* %90, i32* %91, i32* %92, float %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %79, %63
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %101 [
    i32 60, label %126
    i32 62, label %130
    i32 38, label %134
    i32 34, label %138
    i32 39, label %142
  ]

101:                                              ; preds = %97
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %104, 32
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp sle i32 %109, 127
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @fz_write_byte(i32* %112, i32* %113, i32 %116)
  br label %125

118:                                              ; preds = %106, %101
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %119, i32* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %118, %111
  br label %146

126:                                              ; preds = %97
  %127 = load i32*, i32** %4, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @fz_write_string(i32* %127, i32* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %146

130:                                              ; preds = %97
  %131 = load i32*, i32** %4, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @fz_write_string(i32* %131, i32* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %146

134:                                              ; preds = %97
  %135 = load i32*, i32** %4, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @fz_write_string(i32* %135, i32* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %146

138:                                              ; preds = %97
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @fz_write_string(i32* %139, i32* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %146

142:                                              ; preds = %97
  %143 = load i32*, i32** %4, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @fz_write_string(i32* %143, i32* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %142, %138, %134, %130, %126, %125
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  store %struct.TYPE_14__* %150, %struct.TYPE_14__** %8, align 8
  br label %41

151:                                              ; preds = %41
  %152 = load i32*, i32** %11, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = load float, float* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @fz_print_style_end_html(i32* %155, i32* %156, i32* %157, float %158, i32 %159)
  br label %161

161:                                              ; preds = %154, %151
  %162 = load i32*, i32** %4, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @fz_write_string(i32* %162, i32* %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %165

165:                                              ; preds = %161
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %7, align 8
  br label %21

169:                                              ; preds = %21
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, i32, ...) #1

declare dso_local i32 @detect_super_script(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_print_style_end_html(i32*, i32*, i32*, float, i32) #1

declare dso_local i32 @fz_print_style_begin_html(i32*, i32*, i32*, float, i32, i32) #1

declare dso_local i32 @fz_write_byte(i32*, i32*, i32) #1

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
