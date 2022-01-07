; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_color_from_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_color_from_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@CSS_HASH = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@N_NUMBER = common dso_local global i32 0, align 4
@CSS_KEYWORD = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"maroon\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"orange\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"olive\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"purple\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"fuchsia\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"lime\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"navy\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"aqua\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"teal\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"silver\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @color_from_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_from_value(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  br label %351

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @CSS_HASH, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %132

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %348, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @strlen(i32* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %36, label %79

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tohex(i32 %41)
  %43 = mul nsw i32 %42, 16
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @tohex(i32 %48)
  %50 = add nsw i32 %43, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tohex(i32 %55)
  %57 = mul nsw i32 %56, 16
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tohex(i32 %62)
  %64 = add nsw i32 %57, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tohex(i32 %69)
  %71 = mul nsw i32 %70, 16
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @tohex(i32 %76)
  %78 = add nsw i32 %71, %77
  store i32 %78, i32* %8, align 4
  br label %127

79:                                               ; preds = %29
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, 6
  br i1 %81, label %82, label %125

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @tohex(i32 %87)
  %89 = mul nsw i32 %88, 16
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @tohex(i32 %94)
  %96 = add nsw i32 %89, %95
  store i32 %96, i32* %6, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @tohex(i32 %101)
  %103 = mul nsw i32 %102, 16
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @tohex(i32 %108)
  %110 = add nsw i32 %103, %109
  store i32 %110, i32* %7, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @tohex(i32 %115)
  %117 = mul nsw i32 %116, 16
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @tohex(i32 %122)
  %124 = add nsw i32 %117, %123
  store i32 %124, i32* %8, align 4
  br label %126

125:                                              ; preds = %79
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %82
  br label %127

127:                                              ; preds = %126, %36
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @make_color(i32 %128, i32 %129, i32 %130, i32 255)
  store i32 %131, i32* %3, align 4
  br label %351

132:                                              ; preds = %20
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 8
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 40
  br i1 %137, label %138, label %196

138:                                              ; preds = %132
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @strcmp(i32* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %196, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %10, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = icmp ne %struct.TYPE_6__* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %144
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = icmp ne %struct.TYPE_5__* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  br label %162

161:                                              ; preds = %150, %144
  br label %162

162:                                              ; preds = %161, %155
  %163 = phi %struct.TYPE_6__* [ %160, %155 ], [ null, %161 ]
  store %struct.TYPE_6__* %163, %struct.TYPE_6__** %11, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %165 = icmp ne %struct.TYPE_6__* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = icmp ne %struct.TYPE_5__* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  br label %178

177:                                              ; preds = %166, %162
  br label %178

178:                                              ; preds = %177, %171
  %179 = phi %struct.TYPE_6__* [ %176, %171 ], [ null, %177 ]
  store %struct.TYPE_6__* %179, %struct.TYPE_6__** %12, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %181 = load i32, i32* @N_NUMBER, align 4
  %182 = call i32 @number_from_value(%struct.TYPE_6__* %180, i32 0, i32 %181)
  %183 = call i32 @fz_from_css_number(i32 %182, i32 255, i32 255, i32 0)
  store i32 %183, i32* %13, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %185 = load i32, i32* @N_NUMBER, align 4
  %186 = call i32 @number_from_value(%struct.TYPE_6__* %184, i32 0, i32 %185)
  %187 = call i32 @fz_from_css_number(i32 %186, i32 255, i32 255, i32 0)
  store i32 %187, i32* %14, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %189 = load i32, i32* @N_NUMBER, align 4
  %190 = call i32 @number_from_value(%struct.TYPE_6__* %188, i32 0, i32 %189)
  %191 = call i32 @fz_from_css_number(i32 %190, i32 255, i32 255, i32 0)
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @make_color(i32 %192, i32 %193, i32 %194, i32 255)
  store i32 %195, i32* %3, align 4
  br label %351

196:                                              ; preds = %138, %132
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i8, i8* %198, align 8
  %200 = sext i8 %199 to i32
  %201 = load i8, i8* @CSS_KEYWORD, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %349

204:                                              ; preds = %196
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @strcmp(i32* %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %204
  %211 = call i32 @make_color(i32 0, i32 0, i32 0, i32 0)
  store i32 %211, i32* %3, align 4
  br label %351

212:                                              ; preds = %204
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @strcmp(i32* %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %212
  %219 = call i32 @make_color(i32 128, i32 0, i32 0, i32 255)
  store i32 %219, i32* %3, align 4
  br label %351

220:                                              ; preds = %212
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @strcmp(i32* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %220
  %227 = call i32 @make_color(i32 255, i32 0, i32 0, i32 255)
  store i32 %227, i32* %3, align 4
  br label %351

228:                                              ; preds = %220
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @strcmp(i32* %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %228
  %235 = call i32 @make_color(i32 255, i32 165, i32 0, i32 255)
  store i32 %235, i32* %3, align 4
  br label %351

236:                                              ; preds = %228
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @strcmp(i32* %239, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %236
  %243 = call i32 @make_color(i32 255, i32 255, i32 0, i32 255)
  store i32 %243, i32* %3, align 4
  br label %351

244:                                              ; preds = %236
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @strcmp(i32* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %244
  %251 = call i32 @make_color(i32 128, i32 128, i32 0, i32 255)
  store i32 %251, i32* %3, align 4
  br label %351

252:                                              ; preds = %244
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @strcmp(i32* %255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %252
  %259 = call i32 @make_color(i32 128, i32 0, i32 128, i32 255)
  store i32 %259, i32* %3, align 4
  br label %351

260:                                              ; preds = %252
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @strcmp(i32* %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %260
  %267 = call i32 @make_color(i32 255, i32 0, i32 255, i32 255)
  store i32 %267, i32* %3, align 4
  br label %351

268:                                              ; preds = %260
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @strcmp(i32* %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %268
  %275 = call i32 @make_color(i32 255, i32 255, i32 255, i32 255)
  store i32 %275, i32* %3, align 4
  br label %351

276:                                              ; preds = %268
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @strcmp(i32* %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %276
  %283 = call i32 @make_color(i32 0, i32 255, i32 0, i32 255)
  store i32 %283, i32* %3, align 4
  br label %351

284:                                              ; preds = %276
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @strcmp(i32* %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %284
  %291 = call i32 @make_color(i32 0, i32 128, i32 0, i32 255)
  store i32 %291, i32* %3, align 4
  br label %351

292:                                              ; preds = %284
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @strcmp(i32* %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %292
  %299 = call i32 @make_color(i32 0, i32 0, i32 128, i32 255)
  store i32 %299, i32* %3, align 4
  br label %351

300:                                              ; preds = %292
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @strcmp(i32* %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %300
  %307 = call i32 @make_color(i32 0, i32 0, i32 255, i32 255)
  store i32 %307, i32* %3, align 4
  br label %351

308:                                              ; preds = %300
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @strcmp(i32* %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %308
  %315 = call i32 @make_color(i32 0, i32 255, i32 255, i32 255)
  store i32 %315, i32* %3, align 4
  br label %351

316:                                              ; preds = %308
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = call i32 @strcmp(i32* %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %316
  %323 = call i32 @make_color(i32 0, i32 128, i32 128, i32 255)
  store i32 %323, i32* %3, align 4
  br label %351

324:                                              ; preds = %316
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @strcmp(i32* %327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %324
  %331 = call i32 @make_color(i32 0, i32 0, i32 0, i32 255)
  store i32 %331, i32* %3, align 4
  br label %351

332:                                              ; preds = %324
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @strcmp(i32* %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %332
  %339 = call i32 @make_color(i32 192, i32 192, i32 192, i32 255)
  store i32 %339, i32* %3, align 4
  br label %351

340:                                              ; preds = %332
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @strcmp(i32* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %340
  %347 = call i32 @make_color(i32 128, i32 128, i32 128, i32 255)
  store i32 %347, i32* %3, align 4
  br label %351

348:                                              ; preds = %340
  br label %29

349:                                              ; preds = %196
  %350 = load i32, i32* %5, align 4
  store i32 %350, i32* %3, align 4
  br label %351

351:                                              ; preds = %349, %346, %338, %330, %322, %314, %306, %298, %290, %282, %274, %266, %258, %250, %242, %234, %226, %218, %210, %178, %127, %18
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @tohex(i32) #1

declare dso_local i32 @make_color(i32, i32, i32, i32) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @fz_from_css_number(i32, i32, i32, i32) #1

declare dso_local i32 @number_from_value(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
