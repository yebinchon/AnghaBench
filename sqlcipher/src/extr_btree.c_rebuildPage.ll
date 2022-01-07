; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_rebuildPage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_rebuildPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32*, i32**, i32** }
%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*, i32*)*, i32, i64, %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@NB = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, %struct.TYPE_9__*)* @rebuildPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuildPage(%struct.TYPE_10__* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %13, align 8
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %17, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @sqlite3PagerTempSpace(i32 %50)
  store i32* %51, i32** %18, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i64 @get2byte(i32* %61)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ugt i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @NEVER(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %4
  store i64 0, i64* %15, align 8
  br label %71

71:                                               ; preds = %70, %4
  %72 = load i32*, i32** %18, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32*, i32** %11, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %15, align 8
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(i32* %74, i32* %77, i32 %82)
  store i32 0, i32* %20, align 4
  br label %84

84:                                               ; preds = %105, %71
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* @NB, align 4
  %97 = mul nsw i32 %96, 2
  %98 = icmp slt i32 %95, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @ALWAYS(i32 %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %94, %84
  %103 = phi i1 [ false, %84 ], [ %101, %94 ]
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %20, align 4
  br label %84

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %21, align 8
  %116 = load i32*, i32** %13, align 8
  store i32* %116, i32** %19, align 8
  br label %117

117:                                              ; preds = %108, %257
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %22, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %23, align 4
  %132 = load i32, i32* %23, align 4
  %133 = icmp sgt i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32*, i32** %22, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = call i64 @SQLITE_WITHIN(i32* %136, i32* %137, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %117
  %142 = load i32*, i32** %22, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = ptrtoint i32* %145 to i64
  %147 = load i32*, i32** %13, align 8
  %148 = ptrtoint i32* %147 to i64
  %149 = icmp sgt i64 %146, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %151, i32* %5, align 4
  br label %298

152:                                              ; preds = %141
  %153 = load i32*, i32** %18, align 8
  %154 = load i32*, i32** %22, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = ptrtoint i32* %154 to i64
  %157 = ptrtoint i32* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 4
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  store i32* %160, i32** %22, align 8
  br label %179

161:                                              ; preds = %117
  %162 = load i32*, i32** %22, align 8
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = ptrtoint i32* %165 to i64
  %167 = load i32*, i32** %21, align 8
  %168 = ptrtoint i32* %167 to i64
  %169 = icmp sgt i64 %166, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %161
  %171 = load i32*, i32** %22, align 8
  %172 = ptrtoint i32* %171 to i64
  %173 = load i32*, i32** %21, align 8
  %174 = ptrtoint i32* %173 to i64
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %177, i32* %5, align 4
  br label %298

178:                                              ; preds = %170, %161
  br label %179

179:                                              ; preds = %178, %152
  %180 = load i32, i32* %23, align 4
  %181 = load i32*, i32** %19, align 8
  %182 = sext i32 %180 to i64
  %183 = sub i64 0, %182
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32* %184, i32** %19, align 8
  %185 = load i32*, i32** %17, align 8
  %186 = load i32*, i32** %19, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = ptrtoint i32* %186 to i64
  %189 = ptrtoint i32* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = call i32 @put2byte(i32* %185, i32 %192)
  %194 = load i32*, i32** %17, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32* %195, i32** %17, align 8
  %196 = load i32*, i32** %19, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = icmp ult i32* %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %179
  %200 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %200, i32* %5, align 4
  br label %298

201:                                              ; preds = %179
  %202 = load i32*, i32** %19, align 8
  %203 = load i32*, i32** %22, align 8
  %204 = load i32, i32* %23, align 4
  %205 = call i32 @memcpy(i32* %202, i32* %203, i32 %204)
  %206 = load i32, i32* %23, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %211 = load i32*, i32** %22, align 8
  %212 = call i32 %209(%struct.TYPE_9__* %210, i32* %211)
  %213 = icmp eq i32 %206, %212
  br i1 %213, label %217, label %214

214:                                              ; preds = %201
  %215 = load i64, i64* @CORRUPT_DB, align 8
  %216 = icmp ne i64 %215, 0
  br label %217

217:                                              ; preds = %214, %201
  %218 = phi i1 [ true, %201 ], [ %216, %214 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  %221 = load i32, i32* %23, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %226 = load i32*, i32** %22, align 8
  %227 = call i32 %224(%struct.TYPE_9__* %225, i32* %226)
  %228 = icmp ne i32 %221, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @testcase(i32 %229)
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %16, align 4
  %235 = icmp sge i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %217
  br label %258

237:                                              ; preds = %217
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %20, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %14, align 4
  %246 = icmp sle i32 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %237
  %248 = load i32, i32* %20, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %20, align 4
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  store i32* %256, i32** %21, align 8
  br label %257

257:                                              ; preds = %247, %237
  br label %117

258:                                              ; preds = %236
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  store i64 0, i64* %263, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = call i32 @put2byte(i32* %268, i32 0)
  %270 = load i32*, i32** %11, align 8
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 3
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @put2byte(i32* %274, i32 %277)
  %279 = load i32*, i32** %11, align 8
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %280, 5
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32*, i32** %19, align 8
  %285 = load i32*, i32** %11, align 8
  %286 = ptrtoint i32* %284 to i64
  %287 = ptrtoint i32* %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 4
  %290 = trunc i64 %289 to i32
  %291 = call i32 @put2byte(i32* %283, i32 %290)
  %292 = load i32*, i32** %11, align 8
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, 7
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  store i32 0, i32* %296, align 4
  %297 = load i32, i32* @SQLITE_OK, align 4
  store i32 %297, i32* %5, align 4
  br label %298

298:                                              ; preds = %258, %199, %176, %150
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local i32* @sqlite3PagerTempSpace(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get2byte(i32*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @SQLITE_WITHIN(i32*, i32*, i32*) #1

declare dso_local i32 @put2byte(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
