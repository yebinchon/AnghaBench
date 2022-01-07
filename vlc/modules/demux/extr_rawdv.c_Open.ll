; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_rawdv.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_rawdv.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_22__*, i32, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_16__, i32*, %struct.TYPE_16__, i32*, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c".dv\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@DV_PAL_FRAME_SIZE = common dso_local global i64 0, align 8
@DV_NTSC_FRAME_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"cannot peek()\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"not a raw DV stream header\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"incorrect bit\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"rawdv-hurry-up\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Realtime DV Source: %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_DV = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca %struct.TYPE_19__, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = call i32 @demux_IsPathExtension(%struct.TYPE_21__* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %2, align 4
  br label %250

24:                                               ; preds = %16, %1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @DV_PAL_FRAME_SIZE, align 8
  %29 = call i64 @vlc_stream_Peek(i32 %27, i32** %6, i64 %28)
  %30 = load i64, i64* @DV_NTSC_FRAME_SIZE, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = call i32 @msg_Err(%struct.TYPE_21__* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %2, align 4
  br label %250

36:                                               ; preds = %24
  %37 = load i32*, i32** %6, align 8
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @GetDWBE(i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 29
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 8
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 28
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 31
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 24
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 8
  store i32 %61, i32* %8, align 4
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %36
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = call i32 @msg_Warn(%struct.TYPE_21__* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %68, i32* %2, align 4
  br label %250

69:                                               ; preds = %36
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 31
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 31
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = call i32 @msg_Warn(%struct.TYPE_21__* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %2, align 4
  br label %250

82:                                               ; preds = %69
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @GetDWBE(i32* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32* %86, i32** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = shl i32 %87, 5
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 29
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 3
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 31
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 %97, 5
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = ashr i32 %99, 29
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = shl i32 %102, 3
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = ashr i32 %104, 31
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 %107, 5
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = ashr i32 %109, 29
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 5
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 3
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 31
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 6
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 %117, 5
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = ashr i32 %119, 29
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 7
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 72
  store i32* %123, i32** %6, align 8
  %124 = call %struct.TYPE_22__* @malloc(i32 88)
  store %struct.TYPE_22__* %124, %struct.TYPE_22__** %5, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  store %struct.TYPE_22__* %124, %struct.TYPE_22__** %126, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %128 = icmp ne %struct.TYPE_22__* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %82
  %130 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %130, i32* %2, align 4
  br label %250

131:                                              ; preds = %82
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = call i64 @var_CreateGetBool(%struct.TYPE_21__* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 9
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %143 = call i32 @msg_Dbg(%struct.TYPE_21__* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %142)
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %131
  %152 = load i64, i64* @DV_PAL_FRAME_SIZE, align 8
  br label %155

153:                                              ; preds = %131
  %154 = load i64, i64* @DV_NTSC_FRAME_SIZE, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i64 [ %152, %151 ], [ %154, %153 ]
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 8
  store i64 %156, i64* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, double 2.500000e+01, double 2.997000e+01
  %164 = fptosi double %163 to i32
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 7
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 5
  store i32* null, i32** %170, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 3
  store i32* null, i32** %172, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 6
  store i64 0, i64* %174, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 4
  %177 = load i32, i32* @VIDEO_ES, align 4
  %178 = load i32, i32* @VLC_CODEC_DV, align 4
  %179 = call i32 @es_format_Init(%struct.TYPE_16__* %176, i32 %177, i32 %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  store i32 720, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 576, i32 480
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  store i32 %188, i32* %192, align 4
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  store i32 %197, i32* %201, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 3
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 4
  %216 = call i8* @es_out_Add(i32 %213, %struct.TYPE_16__* %215)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 5
  store i32* %217, i32** %219, align 8
  %220 = load i32*, i32** %7, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 480
  %222 = getelementptr inbounds i32, i32* %221, i64 3840
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  store i32* %223, i32** %6, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 80
  br i1 %226, label %227, label %242

227:                                              ; preds = %155
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 2
  %230 = load i32*, i32** %6, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = call i32 @dv_get_audio_format(%struct.TYPE_16__* %229, i32* %231)
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 2
  %238 = call i8* @es_out_Add(i32 %235, %struct.TYPE_16__* %237)
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 3
  store i32* %239, i32** %241, align 8
  br label %242

242:                                              ; preds = %227, %155
  %243 = load i32, i32* @Demux, align 4
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @Control, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %242, %129, %78, %65, %32, %22
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @demux_IsPathExtension(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @vlc_stream_Peek(i32, i32**, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_22__* @malloc(i32) #1

declare dso_local i64 @var_CreateGetBool(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i8*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i8* @es_out_Add(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @dv_get_audio_format(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
