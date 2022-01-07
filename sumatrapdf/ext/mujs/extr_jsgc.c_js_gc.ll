; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsgc.c_js_gc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsgc.c_js_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_23__* }

@.str = private unnamed_addr constant [28 x i8] c"garbage collector is paused\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"garbage collected: %d/%d envs, %d/%d funs, %d/%d objs, %d/%d strs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_gc(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__**, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__**, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_23__**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [256 x i8], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 27
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = call i32 @js_report(%struct.TYPE_20__* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  br label %340

39:                                               ; preds = %2
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 26
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 %47, i32* %25, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = load i32, i32* %25, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 25
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @jsG_markobject(%struct.TYPE_20__* %50, i32 %51, i32 %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = load i32, i32* %25, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 24
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @jsG_markobject(%struct.TYPE_20__* %56, i32 %57, i32 %60)
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = load i32, i32* %25, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 23
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @jsG_markobject(%struct.TYPE_20__* %62, i32 %63, i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = load i32, i32* %25, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 22
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @jsG_markobject(%struct.TYPE_20__* %68, i32 %69, i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = load i32, i32* %25, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 21
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @jsG_markobject(%struct.TYPE_20__* %74, i32 %75, i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = load i32, i32* %25, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @jsG_markobject(%struct.TYPE_20__* %80, i32 %81, i32 %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = load i32, i32* %25, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 19
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @jsG_markobject(%struct.TYPE_20__* %86, i32 %87, i32 %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = load i32, i32* %25, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 18
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @jsG_markobject(%struct.TYPE_20__* %92, i32 %93, i32 %96)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = load i32, i32* %25, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 17
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @jsG_markobject(%struct.TYPE_20__* %98, i32 %99, i32 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = load i32, i32* %25, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 16
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @jsG_markobject(%struct.TYPE_20__* %104, i32 %105, i32 %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %111 = load i32, i32* %25, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @jsG_markobject(%struct.TYPE_20__* %110, i32 %111, i32 %114)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = load i32, i32* %25, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @jsG_markobject(%struct.TYPE_20__* %116, i32 %117, i32 %120)
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = load i32, i32* %25, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 13
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @jsG_markobject(%struct.TYPE_20__* %122, i32 %123, i32 %126)
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %129 = load i32, i32* %25, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @jsG_markobject(%struct.TYPE_20__* %128, i32 %129, i32 %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = load i32, i32* %25, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @jsG_markobject(%struct.TYPE_20__* %134, i32 %135, i32 %138)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = load i32, i32* %25, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @jsG_markobject(%struct.TYPE_20__* %140, i32 %141, i32 %144)
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = load i32, i32* %25, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @jsG_markobject(%struct.TYPE_20__* %146, i32 %147, i32 %150)
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %153 = load i32, i32* %25, align 4
  %154 = call i32 @jsG_markstack(%struct.TYPE_20__* %152, i32 %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = load i32, i32* %25, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @jsG_markenvironment(%struct.TYPE_20__* %155, i32 %156, i32 %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %162 = load i32, i32* %25, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @jsG_markenvironment(%struct.TYPE_20__* %161, i32 %162, i32 %165)
  store i32 0, i32* %26, align 4
  br label %167

167:                                              ; preds = %184, %39
  %168 = load i32, i32* %26, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %167
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %175 = load i32, i32* %25, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %26, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @jsG_markenvironment(%struct.TYPE_20__* %174, i32 %175, i32 %182)
  br label %184

184:                                              ; preds = %173
  %185 = load i32, i32* %26, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %26, align 4
  br label %167

187:                                              ; preds = %167
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 5
  store %struct.TYPE_23__** %189, %struct.TYPE_23__*** %16, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  store %struct.TYPE_23__* %192, %struct.TYPE_23__** %14, align 8
  br label %193

193:                                              ; preds = %219, %187
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %195 = icmp ne %struct.TYPE_23__* %194, null
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %198, align 8
  store %struct.TYPE_23__* %199, %struct.TYPE_23__** %15, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %25, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %196
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %207 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  store %struct.TYPE_23__* %206, %struct.TYPE_23__** %207, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %210 = call i32 @jsG_freeenvironment(%struct.TYPE_20__* %208, %struct.TYPE_23__* %209)
  %211 = load i32, i32* %21, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %21, align 4
  br label %216

213:                                              ; preds = %196
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  store %struct.TYPE_23__** %215, %struct.TYPE_23__*** %16, align 8
  br label %216

216:                                              ; preds = %213, %205
  %217 = load i32, i32* %17, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %216
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %220, %struct.TYPE_23__** %14, align 8
  br label %193

221:                                              ; preds = %193
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 4
  store %struct.TYPE_22__** %223, %struct.TYPE_22__*** %7, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 4
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %225, align 8
  store %struct.TYPE_22__* %226, %struct.TYPE_22__** %5, align 8
  br label %227

227:                                              ; preds = %253, %221
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %229 = icmp ne %struct.TYPE_22__* %228, null
  br i1 %229, label %230, label %255

230:                                              ; preds = %227
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %232, align 8
  store %struct.TYPE_22__* %233, %struct.TYPE_22__** %6, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %25, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %230
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %241 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %240, %struct.TYPE_22__** %241, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %244 = call i32 @jsG_freefunction(%struct.TYPE_20__* %242, %struct.TYPE_22__* %243)
  %245 = load i32, i32* %22, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %22, align 4
  br label %250

247:                                              ; preds = %230
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 1
  store %struct.TYPE_22__** %249, %struct.TYPE_22__*** %7, align 8
  br label %250

250:                                              ; preds = %247, %239
  %251 = load i32, i32* %18, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %18, align 4
  br label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %254, %struct.TYPE_22__** %5, align 8
  br label %227

255:                                              ; preds = %227
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 3
  store %struct.TYPE_21__** %257, %struct.TYPE_21__*** %10, align 8
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %259, align 8
  store %struct.TYPE_21__* %260, %struct.TYPE_21__** %8, align 8
  br label %261

261:                                              ; preds = %287, %255
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %263 = icmp ne %struct.TYPE_21__* %262, null
  br i1 %263, label %264, label %289

264:                                              ; preds = %261
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %266, align 8
  store %struct.TYPE_21__* %267, %struct.TYPE_21__** %9, align 8
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %25, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %264
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %275 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  store %struct.TYPE_21__* %274, %struct.TYPE_21__** %275, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %278 = call i32 @jsG_freeobject(%struct.TYPE_20__* %276, %struct.TYPE_21__* %277)
  %279 = load i32, i32* %23, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %23, align 4
  br label %284

281:                                              ; preds = %264
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 1
  store %struct.TYPE_21__** %283, %struct.TYPE_21__*** %10, align 8
  br label %284

284:                                              ; preds = %281, %273
  %285 = load i32, i32* %19, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %19, align 4
  br label %287

287:                                              ; preds = %284
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %288, %struct.TYPE_21__** %8, align 8
  br label %261

289:                                              ; preds = %261
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 2
  store %struct.TYPE_19__** %291, %struct.TYPE_19__*** %13, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %293, align 8
  store %struct.TYPE_19__* %294, %struct.TYPE_19__** %11, align 8
  br label %295

295:                                              ; preds = %321, %289
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %297 = icmp ne %struct.TYPE_19__* %296, null
  br i1 %297, label %298, label %323

298:                                              ; preds = %295
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %300, align 8
  store %struct.TYPE_19__* %301, %struct.TYPE_19__** %12, align 8
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %25, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %298
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %309 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %13, align 8
  store %struct.TYPE_19__* %308, %struct.TYPE_19__** %309, align 8
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %312 = call i32 @js_free(%struct.TYPE_20__* %310, %struct.TYPE_19__* %311)
  %313 = load i32, i32* %24, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %24, align 4
  br label %318

315:                                              ; preds = %298
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 1
  store %struct.TYPE_19__** %317, %struct.TYPE_19__*** %13, align 8
  br label %318

318:                                              ; preds = %315, %307
  %319 = load i32, i32* %20, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %20, align 4
  br label %321

321:                                              ; preds = %318
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %322, %struct.TYPE_19__** %11, align 8
  br label %295

323:                                              ; preds = %295
  %324 = load i32, i32* %4, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %340

326:                                              ; preds = %323
  %327 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* %22, align 4
  %331 = load i32, i32* %18, align 4
  %332 = load i32, i32* %23, align 4
  %333 = load i32, i32* %19, align 4
  %334 = load i32, i32* %24, align 4
  %335 = load i32, i32* %20, align 4
  %336 = call i32 @snprintf(i8* %327, i32 256, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335)
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %338 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %339 = call i32 @js_report(%struct.TYPE_20__* %337, i8* %338)
  br label %340

340:                                              ; preds = %38, %326, %323
  ret void
}

declare dso_local i32 @js_report(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @jsG_markobject(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @jsG_markstack(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @jsG_markenvironment(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @jsG_freeenvironment(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i32 @jsG_freefunction(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @jsG_freeobject(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @js_free(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
