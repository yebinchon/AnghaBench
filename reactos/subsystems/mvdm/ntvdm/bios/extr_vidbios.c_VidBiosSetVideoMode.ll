; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VidBiosSetVideoMode.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VidBiosSetVideoMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [77 x i8] c"Switching to mode %02Xh (%02Xh) %s clearing the screen; VgaRegisters = 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@VideoModes = common dso_local global %struct.TYPE_6__* null, align 8
@BIOS_MAX_VIDEO_MODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VbeInitialized = common dso_local global i64 0, align 8
@Bda = common dso_local global %struct.TYPE_7__* null, align 8
@VGA_CRTC_INDEX = common dso_local global i32 0, align 4
@VGA_CRTC_START_ADDR_LOW_REG = common dso_local global i32 0, align 4
@VGA_CRTC_DATA = common dso_local global i32 0, align 4
@VGA_CRTC_START_ADDR_HIGH_REG = common dso_local global i32 0, align 4
@Font8x8 = common dso_local global i32 0, align 4
@VGA_FONT_CHARACTERS = common dso_local global i32 0, align 4
@FONT_8x8_OFFSET = common dso_local global i32 0, align 4
@VIDEO_BIOS_DATA_SEG = common dso_local global i32 0, align 4
@BaseAddress = common dso_local global i32 0, align 4
@Font8x14 = common dso_local global i32 0, align 4
@FONT_8x14_OFFSET = common dso_local global i32 0, align 4
@Font8x16 = common dso_local global i32 0, align 4
@FONT_8x16_OFFSET = common dso_local global i32 0, align 4
@BIOS_MAX_PAGES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @VidBiosSetVideoMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VidBiosSetVideoMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 128
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 127
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VideoModes, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DPRINT1(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* %23, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @BIOS_MAX_VIDEO_MODE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @VbeSetExtendedVideoMode(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %251

37:                                               ; preds = %1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VideoModes, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @VgaSetRegisters(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %251

48:                                               ; preds = %37
  %49 = load i64, i64* @VbeInitialized, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BIOS_MAX_VIDEO_MODE, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (...) @VbeResetExtendedRegisters()
  br label %59

59:                                               ; preds = %57, %51, %48
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @VgaChangePalette(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i32 (...) @VgaClearMemory()
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VideoModes, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 127
  %93 = or i32 96, %92
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 128, i32 0
  %98 = or i32 %93, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  store i32 249, i32* %102, align 4
  %103 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %104 = load i32, i32* @VGA_CRTC_START_ADDR_LOW_REG, align 4
  %105 = call i32 @IOWriteB(i32 %103, i32 %104)
  %106 = load i32, i32* @VGA_CRTC_DATA, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @LOBYTE(i32 %109)
  %111 = call i32 @IOWriteB(i32 %106, i32 %110)
  %112 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %113 = load i32, i32* @VGA_CRTC_START_ADDR_HIGH_REG, align 4
  %114 = call i32 @IOWriteB(i32 %112, i32 %113)
  %115 = load i32, i32* @VGA_CRTC_DATA, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @HIBYTE(i32 %118)
  %120 = call i32 @IOWriteB(i32 %115, i32 %119)
  %121 = call i64 (...) @VgaGetDisplayResolution()
  %122 = bitcast %struct.TYPE_5__* %8 to i64*
  store i64 %121, i64* %122, align 4
  %123 = bitcast %struct.TYPE_5__* %5 to i8*
  %124 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 8, i1 false)
  %125 = load i32, i32* %3, align 4
  %126 = call i64 @IS_TEXT_MODE(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %66
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VideoModes, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, %134
  store i32 %137, i32* %135, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VideoModes, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %128, %66
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VideoModes, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Bda, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  switch i32 %167, label %225 [
    i32 8, label %168
    i32 14, label %187
    i32 16, label %206
  ]

168:                                              ; preds = %147
  %169 = load i32, i32* %3, align 4
  %170 = call i64 @IS_TEXT_MODE(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i32, i32* @Font8x8, align 4
  %174 = load i32, i32* @Font8x8, align 4
  %175 = call i32 @ARRAYSIZE(i32 %174)
  %176 = load i32, i32* @VGA_FONT_CHARACTERS, align 4
  %177 = sdiv i32 %175, %176
  %178 = call i32 @VgaWriteTextModeFont(i32 0, i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %172, %168
  %180 = load i32, i32* @FONT_8x8_OFFSET, align 4
  %181 = load i32, i32* @VIDEO_BIOS_DATA_SEG, align 4
  %182 = call i32 @MAKELONG(i32 %180, i32 %181)
  %183 = load i32, i32* @BaseAddress, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i32*
  %186 = getelementptr inbounds i32, i32* %185, i64 67
  store i32 %182, i32* %186, align 4
  br label %225

187:                                              ; preds = %147
  %188 = load i32, i32* %3, align 4
  %189 = call i64 @IS_TEXT_MODE(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = load i32, i32* @Font8x14, align 4
  %193 = load i32, i32* @Font8x14, align 4
  %194 = call i32 @ARRAYSIZE(i32 %193)
  %195 = load i32, i32* @VGA_FONT_CHARACTERS, align 4
  %196 = sdiv i32 %194, %195
  %197 = call i32 @VgaWriteTextModeFont(i32 0, i32 %192, i32 %196)
  br label %198

198:                                              ; preds = %191, %187
  %199 = load i32, i32* @FONT_8x14_OFFSET, align 4
  %200 = load i32, i32* @VIDEO_BIOS_DATA_SEG, align 4
  %201 = call i32 @MAKELONG(i32 %199, i32 %200)
  %202 = load i32, i32* @BaseAddress, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i32*
  %205 = getelementptr inbounds i32, i32* %204, i64 67
  store i32 %201, i32* %205, align 4
  br label %225

206:                                              ; preds = %147
  %207 = load i32, i32* %3, align 4
  %208 = call i64 @IS_TEXT_MODE(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load i32, i32* @Font8x16, align 4
  %212 = load i32, i32* @Font8x16, align 4
  %213 = call i32 @ARRAYSIZE(i32 %212)
  %214 = load i32, i32* @VGA_FONT_CHARACTERS, align 4
  %215 = sdiv i32 %213, %214
  %216 = call i32 @VgaWriteTextModeFont(i32 0, i32 %211, i32 %215)
  br label %217

217:                                              ; preds = %210, %206
  %218 = load i32, i32* @FONT_8x16_OFFSET, align 4
  %219 = load i32, i32* @VIDEO_BIOS_DATA_SEG, align 4
  %220 = call i32 @MAKELONG(i32 %218, i32 %219)
  %221 = load i32, i32* @BaseAddress, align 4
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to i32*
  %224 = getelementptr inbounds i32, i32* %223, i64 67
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %147, %217, %198, %179
  %226 = load i32, i32* %3, align 4
  %227 = call i64 @IS_TEXT_MODE(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = call i32 @MAKEWORD(i32 7, i32 6)
  %231 = call i32 @VidBiosSetCursorShape(i32 %230)
  br label %232

232:                                              ; preds = %229, %225
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %240, %232
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @BIOS_MAX_PAGES, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @VidBiosSetCursorPosition(i32 0, i32 0, i32 %238)
  br label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %4, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %4, align 4
  br label %233

243:                                              ; preds = %233
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %243
  %247 = call i32 (...) @VidBiosClearScreen()
  br label %248

248:                                              ; preds = %246, %243
  %249 = call i32 (...) @VgaRefreshDisplay()
  %250 = load i32, i32* @TRUE, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %248, %46, %34
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @DPRINT1(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @VbeSetExtendedVideoMode(i32) #1

declare dso_local i32 @VgaSetRegisters(i32) #1

declare dso_local i32 @VbeResetExtendedRegisters(...) #1

declare dso_local i32 @VgaChangePalette(i32) #1

declare dso_local i32 @VgaClearMemory(...) #1

declare dso_local i32 @IOWriteB(i32, i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i64 @VgaGetDisplayResolution(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_TEXT_MODE(i32) #1

declare dso_local i32 @VgaWriteTextModeFont(i32, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @VidBiosSetCursorShape(i32) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @VidBiosSetCursorPosition(i32, i32, i32) #1

declare dso_local i32 @VidBiosClearScreen(...) #1

declare dso_local i32 @VgaRefreshDisplay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
