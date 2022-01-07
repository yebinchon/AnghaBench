; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_knockout_begin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_knockout_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32*, i32* }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__* }

@FZ_BLEND_ISOLATED = common dso_local global i32 0, align 4
@FZ_BLEND_KNOCKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"knockout\00", align 1
@FZ_BLEND_MODEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, %struct.TYPE_13__*)* @fz_knockout_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @fz_knockout_begin(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i64 %17
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FZ_BLEND_ISOLATED, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %3, align 8
  br label %258

32:                                               ; preds = %2
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = call %struct.TYPE_12__* @push_stack(i32* %33, %struct.TYPE_13__* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %8, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = call i32 @fz_pixmap_bbox(i32* %36, %struct.TYPE_14__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fz_intersect_irect(i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @fz_new_pixmap_with_bbox(i32* %46, i32* %51, i32 %52, i32* %57, i32 %62)
  %64 = bitcast i8* %63 to %struct.TYPE_14__*
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = icmp ne %struct.TYPE_14__* %71, null
  br i1 %72, label %73, label %106

73:                                               ; preds = %32
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = call i32 @fz_pixmap_bbox(i32* %74, %struct.TYPE_14__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fz_intersect_irect(i32 %79, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @fz_new_pixmap_with_bbox(i32* %84, i32* %89, i32 %90, i32* %95, i32 %100)
  %102 = bitcast i8* %101 to %struct.TYPE_14__*
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %105, align 8
  br label %106

106:                                              ; preds = %73, %32
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = call i32 @fz_clear_pixmap(i32* %110, %struct.TYPE_14__* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = icmp ne %struct.TYPE_14__* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %109
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = call i32 @fz_clear_pixmap(i32* %122, %struct.TYPE_14__* %126)
  br label %128

128:                                              ; preds = %121, %109
  br label %229

129:                                              ; preds = %106
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 %132, 1
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %10, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %11, align 8
  br label %136

136:                                              ; preds = %155, %129
  %137 = load i32, i32* %10, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %145
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %11, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = icmp ne %struct.TYPE_14__* %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %139
  br label %156

155:                                              ; preds = %139
  br label %136

156:                                              ; preds = %154, %136
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = icmp ne %struct.TYPE_14__* %159, null
  br i1 %160, label %161, label %208

161:                                              ; preds = %156
  %162 = load i32*, i32** %4, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @fz_copy_pixmap_rect(i32* %162, %struct.TYPE_14__* %166, %struct.TYPE_14__* %169, i32 %170, i32 %173)
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 1
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = icmp ne %struct.TYPE_14__* %178, null
  br i1 %179, label %180, label %207

180:                                              ; preds = %161
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = icmp ne %struct.TYPE_14__* %183, null
  br i1 %184, label %185, label %199

185:                                              ; preds = %180
  %186 = load i32*, i32** %4, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @fz_copy_pixmap_rect(i32* %186, %struct.TYPE_14__* %190, %struct.TYPE_14__* %193, i32 %194, i32 %197)
  br label %206

199:                                              ; preds = %180
  %200 = load i32*, i32** %4, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = call i32 @fz_clear_pixmap(i32* %200, %struct.TYPE_14__* %204)
  br label %206

206:                                              ; preds = %199, %185
  br label %207

207:                                              ; preds = %206, %161
  br label %228

208:                                              ; preds = %156
  %209 = load i32*, i32** %4, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 1
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = call i32 @fz_clear_pixmap(i32* %209, %struct.TYPE_14__* %213)
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i64 1
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = icmp ne %struct.TYPE_14__* %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %208
  %221 = load i32*, i32** %4, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = call i32 @fz_clear_pixmap(i32* %221, %struct.TYPE_14__* %225)
  br label %227

227:                                              ; preds = %220, %208
  br label %228

228:                                              ; preds = %227, %207
  br label %229

229:                                              ; preds = %228, %128
  %230 = load i32*, i32** %4, align 8
  %231 = load i32, i32* %6, align 4
  %232 = call i8* @fz_new_pixmap_with_bbox(i32* %230, i32* null, i32 %231, i32* null, i32 1)
  %233 = bitcast i8* %232 to %struct.TYPE_14__*
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 1
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 3
  store %struct.TYPE_14__* %233, %struct.TYPE_14__** %236, align 8
  %237 = load i32*, i32** %4, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i64 1
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = call i32 @fz_clear_pixmap(i32* %237, %struct.TYPE_14__* %241)
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i64 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 4
  %247 = load i32, i32* @FZ_BLEND_MODEMASK, align 4
  %248 = load i32, i32* @FZ_BLEND_ISOLATED, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = and i32 %254, %250
  store i32 %255, i32* %253, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i64 1
  store %struct.TYPE_12__* %257, %struct.TYPE_12__** %3, align 8
  br label %258

258:                                              ; preds = %229, %30
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %259
}

declare dso_local %struct.TYPE_12__* @push_stack(i32*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @fz_pixmap_bbox(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_intersect_irect(i32, i32) #1

declare dso_local i8* @fz_new_pixmap_with_bbox(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @fz_clear_pixmap(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_copy_pixmap_rect(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
