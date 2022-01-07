; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciReadMThd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciReadMThd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"(%p, %08X);\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't seek at %08X begin of 'MThd'\0A\00", align 1
@MCIERR_INVALID_FILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't synchronize on 'MThd' !\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"toberead=0x%08X, wFormat=0x%04X nTracks=0x%04X nDivision=0x%04X\0A\00", align 1
@.str.4 = private unnamed_addr constant [120 x i8] c"Handling SMPTE time in MIDI files has not been tested\0APlease report to comp.emulators.ms-windows.wine with MIDI file !\0A\00", align 1
@MCI_FORMAT_SMPTE_24 = common dso_local global i32 0, align 4
@MCI_FORMAT_SMPTE_25 = common dso_local global i32 0, align 4
@MCI_FORMAT_SMPTE_30DROP = common dso_local global i32 0, align 4
@MCI_FORMAT_SMPTE_30 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Unsupported number of frames %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Unsupported number of sub-frames %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Number of division is 0, can't support that !!\0A\00", align 1
@MCI_FORMAT_MILLISECONDS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [65 x i8] c"Got type 0 file whose number of track is not 1. Setting it to 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [93 x i8] c"Handling MIDI files which format = %d is not (yet) supported\0APlease report with MIDI file !\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Truncating MIDI file with %u tracks\0A\00", align 1
@MCIERR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"Size of MThd > 6, skipping %d extra bytes\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"Can't read 'MTrk' header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64)* @MIDI_mciReadMThd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MIDI_mciReadMThd(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = ptrtoint %struct.TYPE_8__* %9 to i64
  %11 = load i64, i64* %5, align 8
  %12 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i64 @mmioSeek(i32 %15, i64 %16, i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %24, i64* %3, align 8
  br label %239

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = ptrtoint i64* %7 to i32
  %30 = call i64 @mmioRead(i32 %28, i32 %29, i64 8)
  %31 = icmp ne i64 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %33, i64* %3, align 8
  br label %239

34:                                               ; preds = %25
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @mmioFOURCC(i8 signext 77, i8 signext 84, i8 signext 104, i8 signext 100)
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %40, i64* %3, align 8
  br label %239

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = call i64 @MIDI_mciReadLong(%struct.TYPE_8__* %42, i64* %6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %46, 24
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %41
  %49 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %49, i64* %3, align 8
  br label %239

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i64 @MIDI_mciReadWord(%struct.TYPE_8__* %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = call i64 @MIDI_mciReadWord(%struct.TYPE_8__* %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = call i64 @MIDI_mciReadWord(%struct.TYPE_8__* %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %56, %50
  %69 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %69, i64* %3, align 8
  br label %239

70:                                               ; preds = %62
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 32768
  br i1 %85, label %86, label %131

86:                                               ; preds = %70
  %87 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @HIBYTE(i32 %90)
  switch i32 %91, label %108 [
    i32 232, label %92
    i32 231, label %96
    i32 227, label %100
    i32 226, label %104
  ]

92:                                               ; preds = %86
  %93 = load i32, i32* @MCI_FORMAT_SMPTE_24, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  br label %118

96:                                               ; preds = %86
  %97 = load i32, i32* @MCI_FORMAT_SMPTE_25, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  br label %118

100:                                              ; preds = %86
  %101 = load i32, i32* @MCI_FORMAT_SMPTE_30DROP, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  br label %118

104:                                              ; preds = %86
  %105 = load i32, i32* @MCI_FORMAT_SMPTE_30, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  br label %118

108:                                              ; preds = %86
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @HIBYTE(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 0, %114
  %116 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %117, i64* %3, align 8
  br label %239

118:                                              ; preds = %104, %100, %96, %92
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @LOBYTE(i32 %121)
  switch i32 %122, label %124 [
    i32 4, label %123
    i32 8, label %123
    i32 10, label %123
    i32 80, label %123
    i32 100, label %123
  ]

123:                                              ; preds = %118, %118, %118, %118, %118
  br label %124

124:                                              ; preds = %118, %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @LOBYTE(i32 %127)
  %129 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %130, i64* %3, align 8
  br label %239

131:                                              ; preds = %70
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %138 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %138, i64* %3, align 8
  br label %239

139:                                              ; preds = %131
  %140 = load i32, i32* @MCI_FORMAT_MILLISECONDS, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %159 [
    i32 0, label %148
    i32 1, label %158
    i32 2, label %158
  ]

148:                                              ; preds = %144
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %153, %148
  br label %165

158:                                              ; preds = %144, %144
  br label %165

159:                                              ; preds = %144
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.9, i64 0, i64 0), i32 %162)
  %164 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %164, i64* %3, align 8
  br label %239

165:                                              ; preds = %158, %157
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 128
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %173)
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i32 128, i32* %176, align 4
  br label %177

177:                                              ; preds = %170, %165
  %178 = call i32 (...) @GetProcessHeap()
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 4, %182
  %184 = trunc i64 %183 to i32
  %185 = call %struct.TYPE_9__* @HeapAlloc(i32 %178, i32 0, i32 %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  store %struct.TYPE_9__* %185, %struct.TYPE_9__** %187, align 8
  %188 = icmp eq %struct.TYPE_9__* %185, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %177
  %190 = load i64, i64* @MCIERR_OUT_OF_MEMORY, align 8
  store i64 %190, i64* %3, align 8
  br label %239

191:                                              ; preds = %177
  %192 = load i64, i64* %6, align 8
  %193 = sub i64 %192, 24
  store i64 %193, i64* %6, align 8
  %194 = load i64, i64* %6, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load i64, i64* %6, align 8
  %198 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i64 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = load i64, i64* %6, align 8
  %203 = load i32, i32* @SEEK_CUR, align 4
  %204 = call i64 @mmioSeek(i32 %201, i64 %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %191
  store i64 0, i64* %8, align 8
  br label %206

206:                                              ; preds = %233, %205
  %207 = load i64, i64* %8, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = icmp ult i64 %207, %211
  br i1 %212, label %213, label %236

213:                                              ; preds = %206
  %214 = load i64, i64* %8, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = load i64, i64* %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store i64 %214, i64* %220, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = load i64, i64* %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 %225
  %227 = call i64 @MIDI_mciReadMTrk(%struct.TYPE_8__* %221, %struct.TYPE_9__* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %213
  %230 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %231 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %231, i64* %3, align 8
  br label %239

232:                                              ; preds = %213
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %8, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %8, align 8
  br label %206

236:                                              ; preds = %206
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 3
  store i32 500000, i32* %238, align 4
  store i64 0, i64* %3, align 8
  br label %239

239:                                              ; preds = %236, %229, %189, %159, %136, %124, %108, %68, %48, %38, %32, %21
  %240 = load i64, i64* %3, align 8
  ret i64 %240
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i64 @mmioSeek(i32, i64, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @mmioRead(i32, i32, i64) #1

declare dso_local i64 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @MIDI_mciReadLong(%struct.TYPE_8__*, i64*) #1

declare dso_local i64 @MIDI_mciReadWord(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local %struct.TYPE_9__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @MIDI_mciReadMTrk(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
