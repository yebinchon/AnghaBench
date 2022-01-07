; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_ps2kbd.c_ps2kbd_keysym_queue.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_ps2kbd.c_ps2kbd_keysym_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2kbd_softc = type { i32 }

@__const.ps2kbd_keysym_queue.translation = private unnamed_addr constant [128 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 22, i32 82, i32 38, i32 37, i32 46, i32 61, i32 82, i32 70, i32 69, i32 62, i32 85, i32 65, i32 78, i32 73, i32 74, i32 69, i32 22, i32 30, i32 38, i32 37, i32 46, i32 54, i32 61, i32 62, i32 70, i32 76, i32 76, i32 65, i32 85, i32 73, i32 74, i32 30, i32 28, i32 50, i32 33, i32 35, i32 36, i32 43, i32 52, i32 51, i32 67, i32 59, i32 66, i32 75, i32 58, i32 49, i32 68, i32 77, i32 21, i32 45, i32 27, i32 44, i32 60, i32 42, i32 29, i32 34, i32 53, i32 26, i32 84, i32 93, i32 91, i32 54, i32 78, i32 14, i32 28, i32 50, i32 33, i32 35, i32 36, i32 43, i32 52, i32 51, i32 67, i32 59, i32 66, i32 75, i32 58, i32 49, i32 68, i32 77, i32 21, i32 45, i32 27, i32 44, i32 60, i32 42, i32 29, i32 34, i32 53, i32 26, i32 84, i32 93, i32 91, i32 14, i32 0], align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unhandled ps2 keyboard keysym 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps2kbd_softc*, i32, i32)* @ps2kbd_keysym_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2kbd_keysym_queue(%struct.ps2kbd_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ps2kbd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i32], align 16
  store %struct.ps2kbd_softc* %0, %struct.ps2kbd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = bitcast [128 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([128 x i32]* @__const.ps2kbd_keysym_queue.translation to i8*), i64 512, i1 false)
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 127
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %16 = call i32 @fifo_put(%struct.ps2kbd_softc* %15, i32 240)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fifo_put(%struct.ps2kbd_softc* %18, i32 %22)
  br label %378

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %373 [
    i32 65288, label %26
    i32 65289, label %35
    i32 65293, label %44
    i32 65307, label %53
    i32 65360, label %62
    i32 65361, label %73
    i32 65362, label %84
    i32 65363, label %95
    i32 65364, label %106
    i32 65365, label %117
    i32 65366, label %128
    i32 65367, label %139
    i32 65379, label %150
    i32 65421, label %161
    i32 65505, label %172
    i32 65506, label %181
    i32 65507, label %190
    i32 65508, label %199
    i32 65511, label %210
    i32 65512, label %211
    i32 65513, label %212
    i32 65027, label %221
    i32 65514, label %221
    i32 65515, label %232
    i32 65516, label %243
    i32 65470, label %254
    i32 65471, label %263
    i32 65472, label %272
    i32 65473, label %281
    i32 65474, label %290
    i32 65475, label %299
    i32 65476, label %308
    i32 65477, label %317
    i32 65478, label %326
    i32 65479, label %335
    i32 65480, label %344
    i32 65481, label %353
    i32 65535, label %362
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %31 = call i32 @fifo_put(%struct.ps2kbd_softc* %30, i32 240)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %34 = call i32 @fifo_put(%struct.ps2kbd_softc* %33, i32 102)
  br label %377

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %40 = call i32 @fifo_put(%struct.ps2kbd_softc* %39, i32 240)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %43 = call i32 @fifo_put(%struct.ps2kbd_softc* %42, i32 13)
  br label %377

44:                                               ; preds = %24
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %49 = call i32 @fifo_put(%struct.ps2kbd_softc* %48, i32 240)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %52 = call i32 @fifo_put(%struct.ps2kbd_softc* %51, i32 90)
  br label %377

53:                                               ; preds = %24
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %58 = call i32 @fifo_put(%struct.ps2kbd_softc* %57, i32 240)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %61 = call i32 @fifo_put(%struct.ps2kbd_softc* %60, i32 118)
  br label %377

62:                                               ; preds = %24
  %63 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %64 = call i32 @fifo_put(%struct.ps2kbd_softc* %63, i32 224)
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %69 = call i32 @fifo_put(%struct.ps2kbd_softc* %68, i32 240)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %72 = call i32 @fifo_put(%struct.ps2kbd_softc* %71, i32 108)
  br label %377

73:                                               ; preds = %24
  %74 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %75 = call i32 @fifo_put(%struct.ps2kbd_softc* %74, i32 224)
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %80 = call i32 @fifo_put(%struct.ps2kbd_softc* %79, i32 240)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %83 = call i32 @fifo_put(%struct.ps2kbd_softc* %82, i32 107)
  br label %377

84:                                               ; preds = %24
  %85 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %86 = call i32 @fifo_put(%struct.ps2kbd_softc* %85, i32 224)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %91 = call i32 @fifo_put(%struct.ps2kbd_softc* %90, i32 240)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %94 = call i32 @fifo_put(%struct.ps2kbd_softc* %93, i32 117)
  br label %377

95:                                               ; preds = %24
  %96 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %97 = call i32 @fifo_put(%struct.ps2kbd_softc* %96, i32 224)
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %102 = call i32 @fifo_put(%struct.ps2kbd_softc* %101, i32 240)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %105 = call i32 @fifo_put(%struct.ps2kbd_softc* %104, i32 116)
  br label %377

106:                                              ; preds = %24
  %107 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %108 = call i32 @fifo_put(%struct.ps2kbd_softc* %107, i32 224)
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %113 = call i32 @fifo_put(%struct.ps2kbd_softc* %112, i32 240)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %116 = call i32 @fifo_put(%struct.ps2kbd_softc* %115, i32 114)
  br label %377

117:                                              ; preds = %24
  %118 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %119 = call i32 @fifo_put(%struct.ps2kbd_softc* %118, i32 224)
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %124 = call i32 @fifo_put(%struct.ps2kbd_softc* %123, i32 240)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %127 = call i32 @fifo_put(%struct.ps2kbd_softc* %126, i32 125)
  br label %377

128:                                              ; preds = %24
  %129 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %130 = call i32 @fifo_put(%struct.ps2kbd_softc* %129, i32 224)
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %135 = call i32 @fifo_put(%struct.ps2kbd_softc* %134, i32 240)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %138 = call i32 @fifo_put(%struct.ps2kbd_softc* %137, i32 122)
  br label %377

139:                                              ; preds = %24
  %140 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %141 = call i32 @fifo_put(%struct.ps2kbd_softc* %140, i32 224)
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %146 = call i32 @fifo_put(%struct.ps2kbd_softc* %145, i32 240)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %149 = call i32 @fifo_put(%struct.ps2kbd_softc* %148, i32 105)
  br label %377

150:                                              ; preds = %24
  %151 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %152 = call i32 @fifo_put(%struct.ps2kbd_softc* %151, i32 224)
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %157 = call i32 @fifo_put(%struct.ps2kbd_softc* %156, i32 240)
  br label %158

158:                                              ; preds = %155, %150
  %159 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %160 = call i32 @fifo_put(%struct.ps2kbd_softc* %159, i32 112)
  br label %377

161:                                              ; preds = %24
  %162 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %163 = call i32 @fifo_put(%struct.ps2kbd_softc* %162, i32 224)
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %168 = call i32 @fifo_put(%struct.ps2kbd_softc* %167, i32 240)
  br label %169

169:                                              ; preds = %166, %161
  %170 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %171 = call i32 @fifo_put(%struct.ps2kbd_softc* %170, i32 90)
  br label %377

172:                                              ; preds = %24
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %177 = call i32 @fifo_put(%struct.ps2kbd_softc* %176, i32 240)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %180 = call i32 @fifo_put(%struct.ps2kbd_softc* %179, i32 18)
  br label %377

181:                                              ; preds = %24
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %186 = call i32 @fifo_put(%struct.ps2kbd_softc* %185, i32 240)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %189 = call i32 @fifo_put(%struct.ps2kbd_softc* %188, i32 89)
  br label %377

190:                                              ; preds = %24
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %195 = call i32 @fifo_put(%struct.ps2kbd_softc* %194, i32 240)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %198 = call i32 @fifo_put(%struct.ps2kbd_softc* %197, i32 20)
  br label %377

199:                                              ; preds = %24
  %200 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %201 = call i32 @fifo_put(%struct.ps2kbd_softc* %200, i32 224)
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %206 = call i32 @fifo_put(%struct.ps2kbd_softc* %205, i32 240)
  br label %207

207:                                              ; preds = %204, %199
  %208 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %209 = call i32 @fifo_put(%struct.ps2kbd_softc* %208, i32 20)
  br label %377

210:                                              ; preds = %24
  br label %377

211:                                              ; preds = %24
  br label %377

212:                                              ; preds = %24
  %213 = load i32, i32* %5, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %217 = call i32 @fifo_put(%struct.ps2kbd_softc* %216, i32 240)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %220 = call i32 @fifo_put(%struct.ps2kbd_softc* %219, i32 17)
  br label %377

221:                                              ; preds = %24, %24
  %222 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %223 = call i32 @fifo_put(%struct.ps2kbd_softc* %222, i32 224)
  %224 = load i32, i32* %5, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %221
  %227 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %228 = call i32 @fifo_put(%struct.ps2kbd_softc* %227, i32 240)
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %231 = call i32 @fifo_put(%struct.ps2kbd_softc* %230, i32 17)
  br label %377

232:                                              ; preds = %24
  %233 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %234 = call i32 @fifo_put(%struct.ps2kbd_softc* %233, i32 224)
  %235 = load i32, i32* %5, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  %238 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %239 = call i32 @fifo_put(%struct.ps2kbd_softc* %238, i32 240)
  br label %240

240:                                              ; preds = %237, %232
  %241 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %242 = call i32 @fifo_put(%struct.ps2kbd_softc* %241, i32 31)
  br label %377

243:                                              ; preds = %24
  %244 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %245 = call i32 @fifo_put(%struct.ps2kbd_softc* %244, i32 224)
  %246 = load i32, i32* %5, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %250 = call i32 @fifo_put(%struct.ps2kbd_softc* %249, i32 240)
  br label %251

251:                                              ; preds = %248, %243
  %252 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %253 = call i32 @fifo_put(%struct.ps2kbd_softc* %252, i32 39)
  br label %377

254:                                              ; preds = %24
  %255 = load i32, i32* %5, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %259 = call i32 @fifo_put(%struct.ps2kbd_softc* %258, i32 240)
  br label %260

260:                                              ; preds = %257, %254
  %261 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %262 = call i32 @fifo_put(%struct.ps2kbd_softc* %261, i32 5)
  br label %377

263:                                              ; preds = %24
  %264 = load i32, i32* %5, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %268 = call i32 @fifo_put(%struct.ps2kbd_softc* %267, i32 240)
  br label %269

269:                                              ; preds = %266, %263
  %270 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %271 = call i32 @fifo_put(%struct.ps2kbd_softc* %270, i32 6)
  br label %377

272:                                              ; preds = %24
  %273 = load i32, i32* %5, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %272
  %276 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %277 = call i32 @fifo_put(%struct.ps2kbd_softc* %276, i32 240)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %280 = call i32 @fifo_put(%struct.ps2kbd_softc* %279, i32 4)
  br label %377

281:                                              ; preds = %24
  %282 = load i32, i32* %5, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %286 = call i32 @fifo_put(%struct.ps2kbd_softc* %285, i32 240)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %289 = call i32 @fifo_put(%struct.ps2kbd_softc* %288, i32 12)
  br label %377

290:                                              ; preds = %24
  %291 = load i32, i32* %5, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %295 = call i32 @fifo_put(%struct.ps2kbd_softc* %294, i32 240)
  br label %296

296:                                              ; preds = %293, %290
  %297 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %298 = call i32 @fifo_put(%struct.ps2kbd_softc* %297, i32 3)
  br label %377

299:                                              ; preds = %24
  %300 = load i32, i32* %5, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %304 = call i32 @fifo_put(%struct.ps2kbd_softc* %303, i32 240)
  br label %305

305:                                              ; preds = %302, %299
  %306 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %307 = call i32 @fifo_put(%struct.ps2kbd_softc* %306, i32 11)
  br label %377

308:                                              ; preds = %24
  %309 = load i32, i32* %5, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %308
  %312 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %313 = call i32 @fifo_put(%struct.ps2kbd_softc* %312, i32 240)
  br label %314

314:                                              ; preds = %311, %308
  %315 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %316 = call i32 @fifo_put(%struct.ps2kbd_softc* %315, i32 131)
  br label %377

317:                                              ; preds = %24
  %318 = load i32, i32* %5, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %322 = call i32 @fifo_put(%struct.ps2kbd_softc* %321, i32 240)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %325 = call i32 @fifo_put(%struct.ps2kbd_softc* %324, i32 10)
  br label %377

326:                                              ; preds = %24
  %327 = load i32, i32* %5, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %331 = call i32 @fifo_put(%struct.ps2kbd_softc* %330, i32 240)
  br label %332

332:                                              ; preds = %329, %326
  %333 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %334 = call i32 @fifo_put(%struct.ps2kbd_softc* %333, i32 1)
  br label %377

335:                                              ; preds = %24
  %336 = load i32, i32* %5, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %335
  %339 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %340 = call i32 @fifo_put(%struct.ps2kbd_softc* %339, i32 240)
  br label %341

341:                                              ; preds = %338, %335
  %342 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %343 = call i32 @fifo_put(%struct.ps2kbd_softc* %342, i32 9)
  br label %377

344:                                              ; preds = %24
  %345 = load i32, i32* %5, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %349 = call i32 @fifo_put(%struct.ps2kbd_softc* %348, i32 240)
  br label %350

350:                                              ; preds = %347, %344
  %351 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %352 = call i32 @fifo_put(%struct.ps2kbd_softc* %351, i32 120)
  br label %377

353:                                              ; preds = %24
  %354 = load i32, i32* %5, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %353
  %357 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %358 = call i32 @fifo_put(%struct.ps2kbd_softc* %357, i32 240)
  br label %359

359:                                              ; preds = %356, %353
  %360 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %361 = call i32 @fifo_put(%struct.ps2kbd_softc* %360, i32 7)
  br label %377

362:                                              ; preds = %24
  %363 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %364 = call i32 @fifo_put(%struct.ps2kbd_softc* %363, i32 224)
  %365 = load i32, i32* %5, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %362
  %368 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %369 = call i32 @fifo_put(%struct.ps2kbd_softc* %368, i32 240)
  br label %370

370:                                              ; preds = %367, %362
  %371 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %4, align 8
  %372 = call i32 @fifo_put(%struct.ps2kbd_softc* %371, i32 113)
  br label %377

373:                                              ; preds = %24
  %374 = load i32, i32* @stderr, align 4
  %375 = load i32, i32* %6, align 4
  %376 = call i32 @fprintf(i32 %374, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %375)
  br label %377

377:                                              ; preds = %373, %370, %359, %350, %341, %332, %323, %314, %305, %296, %287, %278, %269, %260, %251, %240, %229, %218, %211, %210, %207, %196, %187, %178, %169, %158, %147, %136, %125, %114, %103, %92, %81, %70, %59, %50, %41, %32
  br label %378

378:                                              ; preds = %377, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fifo_put(%struct.ps2kbd_softc*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
