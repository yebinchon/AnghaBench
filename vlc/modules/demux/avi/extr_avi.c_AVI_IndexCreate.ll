; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_IndexCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_IndexCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_29__**, i64, %struct.TYPE_32__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_25__, %struct.TYPE_26__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, i64, i32, i64, i64, i32 }
%struct.TYPE_31__ = type { i32, i64, i64, i64, i32 }

@AVIFOURCC_movi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot find p_movi\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"creating index from LIST-movi, will take time !\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Broken or missing AVI Index\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Fixing AVI Index...\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"looking for new RIFF chunk\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"new RIFF chunk found\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"need resync, probably broken avi\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"lost sync, abord index creation\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"stream[%d] creating %d index entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @AVI_IndexCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AVI_IndexCreate(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_30__, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_31__, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %3, align 8
  store i32* null, i32** %9, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 3
  %22 = call %struct.TYPE_32__* @AVI_ChunkFind(%struct.TYPE_32__* %21, i32 130, i32 0, i32 1)
  store %struct.TYPE_32__* %22, %struct.TYPE_32__** %4, align 8
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %24 = load i32, i32* @AVIFOURCC_movi, align 4
  %25 = call %struct.TYPE_32__* @AVI_ChunkFind(%struct.TYPE_32__* %23, i32 %24, i32 0, i32 1)
  store %struct.TYPE_32__* %25, %struct.TYPE_32__** %5, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %27 = icmp ne %struct.TYPE_32__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %30 = call i32 @msg_Err(%struct.TYPE_27__* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %275

31:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %41, i64 %43
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = call i32 @avi_index_Init(%struct.TYPE_25__* %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @stream_Size(i32 %61)
  %63 = call i64 @__MIN(i64 %58, i32 %62)
  store i64 %63, i64* %7, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 12
  %71 = call i32 @vlc_stream_Seek(i32 %66, i64 %70)
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %73 = call i32 @msg_Warn(%struct.TYPE_27__* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i64 (...) @vlc_tick_now()
  store i64 %74, i64* %8, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @stream_Size(i32 %77)
  %79 = icmp sgt i32 %78, 10000000
  br i1 %79, label %80, label %86

80:                                               ; preds = %51
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %82 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %85 = call i32* @vlc_dialog_display_progress(%struct.TYPE_27__* %81, i32 0, double 0.000000e+00, i32 %82, i32 %83, i32 %84)
  store i32* %85, i32** %9, align 8
  br label %86

86:                                               ; preds = %80, %51
  br label %87

87:                                               ; preds = %242, %86
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  %91 = call i64 (...) @vlc_tick_now()
  %92 = load i64, i64* %8, align 8
  %93 = sub nsw i64 %91, %92
  %94 = call i64 @VLC_TICK_FROM_MS(i32 100)
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i64 @vlc_dialog_is_cancelled(%struct.TYPE_27__* %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %243

102:                                              ; preds = %96
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call double @vlc_stream_Tell(i32 %105)
  store double %106, double* %11, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @stream_Size(i32 %109)
  %111 = sitofp i32 %110 to double
  store double %111, double* %12, align 8
  %112 = load double, double* %11, align 8
  %113 = load double, double* %12, align 8
  %114 = fdiv double %112, %113
  store double %114, double* %13, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load double, double* %13, align 8
  %118 = call i32 @vlc_dialog_update_progress(%struct.TYPE_27__* %115, i32* %116, double %117)
  %119 = call i64 (...) @vlc_tick_now()
  store i64 %119, i64* %8, align 8
  br label %120

120:                                              ; preds = %102, %90, %87
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %122 = call i64 @AVI_PacketGetHeader(%struct.TYPE_27__* %121, %struct.TYPE_30__* %10)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %243

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %180

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %138, i64 %140
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %135, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %133
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %150, i64 %152
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %153, align 8
  store %struct.TYPE_29__* %154, %struct.TYPE_29__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  store i32 %156, i32* %157, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @AVI_GetKeyFlag(i32 %161, i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 4
  store i32 %164, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 2
  store i64 %170, i64* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 3
  store i64 %173, i64* %174, align 8
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 4
  %179 = call i32 @avi_index_Append(%struct.TYPE_25__* %176, i32* %178, %struct.TYPE_31__* %15)
  br label %224

180:                                              ; preds = %133, %125
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %213 [
    i32 129, label %183
    i32 130, label %209
    i32 128, label %212
    i32 131, label %212
  ]

183:                                              ; preds = %180
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %183
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 3
  %191 = call %struct.TYPE_32__* @AVI_ChunkFind(%struct.TYPE_32__* %190, i32 130, i32 1, i32 1)
  store %struct.TYPE_32__* %191, %struct.TYPE_32__** %16, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %193 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Dbg(%struct.TYPE_27__* %192, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %195 = icmp ne %struct.TYPE_32__* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %188
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 24
  %204 = call i32 @vlc_stream_Seek(i32 %199, i64 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %196, %188
  br label %244

207:                                              ; preds = %196
  br label %223

208:                                              ; preds = %183
  br label %244

209:                                              ; preds = %180
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %211 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Dbg(%struct.TYPE_27__* %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %223

212:                                              ; preds = %180, %180
  br label %223

213:                                              ; preds = %180
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %215 = call i32 @msg_Warn(%struct.TYPE_27__* %214, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %217 = call i32 @AVI_PacketSearch(%struct.TYPE_27__* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %221 = call i32 @msg_Warn(%struct.TYPE_27__* %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %244

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %212, %209, %207
  br label %224

224:                                              ; preds = %223, %147
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %231, %233
  %235 = load i64, i64* %7, align 8
  %236 = icmp sge i64 %234, %235
  br i1 %236, label %241, label %237

237:                                              ; preds = %229, %224
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %239 = call i64 @AVI_PacketNext(%struct.TYPE_27__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237, %229
  br label %243

242:                                              ; preds = %237
  br label %87

243:                                              ; preds = %241, %124, %101
  br label %244

244:                                              ; preds = %243, %219, %208, %206
  %245 = load i32*, i32** %9, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %249 = load i32*, i32** %9, align 8
  %250 = call i32 @vlc_dialog_release(%struct.TYPE_27__* %248, i32* %249)
  br label %251

251:                                              ; preds = %247, %244
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %272, %251
  %253 = load i32, i32* %6, align 4
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ult i32 %253, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %252
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %260 = load i32, i32* %6, align 4
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %263, i64 %265
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Dbg(%struct.TYPE_27__* %259, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %260, i32 %270)
  br label %272

272:                                              ; preds = %258
  %273 = load i32, i32* %6, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %6, align 4
  br label %252

275:                                              ; preds = %28, %252
  ret void
}

declare dso_local %struct.TYPE_32__* @AVI_ChunkFind(%struct.TYPE_32__*, i32, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @avi_index_Init(%struct.TYPE_25__*) #1

declare dso_local i64 @__MIN(i64, i32) #1

declare dso_local i32 @stream_Size(i32) #1

declare dso_local i32 @vlc_stream_Seek(i32, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_27__*, i8*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32* @vlc_dialog_display_progress(%struct.TYPE_27__*, i32, double, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i64 @vlc_dialog_is_cancelled(%struct.TYPE_27__*, i32*) #1

declare dso_local double @vlc_stream_Tell(i32) #1

declare dso_local i32 @vlc_dialog_update_progress(%struct.TYPE_27__*, i32*, double) #1

declare dso_local i64 @AVI_PacketGetHeader(%struct.TYPE_27__*, %struct.TYPE_30__*) #1

declare dso_local i32 @AVI_GetKeyFlag(i32, i32) #1

declare dso_local i32 @avi_index_Append(%struct.TYPE_25__*, i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_27__*, i8*, ...) #1

declare dso_local i32 @AVI_PacketSearch(%struct.TYPE_27__*) #1

declare dso_local i64 @AVI_PacketNext(%struct.TYPE_27__*) #1

declare dso_local i32 @vlc_dialog_release(%struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
