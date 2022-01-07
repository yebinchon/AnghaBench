; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_MGT_Callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_MGT_Callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64, i64, %struct.TYPE_34__* }
%struct.TYPE_33__ = type { i64, i64, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_32__*, %struct.TYPE_28__* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_37__*, %struct.TYPE_29__, %struct.TYPE_30__* }
%struct.TYPE_37__ = type { i64, i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_35__*, i32* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_36__ = type { i32* }

@TYPE_PSIP = common dso_local global i64 0, align 8
@ATSC_BASE_PID = common dso_local global i64 0, align 8
@TYPE_FREE = common dso_local global i64 0, align 8
@SCTE18_TABLE_ID = common dso_local global i32 0, align 4
@ATSC_TABLE_TYPE_TVCT = common dso_local global i64 0, align 8
@ATSC_TABLE_TYPE_CVCT = common dso_local global i64 0, align 8
@ATSC_CVCT_TABLE_ID = common dso_local global i32 0, align 4
@ATSC_TVCT_TABLE_ID = common dso_local global i32 0, align 4
@VCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"  * pid=%d listening for ATSC VCT\00", align 1
@ATSC_TABLE_TYPE_EIT_0 = common dso_local global i64 0, align 8
@ATSC_EIT_MAX_DEPTH_MIN1 = common dso_local global i64 0, align 8
@ATSC_TABLE_TYPE_EIT_127 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"  * pid=%d reserved for ATSC EIT\00", align 1
@ATSC_TABLE_TYPE_ETT_0 = common dso_local global i64 0, align 8
@ATSC_TABLE_TYPE_ETT_127 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"  * pid=%d reserved for ATSC ETT\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"  * pid=%d transport for ATSC PSIP type %x\00", align 1
@SCTE18_SI_BASE_PID = common dso_local global i64 0, align 8
@SCTE18_Section_Callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"  * pid=%d listening for EAS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_35__*)* @ATSC_MGT_Callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATSC_MGT_Callback(i8* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %17, %struct.TYPE_33__** %5, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TYPE_PSIP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATSC_BASE_PID, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %23, %2
  %30 = phi i1 [ true, %2 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TYPE_PSIP, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ATSC_BASE_PID, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %50 = call i32 @dvbpsi_atsc_DeleteMGT(%struct.TYPE_35__* %49)
  br label %436

51:                                               ; preds = %29
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %54, align 8
  store %struct.TYPE_32__* %55, %struct.TYPE_32__** %6, align 8
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %61, %struct.TYPE_36__** %7, align 8
  %62 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %8, align 8
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %77

69:                                               ; preds = %51
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %69, %51
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %69
  %83 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %84 = call i32 @dvbpsi_atsc_DeleteMGT(%struct.TYPE_35__* %83)
  br label %436

85:                                               ; preds = %77
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %171

90:                                               ; preds = %85
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @dvbpsi_atsc_DeleteVCT(i32* %102)
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %97, %90
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %141, %108
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %109
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %121, i64 %123
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %124, align 8
  %126 = call i32 @PIDRelease(%struct.TYPE_36__* %117, %struct.TYPE_27__* %125)
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %130, i64 %132
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TYPE_FREE, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  br label %141

141:                                              ; preds = %116
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %109

144:                                              ; preds = %109
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 2
  %147 = bitcast %struct.TYPE_29__* %146 to { i32, %struct.TYPE_27__** }*
  %148 = getelementptr inbounds { i32, %struct.TYPE_27__** }, { i32, %struct.TYPE_27__** }* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds { i32, %struct.TYPE_27__** }, { i32, %struct.TYPE_27__** }* %147, i32 0, i32 1
  %151 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %150, align 8
  %152 = call i32 @ARRAY_RESET(i32 %149, %struct.TYPE_27__** %151)
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  store i32* %158, i32** %10, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* @SCTE18_TABLE_ID, align 4
  %161 = call i32* @dvbpsi_demuxGetSubDec(i32* %159, i32 %160, i32 0)
  store i32* %161, i32** %11, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %144
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @dvbpsi_DetachDemuxSubDecoder(i32* %165, i32* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @dvbpsi_DeleteDemuxSubDecoder(i32* %168)
  br label %170

170:                                              ; preds = %164, %144
  br label %171

171:                                              ; preds = %170, %85
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %175, align 8
  %177 = icmp ne %struct.TYPE_35__* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_35__*, %struct.TYPE_35__** %182, align 8
  %184 = call i32 @dvbpsi_atsc_DeleteMGT(%struct.TYPE_35__* %183)
  br label %185

185:                                              ; preds = %178, %171
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 1
  store %struct.TYPE_35__* %186, %struct.TYPE_35__** %190, align 8
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %197, align 8
  store %struct.TYPE_34__* %198, %struct.TYPE_34__** %12, align 8
  br label %199

199:                                              ; preds = %413, %185
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %201 = icmp ne %struct.TYPE_34__* %200, null
  br i1 %201, label %202, label %417

202:                                              ; preds = %199
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @ATSC_TABLE_TYPE_TVCT, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ATSC_TABLE_TYPE_CVCT, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %248

214:                                              ; preds = %208, %202
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ATSC_TABLE_TYPE_CVCT, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* @ATSC_CVCT_TABLE_ID, align 4
  br label %224

222:                                              ; preds = %214
  %223 = load i32, i32* @ATSC_TVCT_TABLE_ID, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  store i32 %225, i32* %13, align 4
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %227, align 8
  %229 = load i32, i32* @VCT, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = call %struct.TYPE_33__* @GetPID(i32* %231, i64 0)
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %239 = call i32 @ATSC_ATTACH(%struct.TYPE_37__* %228, i32 %229, i32 %230, i32 %237, %struct.TYPE_33__* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %224
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 (%struct.TYPE_36__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_36__* %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %245)
  br label %247

247:                                              ; preds = %241, %224
  br label %404

248:                                              ; preds = %208
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @ATSC_TABLE_TYPE_EIT_0, align 8
  %253 = icmp sge i64 %251, %252
  br i1 %253, label %254, label %326

254:                                              ; preds = %248
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @ATSC_TABLE_TYPE_EIT_0, align 8
  %259 = load i64, i64* @ATSC_EIT_MAX_DEPTH_MIN1, align 8
  %260 = add nsw i64 %258, %259
  %261 = icmp sle i64 %257, %260
  br i1 %261, label %262, label %326

262:                                              ; preds = %254
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @ATSC_TABLE_TYPE_EIT_127, align 8
  %267 = icmp sle i64 %265, %266
  br i1 %267, label %268, label %326

268:                                              ; preds = %262
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %271, %274
  br i1 %275, label %276, label %326

276:                                              ; preds = %268
  %277 = load i32*, i32** %8, align 8
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = call %struct.TYPE_33__* @GetPID(i32* %277, i64 %280)
  store %struct.TYPE_33__* %281, %struct.TYPE_33__** %14, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %283 = load i64, i64* @TYPE_PSIP, align 8
  %284 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %285 = call i64 @PIDSetup(%struct.TYPE_36__* %282, i64 %283, %struct.TYPE_33__* %284, i32* null)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %325

287:                                              ; preds = %276
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %292 = call i32 @SetPIDFilter(i32* %290, %struct.TYPE_33__* %291, i32 1)
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 3
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %301, i32 0, i32 0
  store i64 %295, i64* %302, align 8
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_37__*, %struct.TYPE_37__** %307, align 8
  %309 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %310 = call i32 @ATSC_Ready_SubDecoders(%struct.TYPE_37__* %308, %struct.TYPE_33__* %309)
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = call i32 (%struct.TYPE_36__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_36__* %311, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %314)
  %316 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %319 = bitcast %struct.TYPE_29__* %317 to { i32, %struct.TYPE_27__** }*
  %320 = getelementptr inbounds { i32, %struct.TYPE_27__** }, { i32, %struct.TYPE_27__** }* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = getelementptr inbounds { i32, %struct.TYPE_27__** }, { i32, %struct.TYPE_27__** }* %319, i32 0, i32 1
  %323 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %322, align 8
  %324 = call i32 @ARRAY_APPEND(i32 %321, %struct.TYPE_27__** %323, %struct.TYPE_33__* %318)
  br label %325

325:                                              ; preds = %287, %276
  br label %403

326:                                              ; preds = %268, %262, %254, %248
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @ATSC_TABLE_TYPE_ETT_0, align 8
  %331 = icmp sge i64 %329, %330
  br i1 %331, label %332, label %402

332:                                              ; preds = %326
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @ATSC_TABLE_TYPE_ETT_0, align 8
  %337 = load i64, i64* @ATSC_EIT_MAX_DEPTH_MIN1, align 8
  %338 = add nsw i64 %336, %337
  %339 = icmp sle i64 %335, %338
  br i1 %339, label %340, label %402

340:                                              ; preds = %332
  %341 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %342 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @ATSC_TABLE_TYPE_ETT_127, align 8
  %345 = icmp sle i64 %343, %344
  br i1 %345, label %346, label %402

346:                                              ; preds = %340
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %349, %352
  br i1 %353, label %354, label %402

354:                                              ; preds = %346
  %355 = load i32*, i32** %8, align 8
  %356 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = call %struct.TYPE_33__* @GetPID(i32* %355, i64 %358)
  store %struct.TYPE_33__* %359, %struct.TYPE_33__** %15, align 8
  %360 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %361 = load i64, i64* @TYPE_PSIP, align 8
  %362 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %363 = call i64 @PIDSetup(%struct.TYPE_36__* %360, i64 %361, %struct.TYPE_33__* %362, i32* null)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %401

365:                                              ; preds = %354
  %366 = load i32*, i32** %8, align 8
  %367 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %368 = call i32 @SetPIDFilter(i32* %366, %struct.TYPE_33__* %367, i32 1)
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_32__*, %struct.TYPE_32__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %375, i32 0, i32 3
  %377 = load %struct.TYPE_30__*, %struct.TYPE_30__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %377, i32 0, i32 0
  store i64 %371, i64* %378, align 8
  %379 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %380 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_32__*, %struct.TYPE_32__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_37__*, %struct.TYPE_37__** %383, align 8
  %385 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %386 = call i32 @ATSC_Ready_SubDecoders(%struct.TYPE_37__* %384, %struct.TYPE_33__* %385)
  %387 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %388 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %389 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = call i32 (%struct.TYPE_36__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_36__* %387, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %390)
  %392 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %395 = bitcast %struct.TYPE_29__* %393 to { i32, %struct.TYPE_27__** }*
  %396 = getelementptr inbounds { i32, %struct.TYPE_27__** }, { i32, %struct.TYPE_27__** }* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = getelementptr inbounds { i32, %struct.TYPE_27__** }, { i32, %struct.TYPE_27__** }* %395, i32 0, i32 1
  %399 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %398, align 8
  %400 = call i32 @ARRAY_APPEND(i32 %397, %struct.TYPE_27__** %399, %struct.TYPE_33__* %394)
  br label %401

401:                                              ; preds = %365, %354
  br label %402

402:                                              ; preds = %401, %346, %340, %332, %326
  br label %403

403:                                              ; preds = %402, %325
  br label %404

404:                                              ; preds = %403, %247
  %405 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %406 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %407 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = call i32 (%struct.TYPE_36__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_36__* %405, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %408, i64 %411)
  br label %413

413:                                              ; preds = %404
  %414 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %414, i32 0, i32 2
  %416 = load %struct.TYPE_34__*, %struct.TYPE_34__** %415, align 8
  store %struct.TYPE_34__* %416, %struct.TYPE_34__** %12, align 8
  br label %199

417:                                              ; preds = %199
  %418 = load i64, i64* @SCTE18_SI_BASE_PID, align 8
  %419 = load i64, i64* @ATSC_BASE_PID, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %421, label %436

421:                                              ; preds = %417
  %422 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %422, i32 0, i32 1
  %424 = load %struct.TYPE_37__*, %struct.TYPE_37__** %423, align 8
  %425 = load i32, i32* @SCTE18_TABLE_ID, align 4
  %426 = load i32, i32* @SCTE18_Section_Callback, align 4
  %427 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %428 = call i64 @ts_dvbpsi_AttachRawSubDecoder(%struct.TYPE_37__* %424, i32 %425, i32 0, i32 %426, %struct.TYPE_33__* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %421
  %431 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %432 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = call i32 (%struct.TYPE_36__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_36__* %431, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %434)
  br label %436

436:                                              ; preds = %34, %82, %430, %421, %417
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dvbpsi_atsc_DeleteMGT(%struct.TYPE_35__*) #1

declare dso_local i32 @dvbpsi_atsc_DeleteVCT(i32*) #1

declare dso_local i32 @PIDRelease(%struct.TYPE_36__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ARRAY_RESET(i32, %struct.TYPE_27__**) #1

declare dso_local i32* @dvbpsi_demuxGetSubDec(i32*, i32, i32) #1

declare dso_local i32 @dvbpsi_DetachDemuxSubDecoder(i32*, i32*) #1

declare dso_local i32 @dvbpsi_DeleteDemuxSubDecoder(i32*) #1

declare dso_local i32 @ATSC_ATTACH(%struct.TYPE_37__*, i32, i32, i32, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_33__* @GetPID(i32*, i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_36__*, i8*, i64, ...) #1

declare dso_local i64 @PIDSetup(%struct.TYPE_36__*, i64, %struct.TYPE_33__*, i32*) #1

declare dso_local i32 @SetPIDFilter(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @ATSC_Ready_SubDecoders(%struct.TYPE_37__*, %struct.TYPE_33__*) #1

declare dso_local i32 @ARRAY_APPEND(i32, %struct.TYPE_27__**, %struct.TYPE_33__*) #1

declare dso_local i64 @ts_dvbpsi_AttachRawSubDecoder(%struct.TYPE_37__*, i32, i32, i32, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
