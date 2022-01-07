; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_vbe.c_VbeSetExtendedRegisters.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_vbe.c_VbeSetExtendedRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32*, i32 }

@VGA_CRTC_INDEX_COLOR = common dso_local global i32 0, align 4
@VGA_CRTC_INDEX_MONO = common dso_local global i32 0, align 4
@Bda = common dso_local global %struct.TYPE_5__* null, align 8
@VGA_AC_CONTROL_REG = common dso_local global i64 0, align 8
@VGA_AC_CONTROL_BLINK = common dso_local global i32 0, align 4
@VGA_SEQ_INDEX = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_REG = common dso_local global i32 0, align 4
@VGA_SEQ_DATA = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_SD = common dso_local global i32 0, align 4
@VGA_MISC_WRITE = common dso_local global i32 0, align 4
@VGA_SEQ_RESET_REG = common dso_local global i32 0, align 4
@VGA_SEQ_RESET_AR = common dso_local global i32 0, align 4
@SVGA_SEQ_MAX_REG = common dso_local global i64 0, align 8
@VGA_SEQ_MAX_REG = common dso_local global i64 0, align 8
@SVGA_SEQ_UNLOCK_REG = common dso_local global i64 0, align 8
@VGA_SEQ_RESET_SR = common dso_local global i32 0, align 4
@VGA_CRTC_INDEX = common dso_local global i32 0, align 4
@VGA_CRTC_END_HORZ_BLANKING_REG = common dso_local global i64 0, align 8
@VGA_CRTC_DATA = common dso_local global i32 0, align 4
@VGA_CRTC_END_VERT_RETRACE_REG = common dso_local global i64 0, align 8
@SVGA_CRTC_MAX_REG = common dso_local global i64 0, align 8
@SVGA_CRTC_UNUSED0_REG = common dso_local global i64 0, align 8
@SVGA_CRTC_UNUSED6_REG = common dso_local global i64 0, align 8
@SVGA_CRTC_UNUSED7_REG = common dso_local global i64 0, align 8
@SVGA_GC_MAX_REG = common dso_local global i64 0, align 8
@SVGA_GC_UNUSED0_REG = common dso_local global i64 0, align 8
@SVGA_GC_UNUSED11_REG = common dso_local global i64 0, align 8
@SVGA_GC_UNUSED1_REG = common dso_local global i64 0, align 8
@SVGA_GC_UNUSED10_REG = common dso_local global i64 0, align 8
@VGA_GC_INDEX = common dso_local global i32 0, align 4
@VGA_GC_DATA = common dso_local global i32 0, align 4
@VGA_AC_MAX_REG = common dso_local global i64 0, align 8
@VGA_INSTAT1_READ = common dso_local global i32 0, align 4
@VGA_AC_INDEX = common dso_local global i32 0, align 4
@VGA_AC_WRITE = common dso_local global i32 0, align 4
@VGA_DAC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @VbeSetExtendedRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VbeSetExtendedRegisters(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = call i32 (...) @getIF()
  store i32 %6, i32* %5, align 4
  %7 = call i32 @setIF(i32 0)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @VGA_CRTC_INDEX_COLOR, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VGA_CRTC_INDEX_MONO, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 253
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = shl i32 %31, 1
  %33 = or i32 %24, %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 251
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = shl i32 %46, 1
  %48 = or i32 %39, %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @VGA_AC_CONTROL_REG, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VGA_AC_CONTROL_BLINK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %17
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 32
  store i32 %64, i32* %62, align 4
  br label %70

65:                                               ; preds = %17
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -33
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %72 = load i32, i32* @VGA_SEQ_CLOCK_REG, align 4
  %73 = call i32 @IOWriteB(i32 %71, i32 %72)
  %74 = load i32, i32* @VGA_SEQ_DATA, align 4
  %75 = load i32, i32* @VGA_SEQ_DATA, align 4
  %76 = call i32 @IOReadB(i32 %75)
  %77 = load i32, i32* @VGA_SEQ_CLOCK_SD, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @IOWriteB(i32 %74, i32 %78)
  %80 = load i32, i32* @VGA_MISC_WRITE, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @IOWriteB(i32 %80, i32 %83)
  %85 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %86 = load i32, i32* @VGA_SEQ_RESET_REG, align 4
  %87 = call i32 @IOWriteB(i32 %85, i32 %86)
  %88 = load i32, i32* @VGA_SEQ_DATA, align 4
  %89 = load i32, i32* @VGA_SEQ_RESET_AR, align 4
  %90 = call i32 @IOWriteB(i32 %88, i32 %89)
  store i64 1, i64* %4, align 8
  br label %91

91:                                               ; preds = %117, %70
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @SVGA_SEQ_MAX_REG, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @VGA_SEQ_MAX_REG, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @SVGA_SEQ_UNLOCK_REG, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %105 = load i64, i64* %4, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @IOWriteB(i32 %104, i32 %106)
  %108 = load i32, i32* @VGA_SEQ_DATA, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %4, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @IOWriteB(i32 %108, i32 %114)
  br label %116

116:                                              ; preds = %103, %99, %95
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %4, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %4, align 8
  br label %91

120:                                              ; preds = %91
  %121 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %122 = load i32, i32* @VGA_SEQ_RESET_REG, align 4
  %123 = call i32 @IOWriteB(i32 %121, i32 %122)
  %124 = load i32, i32* @VGA_SEQ_DATA, align 4
  %125 = load i32, i32* @VGA_SEQ_RESET_SR, align 4
  %126 = load i32, i32* @VGA_SEQ_RESET_AR, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @IOWriteB(i32 %124, i32 %127)
  %129 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %130 = load i64, i64* @VGA_CRTC_END_HORZ_BLANKING_REG, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @IOWriteB(i32 %129, i32 %131)
  %133 = load i32, i32* @VGA_CRTC_DATA, align 4
  %134 = load i32, i32* @VGA_CRTC_DATA, align 4
  %135 = call i32 @IOReadB(i32 %134)
  %136 = or i32 %135, 128
  %137 = call i32 @IOWriteB(i32 %133, i32 %136)
  %138 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %139 = load i64, i64* @VGA_CRTC_END_VERT_RETRACE_REG, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @IOWriteB(i32 %138, i32 %140)
  %142 = load i32, i32* @VGA_CRTC_DATA, align 4
  %143 = load i32, i32* @VGA_CRTC_DATA, align 4
  %144 = call i32 @IOReadB(i32 %143)
  %145 = and i32 %144, -129
  %146 = call i32 @IOWriteB(i32 %142, i32 %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @VGA_CRTC_END_HORZ_BLANKING_REG, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, 128
  store i32 %153, i32* %151, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @VGA_CRTC_END_VERT_RETRACE_REG, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, -129
  store i32 %160, i32* %158, align 4
  store i64 0, i64* %4, align 8
  br label %161

161:                                              ; preds = %191, %120
  %162 = load i64, i64* %4, align 8
  %163 = load i64, i64* @SVGA_CRTC_MAX_REG, align 8
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %165, label %194

165:                                              ; preds = %161
  %166 = load i64, i64* %4, align 8
  %167 = load i64, i64* @SVGA_CRTC_UNUSED0_REG, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i64, i64* %4, align 8
  %171 = load i64, i64* @SVGA_CRTC_UNUSED6_REG, align 8
  %172 = icmp ugt i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %169, %165
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* @SVGA_CRTC_UNUSED7_REG, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %179 = load i64, i64* %4, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @IOWriteB(i32 %178, i32 %180)
  %182 = load i32, i32* @VGA_CRTC_DATA, align 4
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* %4, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @IOWriteB(i32 %182, i32 %188)
  br label %190

190:                                              ; preds = %177, %173, %169
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %4, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %4, align 8
  br label %161

194:                                              ; preds = %161
  store i64 0, i64* %4, align 8
  br label %195

195:                                              ; preds = %229, %194
  %196 = load i64, i64* %4, align 8
  %197 = load i64, i64* @SVGA_GC_MAX_REG, align 8
  %198 = icmp ult i64 %196, %197
  br i1 %198, label %199, label %232

199:                                              ; preds = %195
  %200 = load i64, i64* %4, align 8
  %201 = load i64, i64* @SVGA_GC_UNUSED0_REG, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %228

203:                                              ; preds = %199
  %204 = load i64, i64* %4, align 8
  %205 = load i64, i64* @SVGA_GC_UNUSED11_REG, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %203
  %208 = load i64, i64* %4, align 8
  %209 = load i64, i64* @SVGA_GC_UNUSED1_REG, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load i64, i64* %4, align 8
  %213 = load i64, i64* @SVGA_GC_UNUSED10_REG, align 8
  %214 = icmp ugt i64 %212, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %211, %207
  %216 = load i32, i32* @VGA_GC_INDEX, align 4
  %217 = load i64, i64* %4, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 @IOWriteB(i32 %216, i32 %218)
  %220 = load i32, i32* @VGA_GC_DATA, align 4
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* %4, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @IOWriteB(i32 %220, i32 %226)
  br label %228

228:                                              ; preds = %215, %211, %203, %199
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %4, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %4, align 8
  br label %195

232:                                              ; preds = %195
  store i64 0, i64* %4, align 8
  br label %233

233:                                              ; preds = %252, %232
  %234 = load i64, i64* %4, align 8
  %235 = load i64, i64* @VGA_AC_MAX_REG, align 8
  %236 = icmp ult i64 %234, %235
  br i1 %236, label %237, label %255

237:                                              ; preds = %233
  %238 = load i32, i32* @VGA_INSTAT1_READ, align 4
  %239 = call i32 @IOReadB(i32 %238)
  %240 = load i32, i32* @VGA_AC_INDEX, align 4
  %241 = load i64, i64* %4, align 8
  %242 = trunc i64 %241 to i32
  %243 = call i32 @IOWriteB(i32 %240, i32 %242)
  %244 = load i32, i32* @VGA_AC_WRITE, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %4, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @IOWriteB(i32 %244, i32 %250)
  br label %252

252:                                              ; preds = %237
  %253 = load i64, i64* %4, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %4, align 8
  br label %233

255:                                              ; preds = %233
  store i64 0, i64* %4, align 8
  br label %256

256:                                              ; preds = %262, %255
  %257 = load i64, i64* %4, align 8
  %258 = icmp ult i64 %257, 4
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i32, i32* @VGA_DAC_MASK, align 4
  %261 = call i32 @IOReadB(i32 %260)
  br label %262

262:                                              ; preds = %259
  %263 = load i64, i64* %4, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %4, align 8
  br label %256

265:                                              ; preds = %256
  %266 = load i32, i32* @VGA_DAC_MASK, align 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @IOWriteB(i32 %266, i32 %269)
  %271 = load i32, i32* @VGA_DAC_MASK, align 4
  %272 = call i32 @IOWriteB(i32 %271, i32 255)
  %273 = load i32, i32* @VGA_INSTAT1_READ, align 4
  %274 = call i32 @IOReadB(i32 %273)
  %275 = load i32, i32* @VGA_AC_INDEX, align 4
  %276 = call i32 @IOWriteB(i32 %275, i32 32)
  %277 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %278 = load i32, i32* @VGA_SEQ_CLOCK_REG, align 4
  %279 = call i32 @IOWriteB(i32 %277, i32 %278)
  %280 = load i32, i32* @VGA_SEQ_DATA, align 4
  %281 = load i32, i32* @VGA_SEQ_DATA, align 4
  %282 = call i32 @IOReadB(i32 %281)
  %283 = load i32, i32* @VGA_SEQ_CLOCK_SD, align 4
  %284 = xor i32 %283, -1
  %285 = and i32 %282, %284
  %286 = call i32 @IOWriteB(i32 %280, i32 %285)
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @setIF(i32 %287)
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @getIF(...) #1

declare dso_local i32 @setIF(i32) #1

declare dso_local i32 @IOWriteB(i32, i32) #1

declare dso_local i32 @IOReadB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
