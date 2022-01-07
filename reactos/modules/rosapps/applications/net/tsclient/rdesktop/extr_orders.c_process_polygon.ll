; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_polygon.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }

@.str = private unnamed_addr constant [53 x i8] c"POLYGON(x=%d,y=%d,op=0x%x,fm=%d,fg=0x%x,n=%d,sz=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad ROP2 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"polygon parse error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_7__*, i32, i32)* @process_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_polygon(i32* %0, i32 %1, %struct.TYPE_7__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
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
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
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
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
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
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
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
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = call i32 @rdp_in_colour(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @in_uint8(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 64
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @in_uint8(i32 %79, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @in_uint8a(i32 %84, i32* %87, i32 %90)
  br label %92

92:                                               ; preds = %78, %74
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 7
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @DEBUG(i8* %115)
  %117 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %135, %92
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %118
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @DEBUG(i8* %133)
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %118

138:                                              ; preds = %118
  %139 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %149, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 16
  br i1 %148, label %149, label %154

149:                                              ; preds = %144, %138
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  br label %291

154:                                              ; preds = %144
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 16
  %161 = trunc i64 %160 to i32
  %162 = call i64 @malloc(i32 %161)
  %163 = inttoptr i64 %162 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %15, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %165 = icmp eq %struct.TYPE_8__* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  br label %291

167:                                              ; preds = %154
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 16
  %175 = trunc i64 %174 to i32
  %176 = call i32 @memset(%struct.TYPE_8__* %168, i32 0, i32 %175)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 7
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  store i8* %179, i8** %182, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 6
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i8* %185, i8** %188, align 8
  store i32 0, i32* %11, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 1
  %193 = sdiv i32 %192, 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %195

195:                                              ; preds = %259, %167
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp sle i32 %196, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i32, i32* %13, align 4
  %203 = icmp slt i32 %202, 256
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %205, %208
  br label %210

210:                                              ; preds = %204, %201, %195
  %211 = phi i1 [ false, %201 ], [ false, %195 ], [ %209, %204 ]
  br i1 %211, label %212, label %262

212:                                              ; preds = %210
  %213 = load i32, i32* %13, align 4
  %214 = sub nsw i32 %213, 1
  %215 = srem i32 %214, 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %217, %212
  %227 = load i32, i32* %14, align 4
  %228 = xor i32 %227, -1
  %229 = and i32 %228, 128
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = call i8* @parse_delta(i32* %234, i32* %12)
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  store i8* %235, i8** %240, align 8
  br label %241

241:                                              ; preds = %231, %226
  %242 = load i32, i32* %14, align 4
  %243 = xor i32 %242, -1
  %244 = and i32 %243, 64
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %241
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  %250 = call i8* @parse_delta(i32* %249, i32* %12)
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  store i8* %250, i8** %255, align 8
  br label %256

256:                                              ; preds = %246, %241
  %257 = load i32, i32* %14, align 4
  %258 = shl i32 %257, 2
  store i32 %258, i32* %14, align 4
  br label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %13, align 4
  br label %195

262:                                              ; preds = %210
  %263 = load i32, i32* %13, align 4
  %264 = sub nsw i32 %263, 1
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %264, %267
  br i1 %268, label %269, label %286

269:                                              ; preds = %262
  %270 = load i32*, i32** %6, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @ui_polygon(i32* %270, i32 %273, i32 %276, %struct.TYPE_8__* %277, i32 %281, i32* null, i32 0, i32 %284)
  br label %288

286:                                              ; preds = %262
  %287 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %269
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %290 = call i32 @free(%struct.TYPE_8__* %289)
  br label %291

291:                                              ; preds = %288, %166, %149
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i8**, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @parse_delta(i32*, i32*) #1

declare dso_local i32 @ui_polygon(i32*, i32, i32, %struct.TYPE_8__*, i32, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
