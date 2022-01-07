; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_DemuxHEIF.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_DemuxHEIF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.heif_private_t = type { i64, i64, i64, i32, i64, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i32*, i32, i32*, %struct.TYPE_18__* (i32)* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i32 }
%struct.TYPE_14__ = type { i32 }

@ES_OUT_GET_EMPTY = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"meta/pitm\00", align 1
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@ATOM_infe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"meta/iinf/infe\00", align 1
@MatchInfeID = common dso_local global i32 0, align 4
@MatchPureImage = common dso_local global i32 0, align 4
@p_infe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"meta/iprp/ipco\00", align 1
@UNKNOWN_ES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_TICK_0 = common dso_local global i64 0, align 8
@BLOCK_FLAG_END_OF_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @DemuxHEIF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DemuxHEIF(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.heif_private_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.heif_private_t*
  store %struct.heif_private_t* %15, %struct.heif_private_t** %4, align 8
  %16 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %17 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ES_OUT_GET_EMPTY, align 4
  %25 = call i32 @es_out_Control(i32 %23, i32 %24, i32* %5)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = call i64 (...) @vlc_tick_now()
  %30 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %31 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %20
  %35 = call i32 @VLC_TICK_FROM_MS(i32 40)
  %36 = call i32 @vlc_tick_sleep(i32 %35)
  %37 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %37, i32* %2, align 4
  br label %280

38:                                               ; preds = %28
  %39 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %40 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %1
  %42 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %43 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %46 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %74, label %50

50:                                               ; preds = %41
  %51 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %52 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = call i8* @MP4_BoxGet(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %59, i32* %2, align 4
  br label %280

60:                                               ; preds = %50
  %61 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %62 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @ATOM_infe, align 4
  %65 = load i32, i32* @MatchInfeID, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call %struct.TYPE_14__* @BOXDATA(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i8* @GetAtom(i32* %63, i32* null, i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32* %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %72 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32* %70, i32** %73, align 8
  br label %92

74:                                               ; preds = %41
  %75 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %76 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %79 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @ATOM_infe, align 4
  %83 = load i32, i32* @MatchPureImage, align 4
  %84 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %85 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @GetAtom(i32* %77, i32* %81, i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32* %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %90 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32* %88, i32** %91, align 8
  br label %92

92:                                               ; preds = %74, %60
  %93 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %94 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %99, i32* %2, align 4
  br label %280

100:                                              ; preds = %92
  %101 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %102 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_18__* (i32)*, %struct.TYPE_18__* (i32)** %103, align 8
  %105 = load i32, i32* @p_infe, align 4
  %106 = call %struct.TYPE_18__* %104(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %7, align 4
  %109 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %110 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = call i8* @MP4_BoxGet(i32* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %113 = bitcast i8* %112 to i32*
  store i32* %113, i32** %8, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %117, i32* %2, align 4
  br label %280

118:                                              ; preds = %100
  %119 = load i32, i32* @UNKNOWN_ES, align 4
  %120 = call i32 @es_format_Init(i32* %9, i32 %119, i32 0)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %121 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %122 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_18__* (i32)*, %struct.TYPE_18__* (i32)** %123, align 8
  %125 = load i32, i32* @p_infe, align 4
  %126 = call %struct.TYPE_18__* %124(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @VLC_FOURCC(i8 signext 103, i8 signext 114, i8 signext 105, i8 signext 100)
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %118
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @DerivedImageAssembleGrid(%struct.TYPE_16__* %132, i32 %133, i32* %9, %struct.TYPE_17__** %10)
  %135 = load i64, i64* @VLC_SUCCESS, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = call i32 @es_format_Clean(i32* %9)
  %139 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %139, i32* %2, align 4
  br label %280

140:                                              ; preds = %131
  br label %170

141:                                              ; preds = %118
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %144 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %148 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = call i64 @SetupPicture(%struct.TYPE_16__* %142, i32* %146, i32* %9, i32** %149)
  %151 = load i64, i64* @VLC_SUCCESS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %141
  %154 = call i32 @es_format_Clean(i32* %9)
  %155 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %155, i32* %2, align 4
  br label %280

156:                                              ; preds = %141
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %160 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = call %struct.TYPE_17__* @ReadItemExtents(%struct.TYPE_16__* %157, i32 %158, i32* %162)
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %10, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = icmp ne %struct.TYPE_17__* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %156
  %167 = call i32 @es_format_Clean(i32* %9)
  %168 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %168, i32* %2, align 4
  br label %280

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %169, %140
  %171 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %172 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = call i32 @es_format_Clean(i32* %173)
  %175 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %176 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = call i32 @es_format_Copy(i32* %177, i32* %9)
  %179 = call i32 @es_format_Clean(i32* %9)
  %180 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %181 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %170
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %189 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @es_out_Del(i32 %187, i64 %190)
  br label %192

192:                                              ; preds = %184, %170
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %197 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = call i64 @es_out_Add(i32 %195, i32* %198)
  %200 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %201 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %200, i32 0, i32 4
  store i64 %199, i64* %201, align 8
  %202 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %203 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %192
  %207 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %208 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  store i32* null, i32** %209, align 8
  %210 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %210, i32* %2, align 4
  br label %280

211:                                              ; preds = %192
  %212 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %213 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @VLC_TICK_INVALID, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load i64, i64* @VLC_TICK_0, align 8
  %219 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %220 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %225 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @es_out_SetPCR(i32 %223, i64 %226)
  br label %228

228:                                              ; preds = %217, %211
  %229 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %230 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  store i64 %231, i64* %235, align 8
  %236 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %237 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 2
  store i64 %238, i64* %240, align 8
  %241 = load i32, i32* @BLOCK_FLAG_END_OF_SEQUENCE, align 4
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = call i64 (...) @vlc_tick_now()
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %246, %249
  %251 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %252 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %254 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %253, i32 0, i32 3
  store i32 1, i32* %254, align 8
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %257, %260
  %262 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %263 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %262, i32 0, i32 1
  store i64 %261, i64* %263, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %268 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %271 = call i32 @es_out_Send(i32 %266, i64 %269, %struct.TYPE_17__* %270)
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %276 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @es_out_SetPCR(i32 %274, i64 %277)
  %279 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %228, %206, %166, %153, %137, %116, %98, %58, %34
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @es_out_Control(i32, i32, i32*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i8* @MP4_BoxGet(i32*, i8*) #1

declare dso_local i8* @GetAtom(i32*, i32*, i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @BOXDATA(i32*) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @DerivedImageAssembleGrid(%struct.TYPE_16__*, i32, i32*, %struct.TYPE_17__**) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i64 @SetupPicture(%struct.TYPE_16__*, i32*, i32*, i32**) #1

declare dso_local %struct.TYPE_17__* @ReadItemExtents(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @es_format_Copy(i32*, i32*) #1

declare dso_local i32 @es_out_Del(i32, i64) #1

declare dso_local i64 @es_out_Add(i32, i32*) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i32 @es_out_Send(i32, i64, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
