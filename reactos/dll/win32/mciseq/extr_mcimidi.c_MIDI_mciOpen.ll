; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i64, i32*, i32*, i32*, i32*, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i64*, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"(%d, %08X, %p)\0A\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCI_OPEN_SHAREABLE = common dso_local global i32 0, align 4
@MCIERR_HARDWARE = common dso_local global i32 0, align 4
@MCIERR_DEVICE_OPEN = common dso_local global i32 0, align 4
@MIDI_MAPPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"wDevID=%d (lpParams->wDeviceID=%d)\0A\00", align 1
@MCI_OPEN_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"MCI_OPEN_ELEMENT %s!\0A\00", align 1
@MMIO_ALLOCBUF = common dso_local global i32 0, align 4
@MMIO_READ = common dso_local global i32 0, align 4
@MMIO_DENYWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Can't find file %s!\0A\00", align 1
@MCIERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"hFile=%p\0A\00", align 1
@MCI_MODE_NOT_READY = common dso_local global i32 0, align 4
@MCI_FORMAT_MILLISECONDS = common dso_local global i32 0, align 4
@MCIERR_INVALID_FILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"ParentChunk ckid=%.4s fccType=%.4s cksize=%08X\0A\00", align 1
@FOURCC_RIFF = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@MMIO_FINDCHUNK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"... is a 'RMID' file\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Can't read 'MThd' header\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"hFile==0, setting #tracks to 0; is this correct ?\0A\00", align 1
@MCI_MODE_STOP = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, %struct.TYPE_12__*)* @MIDI_mciOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MIDI_mciOpen(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, %struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %21, i32* %4, align 4
  br label %280

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MCI_OPEN_SHAREABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @MCIERR_HARDWARE, align 4
  store i32 %28, i32* %4, align 4
  br label %280

29:                                               ; preds = %22
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MCIERR_DEVICE_OPEN, align 4
  store i32 %35, i32* %4, align 4
  br label %280

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 14
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @MIDI_MAPPER, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @MCI_OPEN_ELEMENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %127

61:                                               ; preds = %36
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @debugstr_w(i64* %64)
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %126

71:                                               ; preds = %61
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %126

78:                                               ; preds = %71
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = ptrtoint i64* %81 to i32
  %83 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %84 = load i32, i32* @MMIO_READ, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MMIO_DENYWRITE, align 4
  %87 = or i32 %85, %86
  %88 = call i64 @mmioOpenW(i32 %82, i32* null, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %78
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = call i32 @debugstr_w(i64* %98)
  %100 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* @MCIERR_FILE_NOT_FOUND, align 4
  store i32 %105, i32* %4, align 4
  br label %280

106:                                              ; preds = %78
  %107 = call i32 (...) @GetProcessHeap()
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = call i32 @lstrlenW(i64* %110)
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32* @HeapAlloc(i32 %107, i32 0, i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 7
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = call i32 @lstrcpyW(i32* %121, i64* %124)
  br label %126

126:                                              ; preds = %106, %71, %61
  br label %127

127:                                              ; preds = %126, %36
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 6
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  store i32* null, i32** %135, align 8
  %136 = load i32, i32* @MCI_MODE_NOT_READY, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @MCI_FORMAT_MILLISECONDS, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %212

146:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @mmioDescend(i64 %149, %struct.TYPE_11__* %9, %struct.TYPE_11__* null, i32 0)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @MCIERR_INVALID_FILE, align 4
  store i32 %153, i32* %8, align 4
  br label %211

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %156 = ptrtoint i64* %155 to i32
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %158 = ptrtoint i64* %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %158, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @FOURCC_RIFF, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %199

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @mmioFOURCC(i8 signext 82, i8 signext 77, i8 signext 73, i8 signext 68)
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %199

171:                                              ; preds = %166
  %172 = call i64 @mmioFOURCC(i8 signext 100, i8 signext 97, i8 signext 116, i8 signext 97)
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  %182 = and i32 %181, -2
  %183 = add nsw i32 %178, %182
  %184 = load i32, i32* @SEEK_SET, align 4
  %185 = call i32 @mmioSeek(i64 %176, i32 %183, i32 %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @MMIO_FINDCHUNK, align 4
  %190 = call i64 @mmioDescend(i64 %188, %struct.TYPE_11__* %10, %struct.TYPE_11__* %9, i32 %189)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %171
  %193 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %11, align 4
  br label %198

196:                                              ; preds = %171
  %197 = load i32, i32* @MCIERR_INVALID_FILE, align 4
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %196, %192
  br label %199

199:                                              ; preds = %198, %166, %154
  %200 = load i32, i32* %8, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %204 = load i32, i32* %11, align 4
  %205 = call i64 @MIDI_mciReadMThd(%struct.TYPE_10__* %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %209 = load i32, i32* @MCIERR_INVALID_FILE, align 4
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %207, %202, %199
  br label %211

211:                                              ; preds = %210, %152
  br label %220

212:                                              ; preds = %127
  %213 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 10
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 9
  store i64 0, i64* %217, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 2
  store i32 1, i32* %219, align 8
  br label %220

220:                                              ; preds = %212, %211
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %260

223:                                              ; preds = %220
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, -1
  store i64 %227, i64* %225, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %223
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @mmioClose(i64 %235, i32 0)
  br label %237

237:                                              ; preds = %232, %223
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  store i64 0, i64* %239, align 8
  %240 = call i32 (...) @GetProcessHeap()
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 8
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @HeapFree(i32 %240, i32 0, i32* %243)
  %245 = call i32 (...) @GetProcessHeap()
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 7
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @HeapFree(i32 %245, i32 0, i32* %248)
  %250 = call i32 (...) @GetProcessHeap()
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 6
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @HeapFree(i32 %250, i32 0, i32* %253)
  %255 = call i32 (...) @GetProcessHeap()
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 5
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @HeapFree(i32 %255, i32 0, i32* %258)
  br label %278

260:                                              ; preds = %220
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = load i32, i32* @MCI_MODE_STOP, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @MCI_NOTIFY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %260
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %275 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %276 = call i32 @MIDI_mciNotify(i32 %273, %struct.TYPE_10__* %274, i32 %275)
  br label %277

277:                                              ; preds = %270, %260
  br label %278

278:                                              ; preds = %277, %237
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %4, align 4
  br label %280

280:                                              ; preds = %278, %95, %34, %27, %20
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i64 @mmioOpenW(i32, i32*, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i64*) #1

declare dso_local i32 @lstrcpyW(i32*, i64*) #1

declare dso_local i64 @mmioDescend(i64, %struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mmioSeek(i64, i32, i32) #1

declare dso_local i64 @MIDI_mciReadMThd(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mmioClose(i64, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @MIDI_mciNotify(i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
