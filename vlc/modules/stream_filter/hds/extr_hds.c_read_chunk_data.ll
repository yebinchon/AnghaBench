; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_read_chunk_data.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_read_chunk_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32, i32, %struct.TYPE_12__*, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_11__*)* @read_chunk_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_chunk_data(i32* %0, i32* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %12, align 8
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %294

43:                                               ; preds = %34, %29, %4
  br label %44

44:                                               ; preds = %194, %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br label %68

68:                                               ; preds = %60, %55
  %69 = phi i1 [ false, %55 ], [ %67, %60 ]
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %68, %52, %47, %44
  %72 = phi i1 [ false, %52 ], [ false, %47 ], [ false, %44 ], [ %70, %68 ]
  br i1 %72, label %73, label %195

73:                                               ; preds = %71
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %15, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %73
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %96, %84
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = zext i32 %102 to i64
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @memcpy(i32* %99, i32 %108, i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %7, align 8
  %118 = load i32, i32* %16, align 4
  %119 = zext i32 %118 to i64
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %98, %73
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %173, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %142, label %137

137:                                              ; preds = %129
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %173

142:                                              ; preds = %137, %129
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = icmp ne %struct.TYPE_12__* %145, null
  br i1 %146, label %160, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = load i32*, i32** %6, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %156 = call i8* @generate_new_chunk(i32* %153, %struct.TYPE_12__* %154, %struct.TYPE_11__* %155)
  %157 = bitcast i8* %156 to %struct.TYPE_12__*
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 4
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %159, align 8
  store i32 1, i32* %14, align 4
  br label %160

160:                                              ; preds = %152, %147, %142
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %167 = call i32 @chunk_free(%struct.TYPE_12__* %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %168, %struct.TYPE_12__** %12, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  store %struct.TYPE_12__* %169, %struct.TYPE_12__** %171, align 8
  br label %172

172:                                              ; preds = %165, %160
  br label %194

173:                                              ; preds = %137, %124
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp sge i64 %181, %184
  br i1 %185, label %191, label %186

186:                                              ; preds = %178
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186, %178
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %192, %struct.TYPE_12__** %12, align 8
  br label %193

193:                                              ; preds = %191, %186, %173
  br label %194

194:                                              ; preds = %193, %172
  br label %44

195:                                              ; preds = %71
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 4
  store %struct.TYPE_12__* %201, %struct.TYPE_12__** %203, align 8
  br label %204

204:                                              ; preds = %200, %195
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %286, label %209

209:                                              ; preds = %204
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  store %struct.TYPE_12__* %212, %struct.TYPE_12__** %12, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %214 = icmp ne %struct.TYPE_12__* %213, null
  br i1 %214, label %215, label %278

215:                                              ; preds = %209
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %276, %215
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %221 = icmp ne %struct.TYPE_12__* %220, null
  br i1 %221, label %222, label %238

222:                                              ; preds = %219
  %223 = load i32, i32* %17, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sdiv i32 %223, %226
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %222
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  %237 = xor i1 %236, true
  br label %238

238:                                              ; preds = %232, %222, %219
  %239 = phi i1 [ false, %222 ], [ false, %219 ], [ %237, %232 ]
  br i1 %239, label %240, label %277

240:                                              ; preds = %238
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = icmp ne %struct.TYPE_12__* %243, null
  br i1 %244, label %258, label %245

245:                                              ; preds = %240
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %258, label %250

250:                                              ; preds = %245
  %251 = load i32*, i32** %6, align 8
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %254 = call i8* @generate_new_chunk(i32* %251, %struct.TYPE_12__* %252, %struct.TYPE_11__* %253)
  %255 = bitcast i8* %254 to %struct.TYPE_12__*
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 4
  store %struct.TYPE_12__* %255, %struct.TYPE_12__** %257, align 8
  store i32 1, i32* %14, align 4
  br label %258

258:                                              ; preds = %250, %245, %240
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 5
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %276, label %263

263:                                              ; preds = %258
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 4
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  store %struct.TYPE_12__* %266, %struct.TYPE_12__** %12, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %268 = icmp ne %struct.TYPE_12__* %267, null
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %17, align 4
  br label %275

275:                                              ; preds = %269, %263
  br label %276

276:                                              ; preds = %275, %258
  br label %219

277:                                              ; preds = %238
  br label %278

278:                                              ; preds = %277, %209
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = call i32 @vlc_cond_signal(i32* %283)
  br label %285

285:                                              ; preds = %281, %278
  br label %286

286:                                              ; preds = %285, %204
  %287 = load i32*, i32** %7, align 8
  %288 = load i32*, i32** %13, align 8
  %289 = ptrtoint i32* %287 to i64
  %290 = ptrtoint i32* %288 to i64
  %291 = sub i64 %289, %290
  %292 = sdiv exact i64 %291, 4
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %286, %42
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @generate_new_chunk(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @chunk_free(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
