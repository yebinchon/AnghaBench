; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_polyline.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_polyline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i8*, i8* }

@.str = private unnamed_addr constant [48 x i8] c"POLYLINE(x=%d,y=%d,op=0x%x,fg=0x%x,n=%d,sz=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad ROP2 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"polyline parse error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_9__*, i32, i32)* @process_polyline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_polyline(i32* %0, i32 %1, %struct.TYPE_9__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 6
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @rdp_in_coord(i32 %21, i8** %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %5
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @rdp_in_coord(i32 %31, i8** %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @in_uint8(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %36
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = call i32 @rdp_in_colour(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @in_uint8(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 64
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @in_uint8(i32 %70, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @in_uint8a(i32 %75, i32* %78, i32 %81)
  br label %83

83:                                               ; preds = %69, %65
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @DEBUG(i8* %103)
  %105 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %123, %83
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @DEBUG(i8* %121)
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %106

126:                                              ; preds = %106
  %127 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 16
  br i1 %136, label %137, label %142

137:                                              ; preds = %132, %126
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %276

142:                                              ; preds = %132
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 16
  %149 = trunc i64 %148 to i32
  %150 = call i64 @malloc(i32 %149)
  %151 = inttoptr i64 %150 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %16, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %153 = icmp eq %struct.TYPE_10__* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  br label %276

155:                                              ; preds = %142
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 16
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memset(%struct.TYPE_10__* %156, i32 0, i32 %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 6
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  store i8* %167, i8** %170, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i8* %173, i8** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i64 0, i64* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %181, i32* %182, align 8
  store i32 0, i32* %11, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sdiv i32 %186, 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %189

189:                                              ; preds = %250, %155
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp sle i32 %190, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br label %201

201:                                              ; preds = %195, %189
  %202 = phi i1 [ false, %189 ], [ %200, %195 ]
  br i1 %202, label %203, label %253

203:                                              ; preds = %201
  %204 = load i32, i32* %12, align 4
  %205 = sub nsw i32 %204, 1
  %206 = srem i32 %205, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %208, %203
  %218 = load i32, i32* %14, align 4
  %219 = xor i32 %218, -1
  %220 = and i32 %219, 128
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = call i8* @parse_delta(i32* %225, i32* %13)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  store i8* %226, i8** %231, align 8
  br label %232

232:                                              ; preds = %222, %217
  %233 = load i32, i32* %14, align 4
  %234 = xor i32 %233, -1
  %235 = and i32 %234, 64
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %232
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = call i8* @parse_delta(i32* %240, i32* %13)
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  store i8* %241, i8** %246, align 8
  br label %247

247:                                              ; preds = %237, %232
  %248 = load i32, i32* %14, align 4
  %249 = shl i32 %248, 2
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  br label %189

253:                                              ; preds = %201
  %254 = load i32, i32* %12, align 4
  %255 = sub nsw i32 %254, 1
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %255, %258
  br i1 %259, label %260, label %271

260:                                              ; preds = %253
  %261 = load i32*, i32** %6, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  %270 = call i32 @ui_polyline(i32* %261, i32 %264, %struct.TYPE_10__* %265, i32 %269, %struct.TYPE_11__* %15)
  br label %273

271:                                              ; preds = %253
  %272 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %260
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %275 = call i32 @free(%struct.TYPE_10__* %274)
  br label %276

276:                                              ; preds = %273, %154, %137
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i8**, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @parse_delta(i32*, i32*) #1

declare dso_local i32 @ui_polyline(i32*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
