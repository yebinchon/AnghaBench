; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_jack.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_jack.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i8**, i8**, i8**, i32, i32, i32, i32, i32*, i32, i64, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"jack-input-use-vlc-pace\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"jack-input-auto-connect\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"vlc-input-%d\00", align 1
@JackNullOption = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to connect to JACK server\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vlc_in_%d\00", align 1
@JACK_DEFAULT_AUDIO_TYPE = common dso_local global i32 0, align 4
@JackPortIsInput = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to register a JACK port\00", align 1
@Process = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to activate JACK client\00", align 1
@JackPortIsOutput = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_FL32 = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %4, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %25, i32* %2, align 4
  br label %479

26:                                               ; preds = %1
  %27 = load i32, i32* @Demux, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @Control, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call %struct.TYPE_17__* @vlc_obj_calloc(i32* %33, i32 1, i32 80)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %479

41:                                               ; preds = %26
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = call i32 @Parse(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = load i32, i32* @VLC_VAR_BOOL, align 4
  %46 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @var_Create(%struct.TYPE_16__* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = load i32, i32* @VLC_VAR_BOOL, align 4
  %51 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @var_Create(%struct.TYPE_16__* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %55 = call i32 (...) @getpid()
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %58 = load i32, i32* @JackNullOption, align 4
  %59 = call i32* @jack_client_open(i8* %57, i32 %58, i32* null)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 9
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 9
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %41
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = call i32 @msg_Err(%struct.TYPE_16__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %2, align 4
  br label %479

70:                                               ; preds = %41
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 11
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = call i32 @Port_finder(%struct.TYPE_16__* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %75
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store i32 2, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = call i8* @malloc(i32 %103)
  %105 = bitcast i8* %104 to i8**
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  store i8** %105, i8*** %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = icmp eq i8** %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 9
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @jack_client_close(i32* %115)
  %117 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %117, i32* %2, align 4
  br label %479

118:                                              ; preds = %97
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 9
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @jack_get_sample_rate(i32* %124)
  %126 = mul nsw i32 %121, %125
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32* @jack_ringbuffer_create(i32 %129)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 12
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 12
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %118
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load i8**, i8*** %139, align 8
  %141 = call i32 @free(i8** %140)
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 9
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @jack_client_close(i32* %144)
  %146 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %146, i32* %2, align 4
  br label %479

147:                                              ; preds = %118
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %197, %147
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ult i32 %149, %152
  br i1 %153, label %154, label %200

154:                                              ; preds = %148
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  %158 = call i32 @snprintf(i8* %155, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 9
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %163 = load i32, i32* @JACK_DEFAULT_AUDIO_TYPE, align 4
  %164 = load i32, i32* @JackPortIsInput, align 4
  %165 = call i8* @jack_port_register(i32* %161, i8* %162, i32 %163, i32 %164, i32 0)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %165, i8** %171, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i8**, i8*** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %196

180:                                              ; preds = %154
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = call i32 @msg_Err(%struct.TYPE_16__* %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 12
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @jack_ringbuffer_free(i32* %185)
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i8**, i8*** %188, align 8
  %190 = call i32 @free(i8** %189)
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 9
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @jack_client_close(i32* %193)
  %195 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %195, i32* %2, align 4
  br label %479

196:                                              ; preds = %154
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %9, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %148

200:                                              ; preds = %148
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = trunc i64 %205 to i32
  %207 = call i8* @malloc(i32 %206)
  %208 = bitcast i8* %207 to i8**
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 3
  store i8** %208, i8*** %210, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 3
  %213 = load i8**, i8*** %212, align 8
  %214 = icmp eq i8** %213, null
  br i1 %214, label %215, label %251

215:                                              ; preds = %200
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %234, %215
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ult i32 %217, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %216
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 9
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 2
  %228 = load i8**, i8*** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @jack_port_unregister(i32* %225, i8* %232)
  br label %234

234:                                              ; preds = %222
  %235 = load i32, i32* %11, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %216

237:                                              ; preds = %216
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 12
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @jack_ringbuffer_free(i32* %240)
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 2
  %244 = load i8**, i8*** %243, align 8
  %245 = call i32 @free(i8** %244)
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 9
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @jack_client_close(i32* %248)
  %250 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %250, i32* %2, align 4
  br label %479

251:                                              ; preds = %200
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 9
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* @Process, align 4
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %257 = call i32 @jack_set_process_callback(i32* %254, i32 %255, %struct.TYPE_16__* %256)
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 9
  %260 = load i32*, i32** %259, align 8
  %261 = call i64 @jack_activate(i32* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %305

263:                                              ; preds = %251
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %265 = call i32 @msg_Err(%struct.TYPE_16__* %264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 3
  %268 = load i8**, i8*** %267, align 8
  %269 = call i32 @free(i8** %268)
  store i32 0, i32* %12, align 4
  br label %270

270:                                              ; preds = %288, %263
  %271 = load i32, i32* %12, align 4
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ult i32 %271, %274
  br i1 %275, label %276, label %291

276:                                              ; preds = %270
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 9
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = load i8**, i8*** %281, align 8
  %283 = load i32, i32* %12, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %282, i64 %284
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @jack_port_unregister(i32* %279, i8* %286)
  br label %288

288:                                              ; preds = %276
  %289 = load i32, i32* %12, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %12, align 4
  br label %270

291:                                              ; preds = %270
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 12
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @jack_ringbuffer_free(i32* %294)
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 2
  %298 = load i8**, i8*** %297, align 8
  %299 = call i32 @free(i8** %298)
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 9
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @jack_client_close(i32* %302)
  %304 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %304, i32* %2, align 4
  br label %479

305:                                              ; preds = %251
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 11
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %346

310:                                              ; preds = %305
  store i32 0, i32* %13, align 4
  br label %311

311:                                              ; preds = %342, %310
  %312 = load i32, i32* %13, align 4
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %345

317:                                              ; preds = %311
  %318 = load i32, i32* %13, align 4
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = srem i32 %318, %321
  store i32 %322, i32* %14, align 4
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 9
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 4
  %328 = load i8**, i8*** %327, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8*, i8** %328, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 2
  %335 = load i8**, i8*** %334, align 8
  %336 = load i32, i32* %14, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8*, i8** %335, i64 %337
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 @jack_port_name(i8* %339)
  %341 = call i32 @jack_connect(i32* %325, i8* %332, i32 %340)
  br label %342

342:                                              ; preds = %317
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %13, align 4
  br label %311

345:                                              ; preds = %311
  br label %346

346:                                              ; preds = %345, %305
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %348 = call i64 @var_GetBool(%struct.TYPE_16__* %347, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %410

350:                                              ; preds = %346
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 11
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %410, label %355

355:                                              ; preds = %350
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 9
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* @JackPortIsOutput, align 4
  %360 = call i8** @jack_get_ports(i32* %358, i32* null, i32* null, i32 %359)
  store i8** %360, i8*** %15, align 8
  br label %361

361:                                              ; preds = %373, %355
  %362 = load i8**, i8*** %15, align 8
  %363 = icmp ne i8** %362, null
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load i8**, i8*** %15, align 8
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %365, i64 %367
  %369 = load i8*, i8** %368, align 8
  %370 = icmp ne i8* %369, null
  br label %371

371:                                              ; preds = %364, %361
  %372 = phi i1 [ false, %361 ], [ %370, %364 ]
  br i1 %372, label %373, label %376

373:                                              ; preds = %371
  %374 = load i32, i32* %7, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %7, align 4
  br label %361

376:                                              ; preds = %371
  store i32 0, i32* %16, align 4
  br label %377

377:                                              ; preds = %404, %376
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %7, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %407

381:                                              ; preds = %377
  %382 = load i32, i32* %16, align 4
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = srem i32 %382, %385
  store i32 %386, i32* %17, align 4
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 9
  %389 = load i32*, i32** %388, align 8
  %390 = load i8**, i8*** %15, align 8
  %391 = load i32, i32* %16, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8*, i8** %390, i64 %392
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 2
  %397 = load i8**, i8*** %396, align 8
  %398 = load i32, i32* %17, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8*, i8** %397, i64 %399
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @jack_port_name(i8* %401)
  %403 = call i32 @jack_connect(i32* %389, i8* %394, i32 %402)
  br label %404

404:                                              ; preds = %381
  %405 = load i32, i32* %16, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %16, align 4
  br label %377

407:                                              ; preds = %377
  %408 = load i8**, i8*** %15, align 8
  %409 = call i32 @free(i8** %408)
  br label %410

410:                                              ; preds = %407, %350, %346
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 9
  %413 = load i32*, i32** %412, align 8
  %414 = call i32 @jack_get_buffer_size(i32* %413)
  %415 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 10
  store i32 %414, i32* %416, align 8
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 9
  %419 = load i32*, i32** %418, align 8
  %420 = call i32 @jack_get_sample_rate(i32* %419)
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 5
  store i32 %420, i32* %422, align 8
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 6
  store i32 4, i32* %424, align 4
  %425 = load i32, i32* @AUDIO_ES, align 4
  %426 = load i32, i32* @VLC_CODEC_FL32, align 4
  %427 = call i32 @es_format_Init(%struct.TYPE_15__* %6, i32 %425, i32 %426)
  %428 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  store i32 %430, i32* %432, align 4
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 1
  store i32 %435, i32* %437, align 4
  %438 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %438, i32 0, i32 6
  %440 = load i32, i32* %439, align 4
  %441 = mul nsw i32 %440, 8
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 2
  store i32 %441, i32* %443, align 4
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = sdiv i32 %446, 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 3
  store i32 %447, i32* %449, align 4
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 4
  %456 = mul nsw i32 %452, %455
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = mul nsw i32 %456, %459
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 %460, i32* %461, align 4
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %462, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  %465 = call i32 @es_out_Add(i32* %464, %struct.TYPE_15__* %6)
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 8
  store i32 %465, i32* %467, align 4
  %468 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %468, i32 0, i32 7
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @date_Init(i32* %469, i32 %472, i32 1)
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %474, i32 0, i32 7
  %476 = load i32, i32* @VLC_TICK_0, align 4
  %477 = call i32 @date_Set(i32* %475, i32 %476)
  %478 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %478, i32* %2, align 4
  br label %479

479:                                              ; preds = %410, %291, %237, %180, %137, %112, %66, %39, %24
  %480 = load i32, i32* %2, align 4
  ret i32 %480
}

declare dso_local %struct.TYPE_17__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i32 @Parse(%struct.TYPE_16__*) #1

declare dso_local i32 @var_Create(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @jack_client_open(i8*, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @Port_finder(%struct.TYPE_16__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @jack_client_close(i32*) #1

declare dso_local i32* @jack_ringbuffer_create(i32) #1

declare dso_local i32 @jack_get_sample_rate(i32*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @jack_port_register(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @jack_ringbuffer_free(i32*) #1

declare dso_local i32 @jack_port_unregister(i32*, i8*) #1

declare dso_local i32 @jack_set_process_callback(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @jack_activate(i32*) #1

declare dso_local i32 @jack_connect(i32*, i8*, i32) #1

declare dso_local i32 @jack_port_name(i8*) #1

declare dso_local i64 @var_GetBool(%struct.TYPE_16__*, i8*) #1

declare dso_local i8** @jack_get_ports(i32*, i32*, i32*, i32) #1

declare dso_local i32 @jack_get_buffer_size(i32*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @es_out_Add(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
