; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_region.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32*, i32, i32, i32, i64 }
%struct.TYPE_35__ = type { i32, i32 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"region is far larger than data provided (%d << %d), aborting to prevent DOS\00", align 1
@JBIG2_SEVERITY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"gbat[%d] = %d\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"unsupported generic region (MMR=%d, GBTEMPLATE=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_decode_generic_region(i32* %0, %struct.TYPE_34__* %1, %struct.TYPE_36__* %2, i32* %3, %struct.TYPE_35__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %9, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_35__* %4, %struct.TYPE_35__** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = icmp sgt i32 %25, 67108864
  br i1 %26, label %27, label %57

27:                                               ; preds = %6
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sdiv i32 %37, 65536
  %39 = icmp slt i32 %30, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %27
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = call i32 @jbig2_error(i32* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %55)
  store i32 %56, i32* %7, align 4
  br label %307

57:                                               ; preds = %27, %6
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @jbig2_decode_generic_region_TPGDON(i32* %68, %struct.TYPE_34__* %69, %struct.TYPE_36__* %70, i32* %71, %struct.TYPE_35__* %72, i32* %73)
  store i32 %74, i32* %7, align 4
  br label %307

75:                                               ; preds = %62, %57
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %146, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %146

85:                                               ; preds = %80
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %138, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %138

95:                                               ; preds = %90
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %138

100:                                              ; preds = %95
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, -3
  br i1 %104, label %105, label %138

105:                                              ; preds = %100
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %138

110:                                              ; preds = %105
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -2
  br i1 %119, label %120, label %138

120:                                              ; preds = %115
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 6
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, -2
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load i32*, i32** %14, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, -2
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load i32*, i32** %8, align 8
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @jbig2_decode_generic_template0(i32* %131, %struct.TYPE_34__* %132, %struct.TYPE_36__* %133, i32* %134, %struct.TYPE_35__* %135, i32* %136)
  store i32 %137, i32* %7, align 4
  br label %307

138:                                              ; preds = %125, %120, %115, %110, %105, %100, %95, %90, %85
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @jbig2_decode_generic_template0_unopt(i32* %139, %struct.TYPE_34__* %140, %struct.TYPE_36__* %141, i32* %142, %struct.TYPE_35__* %143, i32* %144)
  store i32 %145, i32* %7, align 4
  br label %307

146:                                              ; preds = %80, %75
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %187, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %187

156:                                              ; preds = %151
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %179, label %161

161:                                              ; preds = %156
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load i32*, i32** %14, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load i32*, i32** %8, align 8
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = call i32 @jbig2_decode_generic_template1(i32* %172, %struct.TYPE_34__* %173, %struct.TYPE_36__* %174, i32* %175, %struct.TYPE_35__* %176, i32* %177)
  store i32 %178, i32* %7, align 4
  br label %307

179:                                              ; preds = %166, %161, %156
  %180 = load i32*, i32** %8, align 8
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @jbig2_decode_generic_template1_unopt(i32* %180, %struct.TYPE_34__* %181, %struct.TYPE_36__* %182, i32* %183, %struct.TYPE_35__* %184, i32* %185)
  store i32 %186, i32* %7, align 4
  br label %307

187:                                              ; preds = %151, %146
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %228, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %228

197:                                              ; preds = %192
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %220, label %202

202:                                              ; preds = %197
  %203 = load i32*, i32** %14, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %220

207:                                              ; preds = %202
  %208 = load i32*, i32** %14, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %220

212:                                              ; preds = %207
  %213 = load i32*, i32** %8, align 8
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %218 = load i32*, i32** %13, align 8
  %219 = call i32 @jbig2_decode_generic_template2(i32* %213, %struct.TYPE_34__* %214, %struct.TYPE_36__* %215, i32* %216, %struct.TYPE_35__* %217, i32* %218)
  store i32 %219, i32* %7, align 4
  br label %307

220:                                              ; preds = %207, %202, %197
  %221 = load i32*, i32** %8, align 8
  %222 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %223 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %224 = load i32*, i32** %11, align 8
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %226 = load i32*, i32** %13, align 8
  %227 = call i32 @jbig2_decode_generic_template2_unopt(i32* %221, %struct.TYPE_34__* %222, %struct.TYPE_36__* %223, i32* %224, %struct.TYPE_35__* %225, i32* %226)
  store i32 %227, i32* %7, align 4
  br label %307

228:                                              ; preds = %192, %187
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %269, label %233

233:                                              ; preds = %228
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 3
  br i1 %237, label %238, label %269

238:                                              ; preds = %233
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %261, label %243

243:                                              ; preds = %238
  %244 = load i32*, i32** %14, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 2
  br i1 %247, label %248, label %261

248:                                              ; preds = %243
  %249 = load i32*, i32** %14, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load i32*, i32** %8, align 8
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %257 = load i32*, i32** %11, align 8
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %259 = load i32*, i32** %13, align 8
  %260 = call i32 @jbig2_decode_generic_template3(i32* %254, %struct.TYPE_34__* %255, %struct.TYPE_36__* %256, i32* %257, %struct.TYPE_35__* %258, i32* %259)
  store i32 %260, i32* %7, align 4
  br label %307

261:                                              ; preds = %248, %243, %238
  %262 = load i32*, i32** %8, align 8
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %264 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %265 = load i32*, i32** %11, align 8
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %267 = load i32*, i32** %13, align 8
  %268 = call i32 @jbig2_decode_generic_template3_unopt(i32* %262, %struct.TYPE_34__* %263, %struct.TYPE_36__* %264, i32* %265, %struct.TYPE_35__* %266, i32* %267)
  store i32 %268, i32* %7, align 4
  br label %307

269:                                              ; preds = %233, %228
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  store i32 0, i32* %15, align 4
  br label %273

273:                                              ; preds = %291, %272
  %274 = load i32, i32* %15, align 4
  %275 = icmp slt i32 %274, 8
  br i1 %275, label %276, label %294

276:                                              ; preds = %273
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* @JBIG2_SEVERITY_DEBUG, align 4
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %15, align 4
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @jbig2_error(i32* %277, i32 %278, i32 %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %282, i32 %289)
  br label %291

291:                                              ; preds = %276
  %292 = load i32, i32* %15, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %15, align 4
  br label %273

294:                                              ; preds = %273
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %297 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @jbig2_error(i32* %295, i32 %296, i32 %299, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %302, i32 %305)
  store i32 %306, i32* %7, align 4
  br label %307

307:                                              ; preds = %294, %261, %253, %220, %212, %179, %171, %138, %130, %67, %40
  %308 = load i32, i32* %7, align 4
  ret i32 %308
}

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @jbig2_decode_generic_region_TPGDON(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template0(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template0_unopt(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template1(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template1_unopt(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template2(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template2_unopt(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template3(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_template3_unopt(i32*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32*, %struct.TYPE_35__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
