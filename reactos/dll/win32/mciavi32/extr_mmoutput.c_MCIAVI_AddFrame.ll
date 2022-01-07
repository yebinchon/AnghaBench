; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_mmoutput.c_MCIAVI_AddFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_mmoutput.c_MCIAVI_AddFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.MMIOPos*, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.MMIOPos = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.AviListBuild = type { i32, i32, i32, i32, i32 }

@ckidAVIPADDING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wrongly encoded stream #\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ckid %4.4s (stream #%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"data belongs to another video stream #%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Adding video frame[%d]: %d bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Too many video frames\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"data belongs to another audio stream #%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Adding audio frame[%d]: %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Wave chunk without wave format... discarding\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unknown frame type %4.4s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.AviListBuild*)* @MCIAVI_AddFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCIAVI_AddFrame(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.AviListBuild* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.AviListBuild*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.MMIOPos*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.AviListBuild* %2, %struct.AviListBuild** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ckidAVIPADDING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %4, align 4
  br label %307

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = bitcast i64* %22 to i8*
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @isxdigit(i8 signext %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isxdigit(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29, %20
  %36 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %307

38:                                               ; preds = %29
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 57
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  br label %58

50:                                               ; preds = %38
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = call signext i8 @tolower(i8 signext %53)
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 97
  %57 = add nsw i32 %56, 10
  br label %58

58:                                               ; preds = %50, %44
  %59 = phi i32 [ %49, %44 ], [ %57, %50 ]
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 4
  store i32 %61, i32* %9, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 57
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 48
  br label %81

73:                                               ; preds = %58
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = call signext i8 @tolower(i8 signext %76)
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 97
  %80 = add nsw i32 %79, 10
  br label %81

81:                                               ; preds = %73, %67
  %82 = phi i32 [ %72, %67 ], [ %80, %73 ]
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = ptrtoint i64* %86 to i32
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @TWOCCFromFOURCC(i64 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @TWOCCFromFOURCC(i64 %99)
  %101 = icmp eq i32 %94, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %81
  store i32 130, i32* %10, align 4
  br label %113

103:                                              ; preds = %81
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @LOWORD(i32 %108)
  %110 = icmp eq i32 %104, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 130, i32* %10, align 4
  br label %112

112:                                              ; preds = %111, %103
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, i32* %10, align 4
  switch i32 %114, label %300 [
    i32 131, label %115
    i32 130, label %115
    i32 129, label %115
    i32 128, label %186
  ]

115:                                              ; preds = %113, %113, %113
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %4, align 4
  br label %307

125:                                              ; preds = %115
  %126 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %127 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %134 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %183

140:                                              ; preds = %125
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %148 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  store i32 %143, i32* %152, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %160 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %155, i32* %164, align 4
  %165 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %166 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %140
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %177 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %172, %140
  %179 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %180 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %185

183:                                              ; preds = %125
  %184 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %178
  br label %305

186:                                              ; preds = %113
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %187, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load i32, i32* %9, align 4
  %194 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %4, align 4
  br label %307

196:                                              ; preds = %186
  %197 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %198 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %199, i32 %202)
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %297

208:                                              ; preds = %196
  %209 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %210 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %213 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp sge i32 %211, %214
  br i1 %215, label %216, label %254

216:                                              ; preds = %208
  %217 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %218 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 32
  store i32 %220, i32* %11, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 3
  %223 = load %struct.MMIOPos*, %struct.MMIOPos** %222, align 8
  %224 = icmp ne %struct.MMIOPos* %223, null
  br i1 %224, label %232, label %225

225:                                              ; preds = %216
  %226 = call i32 (...) @GetProcessHeap()
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 %228, 8
  %230 = trunc i64 %229 to i32
  %231 = call %struct.MMIOPos* @HeapAlloc(i32 %226, i32 0, i32 %230)
  store %struct.MMIOPos* %231, %struct.MMIOPos** %12, align 8
  br label %242

232:                                              ; preds = %216
  %233 = call i32 (...) @GetProcessHeap()
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 3
  %236 = load %struct.MMIOPos*, %struct.MMIOPos** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = mul i64 %238, 8
  %240 = trunc i64 %239 to i32
  %241 = call %struct.MMIOPos* @HeapReAlloc(i32 %233, i32 0, %struct.MMIOPos* %236, i32 %240)
  store %struct.MMIOPos* %241, %struct.MMIOPos** %12, align 8
  br label %242

242:                                              ; preds = %232, %225
  %243 = load %struct.MMIOPos*, %struct.MMIOPos** %12, align 8
  %244 = icmp ne %struct.MMIOPos* %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* @FALSE, align 4
  store i32 %246, i32* %4, align 4
  br label %307

247:                                              ; preds = %242
  %248 = load i32, i32* %11, align 4
  %249 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %250 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 4
  %251 = load %struct.MMIOPos*, %struct.MMIOPos** %12, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  store %struct.MMIOPos* %251, %struct.MMIOPos** %253, align 8
  br label %254

254:                                              ; preds = %247, %208
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 3
  %260 = load %struct.MMIOPos*, %struct.MMIOPos** %259, align 8
  %261 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %262 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.MMIOPos, %struct.MMIOPos* %260, i64 %264
  %266 = getelementptr inbounds %struct.MMIOPos, %struct.MMIOPos* %265, i32 0, i32 1
  store i32 %257, i32* %266, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 3
  %272 = load %struct.MMIOPos*, %struct.MMIOPos** %271, align 8
  %273 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %274 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.MMIOPos, %struct.MMIOPos* %272, i64 %276
  %278 = getelementptr inbounds %struct.MMIOPos, %struct.MMIOPos* %277, i32 0, i32 0
  store i32 %269, i32* %278, align 4
  %279 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %280 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %254
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %291 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %290, i32 0, i32 4
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %286, %254
  %293 = load %struct.AviListBuild*, %struct.AviListBuild** %7, align 8
  %294 = getelementptr inbounds %struct.AviListBuild, %struct.AviListBuild* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 4
  br label %299

297:                                              ; preds = %196
  %298 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %292
  br label %305

300:                                              ; preds = %113
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = ptrtoint i64* %302 to i32
  %304 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %303)
  br label %305

305:                                              ; preds = %300, %299, %185
  %306 = load i32, i32* @TRUE, align 4
  store i32 %306, i32* %4, align 4
  br label %307

307:                                              ; preds = %305, %245, %192, %121, %35, %18
  %308 = load i32, i32* %4, align 4
  ret i32 %308
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @TWOCCFromFOURCC(i64) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local %struct.MMIOPos* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.MMIOPos* @HeapReAlloc(i32, i32, %struct.MMIOPos*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
