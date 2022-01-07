; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_wav.c_AddStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_wav.c_AddStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_14__, i8**, i8**, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_23__, i8*, %struct.TYPE_16__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@AUDIO_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"not an audio stream\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can't add more than 1 stream\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"adding %i input channels, %iHz\00", align 1
@pi_vlc_chan_order_wg4 = common dso_local global i32* null, align 8
@pi_channels_in = common dso_local global i32* null, align 8
@pi_channels_out = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"channel mask: %x, reordering: %u\00", align 1
@WAVE_FORMAT_EXTENSIBLE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)* @AddStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddStream(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %13 = bitcast %struct.TYPE_23__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 48, i1 false)
  %14 = bitcast i8* %13 to %struct.TYPE_23__*
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i32 16, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 128, i32* %17, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %8, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AUDIO_ES, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Dbg(%struct.TYPE_19__* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %285

35:                                               ; preds = %2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Dbg(%struct.TYPE_19__* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %3, align 4
  br label %285

44:                                               ; preds = %35
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Dbg(%struct.TYPE_19__* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %125

68:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %102, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %70, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %69
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %83, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %77
  %92 = load i32*, i32** @pi_channels_in, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %91, %77
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %69

105:                                              ; preds = %69
  %106 = load i32*, i32** @pi_channels_in, align 8
  %107 = load i32, i32* @pi_channels_out, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @aout_CheckChannelReorder(i32* %106, i32 %107, i32 %110, i32 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Dbg(%struct.TYPE_19__* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %105, %44
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @fourcc_to_wf_tag(i32 %130, i32* %10)
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 2
  %139 = zext i1 %138 to i32
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  store i32 %139, i32* %11, align 4
  %142 = call i8* @VLC_FOURCC(i8 signext 82, i8 signext 73, i8 signext 70, i8 signext 70)
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 6
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  store i8* %142, i8** %146, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 6
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = call i32 @SetDWLE(i8** %150, i32 0)
  %152 = call i8* @VLC_FOURCC(i8 signext 87, i8 signext 65, i8 signext 86, i8 signext 69)
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 6
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 2
  store i8* %152, i8** %156, align 8
  %157 = call i8* @VLC_FOURCC(i8 signext 102, i8 signext 109, i8 signext 116, i8 signext 32)
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 6
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 3
  store i8* %157, i8** %161, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 6
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 40, i32 16
  %170 = call i32 @SetDWLE(i8** %165, i32 %169)
  %171 = call i8* @VLC_FOURCC(i8 signext 100, i8 signext 97, i8 signext 116, i8 signext 97)
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 5
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  store i8* %171, i8** %175, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 5
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  %180 = call i32 @SetDWLE(i8** %179, i32 0)
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 4
  %183 = call i32 @memset(%struct.TYPE_14__* %182, i32 0, i32 4)
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 6
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %125
  %189 = load i32, i32* @WAVE_FORMAT_EXTENSIBLE, align 4
  br label %192

190:                                              ; preds = %125
  %191 = load i32, i32* %10, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  %194 = call i32 @SetWLE(i32* %185, i32 %193)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @SetWLE(i32* %196, i32 %202)
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @SetDWLE(i8** %205, i32 %211)
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %218, %224
  %226 = sdiv i32 %225, 8
  store i32 %226, i32* %9, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 3
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %229, %235
  %237 = call i32 @SetDWLE(i8** %228, i32 %236)
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 2
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @SetWLE(i32* %239, i32 %240)
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @SetWLE(i32* %243, i32 %249)
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = call i32 @SetWLE(i32* %252, i32 22)
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @SetWLE(i32* %257, i32 %263)
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @SetDWLE(i8** %267, i32 %270)
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = bitcast %struct.TYPE_23__* %274 to i8*
  %276 = bitcast %struct.TYPE_23__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %275, i8* align 4 %276, i64 48, i1 false)
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 1
  store i32 %277, i32* %281, align 4
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  store i32 1, i32* %283, align 8
  %284 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %192, %40, %31
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_19__*, i8*, ...) #2

declare dso_local i32 @aout_CheckChannelReorder(i32*, i32, i32, i32) #2

declare dso_local i32 @fourcc_to_wf_tag(i32, i32*) #2

declare dso_local i8* @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i32 @SetDWLE(i8**, i32) #2

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @SetWLE(i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
