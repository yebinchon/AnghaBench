; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_text_span.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_text_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_26__ = type { float, float, float, float, i64, i64 }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_24__*, i32, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { i64, i32, i64, i64 }
%struct.TYPE_25__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"/>\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" xml:space=\22preserve\22\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" transform=\22matrix(%M)\22\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" font-size=\22%g\22\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" font-family=\22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" font-weight=\22bold\22\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" font-style=\22italic\22\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" writing-mode=\22tb\22\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"<tspan y=\22%g\22 x=\22%g\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"<tspan x=\22%g\22 y=\22%g\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"&#x%04x;\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"</tspan>\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"</text>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_22__*, %struct.TYPE_26__*, %struct.TYPE_23__*)* @svg_dev_text_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_text_span(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca %struct.TYPE_26__, align 8
  %15 = alloca %struct.TYPE_25__, align 8
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_26__, align 8
  %23 = alloca %struct.TYPE_26__, align 8
  %24 = alloca %struct.TYPE_25__, align 8
  %25 = alloca %struct.TYPE_25__, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %7, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  store float 0.000000e+00, float* %21, align 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %35, i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %391

38:                                               ; preds = %4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 4
  %41 = bitcast %struct.TYPE_26__* %12 to i8*
  %42 = bitcast %struct.TYPE_26__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 32, i1 false)
  %43 = call float @fz_matrix_expansion(%struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %12)
  store float %43, float* %16, align 4
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %45 = load float, float* %44, align 8
  %46 = load float, float* %16, align 4
  %47 = fdiv float %45, %46
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  store float %47, float* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load float, float* %16, align 4
  %52 = fdiv float %50, %51
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  store float %52, float* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  %55 = load float, float* %54, align 8
  %56 = fneg float %55
  %57 = load float, float* %16, align 4
  %58 = fdiv float %56, %57
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 2
  store float %58, float* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 3
  %61 = load float, float* %60, align 4
  %62 = fneg float %61
  %63 = load float, float* %16, align 4
  %64 = fdiv float %62, %63
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  store float %64, float* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 4
  store i64 0, i64* %67, align 8
  call void @fz_invert_matrix(%struct.TYPE_26__* sret %22, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %14)
  %68 = bitcast %struct.TYPE_26__* %13 to i8*
  %69 = bitcast %struct.TYPE_26__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 32, i1 false)
  call void @fz_concat(%struct.TYPE_26__* sret %23, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %14, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %2)
  %70 = bitcast %struct.TYPE_26__* %14 to i8*
  %71 = bitcast %struct.TYPE_26__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 32, i1 false)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 5
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 4
  store i64 %84, i64* %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @fz_font_name(i32* %88, i32 %91)
  %93 = call i32 @svg_font_family(i32* %86, i8* %87, i32 100, i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @fz_font_is_bold(i32* %94, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @fz_font_is_italic(i32* %99, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %104, i32* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %107, i32* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_26__* %14)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load float, float* %16, align 4
  %113 = fpext float %112 to double
  %114 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %110, i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), double %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %118 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %115, i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %38
  %122 = load i32*, i32** %5, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %122, i32* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %38
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** %5, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %129, i32* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %125
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32*, i32** %5, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %138, i32* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @fz_write_byte(i32* %142, i32* %143, i32 62)
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %147 = call i32 @find_first_char(i32* %145, %struct.TYPE_23__* %146, i32 0)
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %379, %141
  %149 = load i32, i32* %18, align 4
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %387

154:                                              ; preds = %148
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @find_next_line_break(i32* %155, %struct.TYPE_23__* %156, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %13, i32 %157)
  store i32 %158, i32* %19, align 4
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  store i64 %166, i64* %167, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  store i64 %175, i64* %176, align 8
  %177 = bitcast %struct.TYPE_25__* %15 to { i64, i64 }*
  %178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call { i64, i64 } @fz_transform_point(i64 %179, i64 %181, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %13)
  %183 = bitcast %struct.TYPE_25__* %24 to { i64, i64 }*
  %184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 0
  %185 = extractvalue { i64, i64 } %182, 0
  store i64 %185, i64* %184, align 8
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 1
  %187 = extractvalue { i64, i64 } %182, 1
  store i64 %187, i64* %186, align 8
  %188 = bitcast %struct.TYPE_25__* %15 to i8*
  %189 = bitcast %struct.TYPE_25__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 %189, i64 16, i1 false)
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp sge i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %154
  %200 = load i32*, i32** %5, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %19, align 4
  %204 = call float @svg_cluster_advance(i32* %200, %struct.TYPE_23__* %201, i32 %202, i32 %203)
  store float %204, float* %21, align 4
  br label %205

205:                                              ; preds = %199, %154
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load i32*, i32** %5, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %211, i32* %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %214, i64 %216)
  br label %226

218:                                              ; preds = %205
  %219 = load i32*, i32** %5, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %219, i32* %220, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %222, i64 %224)
  br label %226

226:                                              ; preds = %218, %210
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %20, align 4
  br label %229

229:                                              ; preds = %323, %226
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* %19, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %326

233:                                              ; preds = %229
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i64 %238
  store %struct.TYPE_24__* %239, %struct.TYPE_24__** %17, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp sge i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %233
  %245 = load i32*, i32** %5, align 8
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* %19, align 4
  %249 = call float @svg_cluster_advance(i32* %245, %struct.TYPE_23__* %246, i32 %247, i32 %248)
  store float %249, float* %21, align 4
  br label %250

250:                                              ; preds = %244, %233
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = icmp sge i32 %253, 0
  br i1 %254, label %255, label %322

255:                                              ; preds = %250
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp sge i64 %258, 0
  br i1 %259, label %260, label %282

260:                                              ; preds = %255
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  store i64 %263, i64* %264, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  store i64 %267, i64* %268, align 8
  %269 = bitcast %struct.TYPE_25__* %15 to { i64, i64 }*
  %270 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %269, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = call { i64, i64 } @fz_transform_point(i64 %271, i64 %273, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %13)
  %275 = bitcast %struct.TYPE_25__* %25 to { i64, i64 }*
  %276 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %275, i32 0, i32 0
  %277 = extractvalue { i64, i64 } %274, 0
  store i64 %277, i64* %276, align 8
  %278 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %275, i32 0, i32 1
  %279 = extractvalue { i64, i64 } %274, 1
  store i64 %279, i64* %278, align 8
  %280 = bitcast %struct.TYPE_25__* %15 to i8*
  %281 = bitcast %struct.TYPE_25__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %280, i8* align 8 %281, i64 16, i1 false)
  br label %306

282:                                              ; preds = %255
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %282
  %288 = load float, float* %16, align 4
  %289 = load float, float* %21, align 4
  %290 = fmul float %288, %289
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = sitofp i64 %292 to float
  %294 = fadd float %293, %290
  %295 = fptosi float %294 to i64
  store i64 %295, i64* %291, align 8
  br label %305

296:                                              ; preds = %282
  %297 = load float, float* %16, align 4
  %298 = load float, float* %21, align 4
  %299 = fmul float %297, %298
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = sitofp i64 %301 to float
  %303 = fadd float %302, %299
  %304 = fptosi float %303 to i64
  store i64 %304, i64* %300, align 8
  br label %305

305:                                              ; preds = %296, %287
  br label %306

306:                                              ; preds = %305, %260
  %307 = load i32*, i32** %5, align 8
  %308 = load i32*, i32** %8, align 8
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %306
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  br label %319

316:                                              ; preds = %306
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  br label %319

319:                                              ; preds = %316, %313
  %320 = phi i64 [ %315, %313 ], [ %318, %316 ]
  %321 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %307, i32* %308, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 %320)
  br label %322

322:                                              ; preds = %319, %250
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %20, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %20, align 4
  br label %229

326:                                              ; preds = %229
  %327 = load i32*, i32** %5, align 8
  %328 = load i32*, i32** %8, align 8
  %329 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %327, i32* %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %330 = load i32, i32* %18, align 4
  store i32 %330, i32* %20, align 4
  br label %331

331:                                              ; preds = %376, %326
  %332 = load i32, i32* %20, align 4
  %333 = load i32, i32* %19, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %379

335:                                              ; preds = %331
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %337, align 8
  %339 = load i32, i32* %20, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i64 %340
  store %struct.TYPE_24__* %341, %struct.TYPE_24__** %17, align 8
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = icmp sge i32 %344, 0
  br i1 %345, label %346, label %375

346:                                              ; preds = %335
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  store i32 %349, i32* %26, align 4
  %350 = load i32, i32* %26, align 4
  %351 = icmp sge i32 %350, 32
  br i1 %351, label %352, label %369

352:                                              ; preds = %346
  %353 = load i32, i32* %26, align 4
  %354 = icmp sle i32 %353, 127
  br i1 %354, label %355, label %369

355:                                              ; preds = %352
  %356 = load i32, i32* %26, align 4
  %357 = icmp ne i32 %356, 60
  br i1 %357, label %358, label %369

358:                                              ; preds = %355
  %359 = load i32, i32* %26, align 4
  %360 = icmp ne i32 %359, 38
  br i1 %360, label %361, label %369

361:                                              ; preds = %358
  %362 = load i32, i32* %26, align 4
  %363 = icmp ne i32 %362, 62
  br i1 %363, label %364, label %369

364:                                              ; preds = %361
  %365 = load i32*, i32** %5, align 8
  %366 = load i32*, i32** %8, align 8
  %367 = load i32, i32* %26, align 4
  %368 = call i32 @fz_write_byte(i32* %365, i32* %366, i32 %367)
  br label %374

369:                                              ; preds = %361, %358, %355, %352, %346
  %370 = load i32*, i32** %5, align 8
  %371 = load i32*, i32** %8, align 8
  %372 = load i32, i32* %26, align 4
  %373 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %370, i32* %371, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %372)
  br label %374

374:                                              ; preds = %369, %364
  br label %375

375:                                              ; preds = %374, %335
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %20, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %20, align 4
  br label %331

379:                                              ; preds = %331
  %380 = load i32*, i32** %5, align 8
  %381 = load i32*, i32** %8, align 8
  %382 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %380, i32* %381, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %383 = load i32*, i32** %5, align 8
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %385 = load i32, i32* %19, align 4
  %386 = call i32 @find_first_char(i32* %383, %struct.TYPE_23__* %384, i32 %385)
  store i32 %386, i32* %18, align 4
  br label %148

387:                                              ; preds = %148
  %388 = load i32*, i32** %5, align 8
  %389 = load i32*, i32** %8, align 8
  %390 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %388, i32* %389, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %391

391:                                              ; preds = %387, %34
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @fz_matrix_expansion(%struct.TYPE_26__* byval(%struct.TYPE_26__) align 8) #1

declare dso_local void @fz_invert_matrix(%struct.TYPE_26__* sret, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8) #1

declare dso_local void @fz_concat(%struct.TYPE_26__* sret, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8) #1

declare dso_local i32 @svg_font_family(i32*, i8*, i32, i32) #1

declare dso_local i32 @fz_font_name(i32*, i32) #1

declare dso_local i32 @fz_font_is_bold(i32*, i32) #1

declare dso_local i32 @fz_font_is_italic(i32*, i32) #1

declare dso_local i32 @fz_write_byte(i32*, i32*, i32) #1

declare dso_local i32 @find_first_char(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @find_next_line_break(i32*, %struct.TYPE_23__*, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8, i32) #1

declare dso_local { i64, i64 } @fz_transform_point(i64, i64, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8) #1

declare dso_local float @svg_cluster_advance(i32*, %struct.TYPE_23__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
