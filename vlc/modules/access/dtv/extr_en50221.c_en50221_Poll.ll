; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_en50221_Poll.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_en50221_Poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32*, i32*, i32*, i64, %struct.TYPE_11__*, i32, i64*, i32 }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_12__*, i32)*, i64, i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_13__ = type { i32, i32 }

@CA_GET_SLOT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"en50221_Poll: couldn't get info on slot %d\00", align 1
@CA_CI_MODULE_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"en50221_Poll: slot %d has been removed\00", align 1
@MAX_SESSIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"en50221_Poll: resetting slot %d\00", align 1
@CA_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"en50221_Poll: couldn't reset slot %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"en50221_Poll: slot %d is active\00", align 1
@T_DATA_LAST = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"en50221_Poll: couldn't send TPDU on slot %d\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"en50221_Poll: couldn't recv TPDU on slot %d\00", align 1
@MAX_TPDU_SIZE = common dso_local global i32 0, align 4
@T_RCV = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"en50221_Poll: fragmented TPDU not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @en50221_Poll(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %26 [
    i32 128, label %17
    i32 129, label %25
  ]

17:                                               ; preds = %1
  %18 = call i64 (...) @vlc_tick_now()
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %1, %24
  br label %363

26:                                               ; preds = %1
  %27 = call i32 (...) @vlc_assert_unreachable()
  br label %28

28:                                               ; preds = %26, %23
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %308, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %311

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CA_GET_SLOT_INFO, align 4
  %42 = call i64 (i32, i32, ...) @ioctl(i32 %40, i32 %41, %struct.TYPE_13__* %5)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @msg_Err(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %308

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CA_CI_MODULE_READY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %155, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %154

65:                                               ; preds = %56
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @msg_Dbg(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 0, i32* %88, align 4
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %150, %65
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @MAX_SESSIONS, align 4
  %92 = icmp ule i32 %90, %91
  br i1 %92, label %93, label %153

93:                                               ; preds = %89
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 7
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sub i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %149

104:                                              ; preds = %93
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sub i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %149

116:                                              ; preds = %104
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sub i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %124, align 8
  %126 = icmp ne i32 (%struct.TYPE_12__*, i32)* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %116
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sub i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 %136(%struct.TYPE_12__* %137, i32 %138)
  br label %140

140:                                              ; preds = %127, %116
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sub i32 %144, 1
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %140, %104, %93
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %89

153:                                              ; preds = %89
  br label %154

154:                                              ; preds = %153, %56
  br label %308

155:                                              ; preds = %50
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %203, label %164

164:                                              ; preds = %155
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @InitSlot(%struct.TYPE_12__* %165, i32 %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %3, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %197, label %176

176:                                              ; preds = %164
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @msg_Dbg(i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @CA_RESET, align 4
  %186 = load i32, i32* %3, align 4
  %187 = shl i32 1, %186
  %188 = call i64 (i32, i32, ...) @ioctl(i32 %184, i32 %185, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %176
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = call i32 (i32, i8*, ...) @msg_Err(i32 %193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %190, %176
  br label %308

197:                                              ; preds = %164
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @msg_Dbg(i32 %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %197, %155
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 9
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %3, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %239, label %213

213:                                              ; preds = %204
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %215 = load i32, i32* %3, align 4
  %216 = load i64, i64* @T_DATA_LAST, align 8
  %217 = call i64 @TPDUSend(%struct.TYPE_12__* %214, i32 %215, i64 %216, i32* null, i32 0)
  %218 = load i64, i64* @VLC_SUCCESS, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %3, align 4
  %225 = call i32 (i32, i8*, ...) @msg_Err(i32 %223, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %224)
  br label %308

226:                                              ; preds = %213
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %228 = load i32, i32* %3, align 4
  %229 = call i64 @TPDURecv(%struct.TYPE_12__* %227, i32 %228, i64* %4, i64* null, i32* null)
  %230 = load i64, i64* @VLC_SUCCESS, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %3, align 4
  %237 = call i32 (i32, i8*, ...) @msg_Err(i32 %235, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %236)
  br label %308

238:                                              ; preds = %226
  br label %239

239:                                              ; preds = %238, %204
  br label %240

240:                                              ; preds = %306, %303, %239
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 9
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %3, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %307

249:                                              ; preds = %240
  %250 = load i32, i32* @MAX_TPDU_SIZE, align 4
  %251 = zext i32 %250 to i64
  %252 = call i8* @llvm.stacksave()
  store i8* %252, i8** %7, align 8
  %253 = alloca i64, i64 %251, align 16
  store i64 %251, i64* %8, align 8
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %255 = load i32, i32* %3, align 4
  %256 = load i64, i64* @T_RCV, align 8
  %257 = call i64 @TPDUSend(%struct.TYPE_12__* %254, i32 %255, i64 %256, i32* null, i32 0)
  %258 = load i64, i64* @VLC_SUCCESS, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %249
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %3, align 4
  %265 = call i32 (i32, i8*, ...) @msg_Err(i32 %263, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %264)
  store i32 9, i32* %12, align 4
  br label %303

266:                                              ; preds = %249
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %268 = load i32, i32* %3, align 4
  %269 = call i64 @TPDURecv(%struct.TYPE_12__* %267, i32 %268, i64* %4, i64* %253, i32* %9)
  %270 = load i64, i64* @VLC_SUCCESS, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %266
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %3, align 4
  %277 = call i32 (i32, i8*, ...) @msg_Err(i32 %275, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %276)
  store i32 9, i32* %12, align 4
  br label %303

278:                                              ; preds = %266
  %279 = getelementptr inbounds i64, i64* %253, i64 3
  %280 = call i64* @GetLength(i64* %279, i32* %10)
  store i64* %280, i64** %11, align 8
  %281 = load i32, i32* %10, align 4
  %282 = icmp sle i32 %281, 1
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  store i32 9, i32* %12, align 4
  br label %303

284:                                              ; preds = %278
  %285 = load i64*, i64** %11, align 8
  %286 = getelementptr inbounds i64, i64* %285, i32 1
  store i64* %286, i64** %11, align 8
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %10, align 4
  %289 = load i64, i64* %4, align 8
  %290 = load i64, i64* @T_DATA_LAST, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %284
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i32, i8*, ...) @msg_Err(i32 %295, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  store i32 10, i32* %12, align 4
  br label %303

297:                                              ; preds = %284
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %299 = load i32, i32* %3, align 4
  %300 = load i64*, i64** %11, align 8
  %301 = load i32, i32* %10, align 4
  %302 = call i32 @SPDUHandle(%struct.TYPE_12__* %298, i32 %299, i64* %300, i32 %301)
  store i32 0, i32* %12, align 4
  br label %303

303:                                              ; preds = %297, %292, %283, %272, %260
  %304 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %304)
  %305 = load i32, i32* %12, align 4
  switch i32 %305, label %364 [
    i32 0, label %306
    i32 9, label %240
    i32 10, label %307
  ]

306:                                              ; preds = %303
  br label %240

307:                                              ; preds = %303, %240
  br label %308

308:                                              ; preds = %307, %232, %220, %196, %154, %44
  %309 = load i32, i32* %3, align 4
  %310 = add i32 %309, 1
  store i32 %310, i32* %3, align 4
  br label %29

311:                                              ; preds = %29
  store i32 1, i32* %13, align 4
  br label %312

312:                                              ; preds = %352, %311
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @MAX_SESSIONS, align 4
  %315 = icmp ule i32 %313, %314
  br i1 %315, label %316, label %355

316:                                              ; preds = %312
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 7
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = sub nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %351

327:                                              ; preds = %316
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 7
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %329, align 8
  %331 = load i32, i32* %13, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 1
  %336 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %335, align 8
  %337 = icmp ne i32 (%struct.TYPE_12__*, i32)* %336, null
  br i1 %337, label %338, label %351

338:                                              ; preds = %327
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 7
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %340, align 8
  %342 = load i32, i32* %13, align 4
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  %347 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %346, align 8
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %349 = load i32, i32* %13, align 4
  %350 = call i32 %347(%struct.TYPE_12__* %348, i32 %349)
  br label %351

351:                                              ; preds = %338, %327, %316
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %13, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %13, align 4
  br label %312

355:                                              ; preds = %312
  %356 = call i64 (...) @vlc_tick_now()
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 6
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %356, %359
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 1
  store i64 %360, i64* %362, align 8
  br label %363

363:                                              ; preds = %355, %25
  ret void

364:                                              ; preds = %303
  unreachable
}

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i32) #1

declare dso_local i32 @InitSlot(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @TPDUSend(%struct.TYPE_12__*, i32, i64, i32*, i32) #1

declare dso_local i64 @TPDURecv(%struct.TYPE_12__*, i32, i64*, i64*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64* @GetLength(i64*, i32*) #1

declare dso_local i32 @SPDUHandle(%struct.TYPE_12__*, i32, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
