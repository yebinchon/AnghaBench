; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_sdi.c_vanc_to_cc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_sdi.c_vanc_to_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"VANC line too small (%zu words)\00", align 1
@vanc_to_cc.vanc_header = internal constant [6 x i32] [i32 0, i32 0, i32 255, i32 3, i32 255, i32 3], align 16
@.str.1 = private unnamed_addr constant [37 x i8] c"Data Count (%zu) > line length (%zu)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Parity incorrect for word %zu\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"VANC checksum incorrect: 0x%.4x != 0x%.4x\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid CDP header 0x%.2x 0x%.2x\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"CDP len %d != %zu\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"CDP checksum invalid 0x%.4x != 0x%.4x\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"CDP frame rate invalid (0x%.2x)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"CDP flags invalid (0x%.2x)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Invalid ccdata_id 0x%.2x\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Invalid cc_count 0x%.2x\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Invalid cc_count %d (> %zu)\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Invalid footer id 0x%.2x\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Header 0x%.4x != Footer 0x%.4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @vanc_to_cc(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @memcmp(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @vanc_to_cc.vanc_header, i64 0, i64 0), i32* %31, i32 6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, 6
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %7, align 8
  %51 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49, i64 %50)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

52:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  store i64 3, i64* %10, align 8
  br label %53

53:                                               ; preds = %103, %52
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, 1
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %106

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %63, 8
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @parity(i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 256
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = xor i32 %72, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %58
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 2
  br i1 %86, label %87, label %92

87:                                               ; preds = %84, %58
  %88 = load i32*, i32** %5, align 8
  %89 = load i64, i64* %10, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

92:                                               ; preds = %84, %81
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 511
  store i32 %97, i32* %9, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 255
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %53

106:                                              ; preds = %53
  %107 = load i32, i32* %9, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %108, 256
  %110 = shl i32 %109, 1
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = sub i64 %114, 1
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %106
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* %8, align 8
  %125 = sub i64 %124, 1
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %127)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

129:                                              ; preds = %106
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 97
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %134, %129
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

140:                                              ; preds = %134
  %141 = load i32*, i32** %6, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 6
  store i32* %142, i32** %14, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 150
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = load i32*, i32** %14, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 105
  br i1 %151, label %152, label %161

152:                                              ; preds = %147, %140
  %153 = load i32*, i32** %5, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %14, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %156, i32 %159)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

161:                                              ; preds = %147
  %162 = load i64, i64* %8, align 8
  %163 = sub i64 %162, 7
  store i64 %163, i64* %8, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %8, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %161
  %171 = load i32*, i32** %5, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* %8, align 8
  %176 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %174, i64 %175)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

177:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  br label %178

178:                                              ; preds = %190, %177
  %179 = load i64, i64* %16, align 8
  %180 = load i64, i64* %8, align 8
  %181 = sub i64 %180, 1
  %182 = icmp ult i64 %179, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load i32*, i32** %14, align 8
  %185 = load i64, i64* %16, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %183
  %191 = load i64, i64* %16, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %16, align 8
  br label %178

193:                                              ; preds = %178
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %15, align 4
  %198 = sub nsw i32 256, %197
  br label %200

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199, %196
  %201 = phi i32 [ %198, %196 ], [ 0, %199 ]
  store i32 %201, i32* %15, align 4
  %202 = load i32*, i32** %14, align 8
  %203 = load i64, i64* %8, align 8
  %204 = sub i64 %203, 1
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %200
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* %15, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = load i64, i64* %8, align 8
  %214 = sub i64 %213, 1
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %210, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %211, i32 %216)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

218:                                              ; preds = %200
  %219 = load i32*, i32** %14, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %17, align 4
  %222 = load i32, i32* %17, align 4
  %223 = and i32 %222, 15
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %218
  %226 = load i32*, i32** %5, align 8
  %227 = load i32, i32* %17, align 4
  %228 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %226, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %227)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

229:                                              ; preds = %218
  %230 = load i32, i32* %17, align 4
  %231 = ashr i32 %230, 4
  store i32 %231, i32* %17, align 4
  %232 = load i32, i32* %17, align 4
  %233 = icmp sgt i32 %232, 8
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* %17, align 4
  %237 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %236)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

238:                                              ; preds = %229
  %239 = load i32*, i32** %14, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 67
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %238
  %245 = load i32*, i32** %5, align 8
  %246 = load i32*, i32** %14, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %248)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

250:                                              ; preds = %238
  %251 = load i32*, i32** %14, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 5
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 8
  %255 = load i32*, i32** %14, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 6
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %254, %257
  store i32 %258, i32* %18, align 4
  %259 = load i32*, i32** %14, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 7
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 114
  br i1 %262, label %263, label %269

263:                                              ; preds = %250
  %264 = load i32*, i32** %5, align 8
  %265 = load i32*, i32** %14, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 7
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %264, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %267)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

269:                                              ; preds = %250
  %270 = load i32*, i32** %14, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 8
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %19, align 4
  %273 = load i32, i32* %19, align 4
  %274 = and i32 %273, 224
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %269
  %277 = load i32*, i32** %5, align 8
  %278 = load i32, i32* %19, align 4
  %279 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %277, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %278)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

280:                                              ; preds = %269
  %281 = load i32, i32* %19, align 4
  %282 = and i32 %281, 31
  store i32 %282, i32* %19, align 4
  %283 = load i64, i64* %8, align 8
  %284 = sub i64 %283, 13
  %285 = load i32, i32* %19, align 4
  %286 = mul i32 %285, 3
  %287 = zext i32 %286 to i64
  %288 = icmp ult i64 %284, %287
  br i1 %288, label %289, label %296

289:                                              ; preds = %280
  %290 = load i32*, i32** %5, align 8
  %291 = load i32, i32* %19, align 4
  %292 = mul i32 %291, 3
  %293 = load i64, i64* %8, align 8
  %294 = sub i64 %293, 13
  %295 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %290, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %292, i64 %294)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

296:                                              ; preds = %280
  %297 = load i32*, i32** %14, align 8
  %298 = load i64, i64* %8, align 8
  %299 = sub i64 %298, 4
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 116
  br i1 %302, label %303, label %311

303:                                              ; preds = %296
  %304 = load i32*, i32** %5, align 8
  %305 = load i32*, i32** %14, align 8
  %306 = load i64, i64* %8, align 8
  %307 = sub i64 %306, 4
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %309)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

311:                                              ; preds = %296
  %312 = load i32*, i32** %14, align 8
  %313 = load i64, i64* %8, align 8
  %314 = sub i64 %313, 3
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = shl i32 %316, 8
  %318 = load i32*, i32** %14, align 8
  %319 = load i64, i64* %8, align 8
  %320 = sub i64 %319, 2
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %317, %322
  store i32 %323, i32* %20, align 4
  %324 = load i32, i32* %20, align 4
  %325 = load i32, i32* %18, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %311
  %328 = load i32*, i32** %5, align 8
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* %20, align 4
  %331 = call i32 (i32*, i8*, i32, ...) @msg_Err(i32* %328, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %329, i32 %330)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %389

332:                                              ; preds = %311
  %333 = load i32, i32* %19, align 4
  %334 = mul i32 %333, 3
  %335 = call %struct.TYPE_4__* @block_Alloc(i32 %334)
  store %struct.TYPE_4__* %335, %struct.TYPE_4__** %21, align 8
  store i64 0, i64* %22, align 8
  br label %336

336:                                              ; preds = %384, %332
  %337 = load i64, i64* %22, align 8
  %338 = load i32, i32* %19, align 4
  %339 = zext i32 %338 to i64
  %340 = icmp ult i64 %337, %339
  br i1 %340, label %341, label %387

341:                                              ; preds = %336
  %342 = load i32*, i32** %14, align 8
  %343 = load i64, i64* %22, align 8
  %344 = mul i64 3, %343
  %345 = add i64 9, %344
  %346 = add i64 %345, 0
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = load i64, i64* %22, align 8
  %353 = mul i64 3, %352
  %354 = add i64 %353, 0
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  store i32 %348, i32* %355, align 4
  %356 = load i32*, i32** %14, align 8
  %357 = load i64, i64* %22, align 8
  %358 = mul i64 3, %357
  %359 = add i64 9, %358
  %360 = add i64 %359, 1
  %361 = getelementptr inbounds i32, i32* %356, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = load i64, i64* %22, align 8
  %367 = mul i64 3, %366
  %368 = add i64 %367, 1
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  store i32 %362, i32* %369, align 4
  %370 = load i32*, i32** %14, align 8
  %371 = load i64, i64* %22, align 8
  %372 = mul i64 3, %371
  %373 = add i64 9, %372
  %374 = add i64 %373, 2
  %375 = getelementptr inbounds i32, i32* %370, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i64, i64* %22, align 8
  %381 = mul i64 3, %380
  %382 = add i64 %381, 2
  %383 = getelementptr inbounds i32, i32* %379, i64 %382
  store i32 %376, i32* %383, align 4
  br label %384

384:                                              ; preds = %341
  %385 = load i64, i64* %22, align 8
  %386 = add i64 %385, 1
  store i64 %386, i64* %22, align 8
  br label %336

387:                                              ; preds = %336
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %388, %struct.TYPE_4__** %4, align 8
  br label %389

389:                                              ; preds = %387, %327, %303, %289, %276, %263, %244, %234, %225, %209, %170, %152, %139, %120, %87, %46, %34, %25
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %390
}

declare dso_local i32 @msg_Err(i32*, i8*, i32, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @parity(i32) #1

declare dso_local %struct.TYPE_4__* @block_Alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
