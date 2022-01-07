; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_test_pointers.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_test_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_KEY = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@INPUT_PROP_ACCELEROMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ID_INPUT_ACCELEROMETER\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@INPUT_PROP_POINTING_STICK = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i32 0, align 4
@BTN_JOYSTICK = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY1 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY40 = common dso_local global i32 0, align 4
@BTN_DPAD_UP = common dso_local global i32 0, align 4
@BTN_DPAD_RIGHT = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ID_INPUT_POINTINGSTICK\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ID_INPUT_MOUSE\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ID_INPUT_TOUCHPAD\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ID_INPUT_TOUCHSCREEN\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ID_INPUT_JOYSTICK\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ID_INPUT_TABLET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i64*, i64*, i64*, i32)* @test_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pointers(i32* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @EV_KEY, align 4
  %37 = load i64*, i64** %10, align 8
  %38 = call i32 @test_bit(i32 %36, i64* %37)
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* @ABS_X, align 4
  %40 = load i64*, i64** %11, align 8
  %41 = call i32 @test_bit(i32 %39, i64* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %7
  %44 = load i32, i32* @ABS_Y, align 4
  %45 = load i64*, i64** %11, align 8
  %46 = call i32 @test_bit(i32 %44, i64* %45)
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %7
  %49 = phi i1 [ false, %7 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @ABS_Z, align 4
  %55 = load i64*, i64** %11, align 8
  %56 = call i32 @test_bit(i32 %54, i64* %55)
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* @INPUT_PROP_ACCELEROMETER, align 4
  %62 = load i64*, i64** %14, align 8
  %63 = call i32 @test_bit(i32 %61, i64* %62)
  store i32 %63, i32* %34, align 4
  %64 = load i32, i32* %25, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %24, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %34, align 4
  br label %70

70:                                               ; preds = %69, %66, %58
  %71 = load i32, i32* %34, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @udev_builtin_add_property(i32* %74, i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %402

77:                                               ; preds = %70
  %78 = load i32, i32* @INPUT_PROP_POINTING_STICK, align 4
  %79 = load i64*, i64** %14, align 8
  %80 = call i32 @test_bit(i32 %78, i64* %79)
  store i32 %80, i32* %35, align 4
  %81 = load i32, i32* @BTN_STYLUS, align 4
  %82 = load i64*, i64** %12, align 8
  %83 = call i32 @test_bit(i32 %81, i64* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @BTN_TOOL_PEN, align 4
  %87 = load i64*, i64** %12, align 8
  %88 = call i32 @test_bit(i32 %86, i64* %87)
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %85, %77
  %91 = phi i1 [ true, %77 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %94 = load i64*, i64** %12, align 8
  %95 = call i32 @test_bit(i32 %93, i64* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* @BTN_TOOL_PEN, align 4
  %99 = load i64*, i64** %12, align 8
  %100 = call i32 @test_bit(i32 %98, i64* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %97, %90
  %104 = phi i1 [ false, %90 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %27, align 4
  %106 = load i32, i32* @BTN_MOUSE, align 4
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %121, %103
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* @BTN_JOYSTICK, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %28, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ false, %107 ], [ %114, %111 ]
  br i1 %116, label %117, label %124

117:                                              ; preds = %115
  %118 = load i32, i32* %16, align 4
  %119 = load i64*, i64** %12, align 8
  %120 = call i32 @test_bit(i32 %118, i64* %119)
  store i32 %120, i32* %28, align 4
  br label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %107

124:                                              ; preds = %115
  %125 = load i32, i32* @EV_REL, align 4
  %126 = load i64*, i64** %10, align 8
  %127 = call i32 @test_bit(i32 %125, i64* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load i32, i32* @REL_X, align 4
  %131 = load i64*, i64** %13, align 8
  %132 = call i32 @test_bit(i32 %130, i64* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* @REL_Y, align 4
  %136 = load i64*, i64** %13, align 8
  %137 = call i32 @test_bit(i32 %135, i64* %136)
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %134, %129, %124
  %140 = phi i1 [ false, %129 ], [ false, %124 ], [ %138, %134 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %143 = load i64*, i64** %11, align 8
  %144 = call i32 @test_bit(i32 %142, i64* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %148 = load i64*, i64** %11, align 8
  %149 = call i32 @test_bit(i32 %147, i64* %148)
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %146, %139
  %152 = phi i1 [ false, %139 ], [ %150, %146 ]
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load i32, i32* @ABS_MT_SLOT, align 4
  %158 = load i64*, i64** %11, align 8
  %159 = call i32 @test_bit(i32 %157, i64* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i32, i32* @ABS_MT_SLOT, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load i64*, i64** %11, align 8
  %165 = call i32 @test_bit(i32 %163, i64* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 0, i32* %20, align 4
  br label %168

168:                                              ; preds = %167, %161, %156, %151
  %169 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %170 = load i64*, i64** %14, align 8
  %171 = call i32 @test_bit(i32 %169, i64* %170)
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* @BTN_TOUCH, align 4
  %173 = load i64*, i64** %12, align 8
  %174 = call i32 @test_bit(i32 %172, i64* %173)
  store i32 %174, i32* %23, align 4
  %175 = load i32, i32* @BTN_JOYSTICK, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load i64*, i64** %12, align 8
  %178 = call i32 @test_bit(i32 %176, i64* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %238, label %180

180:                                              ; preds = %168
  %181 = load i32, i32* @BTN_JOYSTICK, align 4
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %196, %180
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* @BTN_DIGI, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  br label %190

190:                                              ; preds = %186, %182
  %191 = phi i1 [ false, %182 ], [ %189, %186 ]
  br i1 %191, label %192, label %199

192:                                              ; preds = %190
  %193 = load i32, i32* %16, align 4
  %194 = load i64*, i64** %12, align 8
  %195 = call i32 @test_bit(i32 %193, i64* %194)
  store i32 %195, i32* %21, align 4
  br label %196

196:                                              ; preds = %192
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %16, align 4
  br label %182

199:                                              ; preds = %190
  %200 = load i32, i32* @BTN_TRIGGER_HAPPY1, align 4
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %215, %199
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* @BTN_TRIGGER_HAPPY40, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32, i32* %21, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi i1 [ false, %201 ], [ %208, %205 ]
  br i1 %210, label %211, label %218

211:                                              ; preds = %209
  %212 = load i32, i32* %16, align 4
  %213 = load i64*, i64** %12, align 8
  %214 = call i32 @test_bit(i32 %212, i64* %213)
  store i32 %214, i32* %21, align 4
  br label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %201

218:                                              ; preds = %209
  %219 = load i32, i32* @BTN_DPAD_UP, align 4
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %234, %218
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* @BTN_DPAD_RIGHT, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i32, i32* %21, align 4
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  br label %228

228:                                              ; preds = %224, %220
  %229 = phi i1 [ false, %220 ], [ %227, %224 ]
  br i1 %229, label %230, label %237

230:                                              ; preds = %228
  %231 = load i32, i32* %16, align 4
  %232 = load i64*, i64** %12, align 8
  %233 = call i32 @test_bit(i32 %231, i64* %232)
  store i32 %233, i32* %21, align 4
  br label %234

234:                                              ; preds = %230
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %16, align 4
  br label %220

237:                                              ; preds = %228
  br label %238

238:                                              ; preds = %237, %168
  %239 = load i32, i32* @ABS_RX, align 4
  store i32 %239, i32* %17, align 4
  br label %240

240:                                              ; preds = %254, %238
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* @ABS_PRESSURE, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load i32, i32* %21, align 4
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  br label %248

248:                                              ; preds = %244, %240
  %249 = phi i1 [ false, %240 ], [ %247, %244 ]
  br i1 %249, label %250, label %257

250:                                              ; preds = %248
  %251 = load i32, i32* %17, align 4
  %252 = load i64*, i64** %11, align 8
  %253 = call i32 @test_bit(i32 %251, i64* %252)
  store i32 %253, i32* %21, align 4
  br label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %17, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %17, align 4
  br label %240

257:                                              ; preds = %248
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %291

260:                                              ; preds = %257
  %261 = load i32, i32* %26, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store i32 1, i32* %32, align 4
  br label %290

264:                                              ; preds = %260
  %265 = load i32, i32* %27, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load i32, i32* %22, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  store i32 1, i32* %30, align 4
  br label %289

271:                                              ; preds = %267, %264
  %272 = load i32, i32* %28, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  store i32 1, i32* %29, align 4
  br label %288

275:                                              ; preds = %271
  %276 = load i32, i32* %23, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %22, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278, %275
  store i32 1, i32* %31, align 4
  br label %287

282:                                              ; preds = %278
  %283 = load i32, i32* %21, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 1, i32* %33, align 4
  br label %286

286:                                              ; preds = %285, %282
  br label %287

287:                                              ; preds = %286, %281
  br label %288

288:                                              ; preds = %287, %274
  br label %289

289:                                              ; preds = %288, %270
  br label %290

290:                                              ; preds = %289, %263
  br label %296

291:                                              ; preds = %257
  %292 = load i32, i32* %21, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store i32 1, i32* %33, align 4
  br label %295

295:                                              ; preds = %294, %291
  br label %296

296:                                              ; preds = %295, %290
  %297 = load i32, i32* %20, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %320

299:                                              ; preds = %296
  %300 = load i32, i32* %26, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  store i32 1, i32* %32, align 4
  br label %319

303:                                              ; preds = %299
  %304 = load i32, i32* %27, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load i32, i32* %22, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %306
  store i32 1, i32* %30, align 4
  br label %318

310:                                              ; preds = %306, %303
  %311 = load i32, i32* %23, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %22, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313, %310
  store i32 1, i32* %31, align 4
  br label %317

317:                                              ; preds = %316, %313
  br label %318

318:                                              ; preds = %317, %309
  br label %319

319:                                              ; preds = %318, %302
  br label %320

320:                                              ; preds = %319, %296
  %321 = load i32, i32* %32, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %339, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %30, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %339, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %33, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %339, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %28, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %329
  %333 = load i32, i32* %19, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %18, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %335, %332
  store i32 1, i32* %29, align 4
  br label %339

339:                                              ; preds = %338, %335, %329, %326, %323, %320
  %340 = load i32, i32* %35, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = load i32*, i32** %9, align 8
  %344 = load i32, i32* %15, align 4
  %345 = call i32 @udev_builtin_add_property(i32* %343, i32 %344, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %346

346:                                              ; preds = %342, %339
  %347 = load i32, i32* %29, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = load i32*, i32** %9, align 8
  %351 = load i32, i32* %15, align 4
  %352 = call i32 @udev_builtin_add_property(i32* %350, i32 %351, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %353

353:                                              ; preds = %349, %346
  %354 = load i32, i32* %30, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load i32*, i32** %9, align 8
  %358 = load i32, i32* %15, align 4
  %359 = call i32 @udev_builtin_add_property(i32* %357, i32 %358, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %360

360:                                              ; preds = %356, %353
  %361 = load i32, i32* %31, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %360
  %364 = load i32*, i32** %9, align 8
  %365 = load i32, i32* %15, align 4
  %366 = call i32 @udev_builtin_add_property(i32* %364, i32 %365, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %367

367:                                              ; preds = %363, %360
  %368 = load i32, i32* %33, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %367
  %371 = load i32*, i32** %9, align 8
  %372 = load i32, i32* %15, align 4
  %373 = call i32 @udev_builtin_add_property(i32* %371, i32 %372, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %374

374:                                              ; preds = %370, %367
  %375 = load i32, i32* %32, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load i32*, i32** %9, align 8
  %379 = load i32, i32* %15, align 4
  %380 = call i32 @udev_builtin_add_property(i32* %378, i32 %379, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %381

381:                                              ; preds = %377, %374
  %382 = load i32, i32* %32, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %399, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* %29, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %399, label %387

387:                                              ; preds = %384
  %388 = load i32, i32* %30, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %399, label %390

390:                                              ; preds = %387
  %391 = load i32, i32* %31, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %399, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %33, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %393
  %397 = load i32, i32* %35, align 4
  %398 = icmp ne i32 %397, 0
  br label %399

399:                                              ; preds = %396, %393, %390, %387, %384, %381
  %400 = phi i1 [ true, %393 ], [ true, %390 ], [ true, %387 ], [ true, %384 ], [ true, %381 ], [ %398, %396 ]
  %401 = zext i1 %400 to i32
  store i32 %401, i32* %8, align 4
  br label %402

402:                                              ; preds = %399, %73
  %403 = load i32, i32* %8, align 4
  ret i32 %403
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @udev_builtin_add_property(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
