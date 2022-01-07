; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_polygon2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_polygon2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_11__, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8* }

@.str = private unnamed_addr constant [68 x i8] c"POLYGON2(x=%d,y=%d,op=0x%x,fm=%d,bs=%d,bg=0x%x,fg=0x%x,n=%d,sz=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad ROP2 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"polygon2 parse error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_9__*, i32, i32)* @process_polygon2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_polygon2(i32* %0, i32 %1, %struct.TYPE_9__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 9
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @rdp_in_coord(i32 %20, i8** %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @rdp_in_coord(i32 %30, i8** %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @in_uint8(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @in_uint8(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 6
  %63 = call i32 @rdp_in_colour(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  %72 = call i32 @rdp_in_colour(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 7
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 6
  %79 = call i32 @rdp_parse_brush(i32 %74, %struct.TYPE_11__* %76, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 2048
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @in_uint8(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %73
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 4096
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @in_uint8(i32 %94, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @in_uint8a(i32 %99, i32* %102, i32 %105)
  br label %107

107:                                              ; preds = %93, %89
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 9
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 8
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @DEBUG(i8* %137)
  %139 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %157, %107
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @DEBUG(i8* %155)
  br label %157

157:                                              ; preds = %146
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %140

160:                                              ; preds = %140
  %161 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %171, label %166

166:                                              ; preds = %160
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 16
  br i1 %170, label %171, label %176

171:                                              ; preds = %166, %160
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  br label %318

176:                                              ; preds = %166
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 16
  %183 = trunc i64 %182 to i32
  %184 = call i64 @malloc(i32 %183)
  %185 = inttoptr i64 %184 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %185, %struct.TYPE_10__** %15, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %187 = icmp eq %struct.TYPE_10__* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %318

189:                                              ; preds = %176
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 16
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memset(%struct.TYPE_10__* %190, i32 0, i32 %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 9
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i8* %201, i8** %204, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 8
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i8* %207, i8** %210, align 8
  store i32 0, i32* %11, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 1
  %215 = sdiv i32 %214, 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %217

217:                                              ; preds = %281, %189
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp sle i32 %218, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %217
  %224 = load i32, i32* %13, align 4
  %225 = icmp slt i32 %224, 256
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %227, %230
  br label %232

232:                                              ; preds = %226, %223, %217
  %233 = phi i1 [ false, %223 ], [ false, %217 ], [ %231, %226 ]
  br i1 %233, label %234, label %284

234:                                              ; preds = %232
  %235 = load i32, i32* %13, align 4
  %236 = sub nsw i32 %235, 1
  %237 = srem i32 %236, 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %234
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 4
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %11, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %239, %234
  %249 = load i32, i32* %14, align 4
  %250 = xor i32 %249, -1
  %251 = and i32 %250, 128
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %248
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = call i8* @parse_delta(i32* %256, i32* %12)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  store i8* %257, i8** %262, align 8
  br label %263

263:                                              ; preds = %253, %248
  %264 = load i32, i32* %14, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %265, 64
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = call i8* @parse_delta(i32* %271, i32* %12)
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  store i8* %272, i8** %277, align 8
  br label %278

278:                                              ; preds = %268, %263
  %279 = load i32, i32* %14, align 4
  %280 = shl i32 %279, 2
  store i32 %280, i32* %14, align 4
  br label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %13, align 4
  br label %217

284:                                              ; preds = %232
  %285 = load i32, i32* %13, align 4
  %286 = sub nsw i32 %285, 1
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %286, %289
  br i1 %290, label %291, label %313

291:                                              ; preds = %284
  %292 = load i32*, i32** %6, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 7
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @ui_polygon(i32* %292, i32 %295, i32 %298, %struct.TYPE_10__* %299, i32 %303, %struct.TYPE_11__* %305, i32 %308, i32 %311)
  br label %315

313:                                              ; preds = %284
  %314 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %315

315:                                              ; preds = %313, %291
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %317 = call i32 @free(%struct.TYPE_10__* %316)
  br label %318

318:                                              ; preds = %315, %188, %171
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i8**, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @rdp_parse_brush(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @parse_delta(i32*, i32*) #1

declare dso_local i32 @ui_polygon(i32*, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
