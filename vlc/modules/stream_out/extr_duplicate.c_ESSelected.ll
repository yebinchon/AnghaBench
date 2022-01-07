; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_duplicate.c_ESSelected.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_duplicate.c_ESSelected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"no-audio\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"noaudio\00", align 1
@AUDIO_ES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"no-video\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"novideo\00", align 1
@VIDEO_ES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"no-spu\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"nospu\00", align 1
@SPU_ES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"spu\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"no-es\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"noes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"no-prgm\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"noprgm\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"no-program\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"noprogram\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"prgm\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"unknown args (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @ESSelected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ESSelected(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  store i32 1, i32* %3, align 4
  br label %322

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %322

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %307, %61, %27
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %309

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 9
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ true, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  br label %40

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 44)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %7, align 8
  br label %29

64:                                               ; preds = %55
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  store i8 0, i8* %68, align 1
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AUDIO_ES, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %83, %80
  br label %307

92:                                               ; preds = %75
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %95 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VIDEO_ES, align 8
  %110 = icmp ne i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %105, %102
  br label %306

114:                                              ; preds = %97
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %117 = call i32 @strncmp(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %122 = call i32 @strncmp(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SPU_ES, align 8
  %132 = icmp ne i64 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %127, %124
  br label %305

136:                                              ; preds = %119
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %139 = call i32 @strncmp(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AUDIO_ES, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %144, %141
  br label %304

153:                                              ; preds = %136
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %156 = call i32 @strncmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @VIDEO_ES, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %161, %158
  br label %303

170:                                              ; preds = %153
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %173 = call i32 @strncmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SPU_ES, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 0
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %178, %175
  br label %302

187:                                              ; preds = %170
  %188 = load i8*, i8** %7, align 8
  %189 = call i8* @strchr(i8* %188, i8 signext 61)
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %297

191:                                              ; preds = %187
  %192 = load i8*, i8** %7, align 8
  %193 = call i8* @strchr(i8* %192, i8 signext 61)
  store i8* %193, i8** %12, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %12, align 8
  store i8 0, i8* %194, align 1
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @strcmp(i8* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %191
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %216, label %203

203:                                              ; preds = %199, %191
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load i8*, i8** %12, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @NumInRange(i8* %207, i32 %210)
  %212 = icmp ne i64 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 0, i32 -1
  store i32 %214, i32* %9, align 4
  br label %215

215:                                              ; preds = %206, %203
  br label %296

216:                                              ; preds = %199
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 @strcmp(i8* %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %233, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %9, align 4
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load i8*, i8** %12, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @NumInRange(i8* %224, i32 %227)
  %229 = icmp ne i64 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 1, i32 -1
  store i32 %231, i32* %9, align 4
  br label %232

232:                                              ; preds = %223, %220
  br label %295

233:                                              ; preds = %216
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load i8*, i8** %7, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load i8*, i8** %7, align 8
  %243 = call i32 @strcmp(i8* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i8*, i8** %7, align 8
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %267, label %249

249:                                              ; preds = %245, %241, %237, %233
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %249
  %255 = load i32, i32* %10, align 4
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %257, label %266

257:                                              ; preds = %254
  %258 = load i8*, i8** %12, align 8
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @NumInRange(i8* %258, i32 %261)
  %263 = icmp ne i64 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 0, i32 -1
  store i32 %265, i32* %10, align 4
  br label %266

266:                                              ; preds = %257, %254, %249
  br label %294

267:                                              ; preds = %245
  %268 = load i8*, i8** %7, align 8
  %269 = call i32 @strcmp(i8* %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @strcmp(i8* %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %293, label %275

275:                                              ; preds = %271, %267
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %275
  %281 = load i32, i32* %10, align 4
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load i8*, i8** %12, align 8
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i64 @NumInRange(i8* %284, i32 %287)
  %289 = icmp ne i64 %288, 0
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 1, i32 -1
  store i32 %291, i32* %10, align 4
  br label %292

292:                                              ; preds = %283, %280, %275
  br label %293

293:                                              ; preds = %292, %271
  br label %294

294:                                              ; preds = %293, %266
  br label %295

295:                                              ; preds = %294, %232
  br label %296

296:                                              ; preds = %295, %215
  br label %301

297:                                              ; preds = %187
  %298 = load i32, i32* @stderr, align 4
  %299 = load i8*, i8** %7, align 8
  %300 = call i32 @fprintf(i32 %298, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %299)
  br label %301

301:                                              ; preds = %297, %296
  br label %302

302:                                              ; preds = %301, %186
  br label %303

303:                                              ; preds = %302, %169
  br label %304

304:                                              ; preds = %303, %152
  br label %305

305:                                              ; preds = %304, %135
  br label %306

306:                                              ; preds = %305, %113
  br label %307

307:                                              ; preds = %306, %91
  %308 = load i8*, i8** %11, align 8
  store i8* %308, i8** %7, align 8
  br label %29

309:                                              ; preds = %37
  %310 = load i8*, i8** %6, align 8
  %311 = call i32 @free(i8* %310)
  %312 = load i32, i32* %8, align 4
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %320, label %314

314:                                              ; preds = %309
  %315 = load i32, i32* %9, align 4
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %320, label %317

317:                                              ; preds = %314
  %318 = load i32, i32* %10, align 4
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %321

320:                                              ; preds = %317, %314, %309
  store i32 1, i32* %3, align 4
  br label %322

321:                                              ; preds = %317
  store i32 0, i32* %3, align 4
  br label %322

322:                                              ; preds = %321, %320, %26, %20
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @NumInRange(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
