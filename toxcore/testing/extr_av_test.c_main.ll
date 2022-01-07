; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.toxav_thread_data = type { i64, i32, i32*, i32*, i32, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.PaStreamParameters = type { i64, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/zero\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"a:b:v:x:o:dh\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid value for argument: 'b'\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid value for argument: 'x'\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Invalid value for argument: 'o'\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Required audio input file!\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Required video input file!\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s doesn't seem to be a regular file!\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Device under index: %ld invalid\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Using audio device: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Using audio file: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Using video file: %s\0A\00", align 1
@TEST_TRANSFER_A = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"\0ATrying audio enc/dec...\0A\00", align 1
@TOXAV_ERR_CALL_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"toxav_call failed: %d\0A\00", align 1
@TOXAV_ERR_ANSWER_OK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"toxav_answer failed: %d\0A\00", align 1
@SFM_READ = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"Failed to open the file.\0A\00", align 1
@iterate_toxav = common dso_local global i32 0, align 4
@paInt16 = common dso_local global i32 0, align 4
@adout = common dso_local global i32 0, align 4
@paNoFlag = common dso_local global i32 0, align 4
@paNoError = common dso_local global i64 0, align 8
@pa_write_thread = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"Sample rate %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Error sending frame of size %ld: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Played file in: %lu; stopping stream...\0A\00", align 1
@TOXAV_CALL_CONTROL_CANCEL = common dso_local global i32 0, align 4
@TOXAV_ERR_CALL_CONTROL_OK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"toxav_call_control failed: %d\0A\00", align 1
@TOXAV_FRIEND_CALL_STATE_FINISHED = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"Success!\00", align 1
@TEST_TRANSFER_V = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [26 x i8] c"\0ATrying video enc/dec...\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Failed to open video file: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Stopping decode thread\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"\0ATest successful!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.toxav_thread_data, align 8
  %20 = alloca %struct.toxav_thread_data, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_5__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [5760 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.toxav_thread_data, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.PaStreamParameters, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.toxav_thread_data, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i32 (...) @Pa_Initialize()
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 -1, i64* %9, align 8
  store i32 20, i32* %10, align 4
  store i32 10, i32* %11, align 4
  br label %52

52:                                               ; preds = %92, %81, %69, %68, %56, %2
  %53 = load i32, i32* %4, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = call i32 @getopt(i32 %53, i8** %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  switch i32 %55, label %103 [
    i32 97, label %56
    i32 98, label %58
    i32 118, label %69
    i32 120, label %71
    i32 111, label %82
    i32 100, label %93
    i32 104, label %95
    i32 63, label %100
    i32 -1, label %102
  ]

56:                                               ; preds = %52
  %57 = load i8*, i8** @optarg, align 8
  store i8* %57, i8** %7, align 8
  br label %52

58:                                               ; preds = %52
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i8* @strtol(i8* %59, i8** %12, i32 10)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %58
  br label %52

69:                                               ; preds = %52
  %70 = load i8*, i8** @optarg, align 8
  store i8* %70, i8** %8, align 8
  br label %52

71:                                               ; preds = %52
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i8* @strtol(i8* %72, i8** %13, i32 10)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %71
  br label %52

82:                                               ; preds = %52
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i8* @strtol(i8* %83, i8** %14, i32 10)
  %85 = ptrtoint i8* %84 to i64
  store i64 %85, i64* %9, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %82
  br label %52

93:                                               ; preds = %52
  %94 = call i32 (...) @print_audio_devices()
  store i32 %94, i32* %3, align 4
  br label %539

95:                                               ; preds = %52
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @print_help(i8* %98)
  store i32 %99, i32* %3, align 4
  br label %539

100:                                              ; preds = %52
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %52
  br label %103

103:                                              ; preds = %102, %52
  %104 = load i8*, i8** %7, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %103
  %110 = load i8*, i8** %8, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %109
  %116 = load i8*, i8** %7, align 8
  %117 = call i64 @stat(i8* %116, %struct.stat* %6)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @S_ISREG(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119, %115
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %125)
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %119
  %129 = load i8*, i8** %8, align 8
  %130 = call i64 @stat(i8* %129, %struct.stat* %6)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @S_ISREG(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132, %128
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %138)
  %140 = call i32 @exit(i32 1) #3
  unreachable

141:                                              ; preds = %132
  %142 = load i64, i64* %9, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i64 (...) @Pa_GetDefaultOutputDevice()
  store i64 %145, i64* %9, align 8
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i64, i64* %9, align 8
  %148 = call %struct.TYPE_6__* @Pa_GetDeviceInfo(i64 %147)
  store %struct.TYPE_6__* %148, %struct.TYPE_6__** %15, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %150 = icmp ne %struct.TYPE_6__* %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @stderr, align 4
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @fprintf(i32 %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %153)
  store i32 1, i32* %3, align 4
  br label %539

155:                                              ; preds = %146
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %158)
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %160)
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %162)
  %164 = call i32 @initialize_tox(i32** %16, i32** %17, %struct.toxav_thread_data* %19, i32** %18, %struct.toxav_thread_data* %20)
  %165 = load i64, i64* @TEST_TRANSFER_A, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %404

167:                                              ; preds = %155
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %169 = call i32 @memset(%struct.toxav_thread_data* %19, i32 0, i32 56)
  %170 = call i32 @memset(%struct.toxav_thread_data* %20, i32 0, i32 56)
  %171 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %19, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @pthread_mutex_init(i32 %172, i32* null)
  %174 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @pthread_mutex_init(i32 %175, i32* null)
  %177 = call i8* @rb_new(i32 16)
  %178 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %19, i32 0, i32 5
  store i8* %177, i8** %178, align 8
  %179 = call i8* @rb_new(i32 16)
  %180 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 5
  store i8* %179, i8** %180, align 8
  %181 = load i32*, i32** %17, align 8
  %182 = call i32 @toxav_call(i32* %181, i32 0, i32 48, i32 0, i32* %23)
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* @TOXAV_ERR_CALL_OK, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %167
  %187 = load i32, i32* %23, align 4
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %187)
  %189 = call i32 @exit(i32 1) #3
  unreachable

190:                                              ; preds = %167
  br label %191

191:                                              ; preds = %196, %190
  %192 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i32*, i32** %16, align 8
  %198 = load i32*, i32** %17, align 8
  %199 = load i32*, i32** %18, align 8
  %200 = call i32 @iterate_tox(i32* %197, i32* %198, i32* %199)
  br label %191

201:                                              ; preds = %191
  %202 = load i32*, i32** %18, align 8
  %203 = call i32 @toxav_answer(i32* %202, i32 0, i32 48, i32 0, i32* %24)
  %204 = load i32, i32* %24, align 4
  %205 = load i32, i32* @TOXAV_ERR_ANSWER_OK, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i32, i32* %24, align 4
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %208)
  %210 = call i32 @exit(i32 1) #3
  unreachable

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %216, %211
  %213 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %19, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i32*, i32** %16, align 8
  %218 = load i32*, i32** %17, align 8
  %219 = load i32*, i32** %18, align 8
  %220 = call i32 @iterate_tox(i32* %217, i32* %218, i32* %219)
  br label %212

221:                                              ; preds = %212
  %222 = load i8*, i8** %7, align 8
  %223 = load i32, i32* @SFM_READ, align 4
  %224 = call i32* @sf_open(i8* %222, i32 %223, %struct.TYPE_5__* %22)
  store i32* %224, i32** %21, align 8
  %225 = load i32*, i32** %21, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %229 = call i32 @exit(i32 1) #3
  unreachable

230:                                              ; preds = %221
  %231 = call i32 @time(i32* null)
  store i32 %231, i32* %26, align 4
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sdiv i32 %233, %235
  %237 = add nsw i32 %236, 2
  store i32 %237, i32* %27, align 4
  %238 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 0
  store i64 0, i64* %238, align 8
  %239 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 1
  store i32 0, i32* %239, align 8
  %240 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 2
  %241 = load i32*, i32** %18, align 8
  store i32* %241, i32** %240, align 8
  %242 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 3
  %243 = load i32*, i32** %17, align 8
  store i32* %243, i32** %242, align 8
  %244 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 4
  store i32 0, i32* %244, align 8
  %245 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 5
  store i8* null, i8** %245, align 8
  %246 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 6
  store i32 0, i32* %246, align 8
  %247 = load i32, i32* @iterate_toxav, align 4
  %248 = call i32 @pthread_create(i32* %29, i32* null, i32 %247, %struct.toxav_thread_data* %28)
  %249 = load i32, i32* %29, align 4
  %250 = call i32 @pthread_detach(i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %10, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sdiv i32 %254, 1000
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %255, %257
  store i32 %258, i32* %30, align 4
  %259 = load i64, i64* %9, align 8
  %260 = getelementptr inbounds %struct.PaStreamParameters, %struct.PaStreamParameters* %31, i32 0, i32 0
  store i64 %259, i64* %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.PaStreamParameters, %struct.PaStreamParameters* %31, i32 0, i32 1
  store i32 %262, i32* %263, align 8
  %264 = load i32, i32* @paInt16, align 4
  %265 = getelementptr inbounds %struct.PaStreamParameters, %struct.PaStreamParameters* %31, i32 0, i32 4
  store i32 %264, i32* %265, align 4
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = getelementptr inbounds %struct.PaStreamParameters, %struct.PaStreamParameters* %31, i32 0, i32 3
  store i32 %268, i32* %269, align 8
  %270 = getelementptr inbounds %struct.PaStreamParameters, %struct.PaStreamParameters* %31, i32 0, i32 2
  store i32* null, i32** %270, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %30, align 4
  %274 = load i32, i32* @paNoFlag, align 4
  %275 = call i64 @Pa_OpenStream(i32* @adout, i32* null, %struct.PaStreamParameters* %31, i32 %272, i32 %273, i32 %274, i32* null, i32* null)
  store i64 %275, i64* %32, align 8
  %276 = load i64, i64* %32, align 8
  %277 = load i64, i64* @paNoError, align 8
  %278 = icmp eq i64 %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load i32, i32* @adout, align 4
  %282 = call i64 @Pa_StartStream(i32 %281)
  store i64 %282, i64* %32, align 8
  %283 = load i64, i64* %32, align 8
  %284 = load i64, i64* @paNoError, align 8
  %285 = icmp eq i64 %283, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @assert(i32 %286)
  %288 = load i32, i32* @pa_write_thread, align 4
  %289 = call i32 @pthread_create(i32* %33, i32* null, i32 %288, %struct.toxav_thread_data* %20)
  %290 = load i32, i32* %33, align 4
  %291 = call i32 @pthread_detach(i32 %290)
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %327, %230
  %296 = load i32, i32* %26, align 4
  %297 = load i32, i32* %27, align 4
  %298 = add nsw i32 %296, %297
  %299 = call i32 @time(i32* null)
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %341

301:                                              ; preds = %295
  %302 = call i64 (...) @current_time_monotonic()
  store i64 %302, i64* %34, align 8
  %303 = load i32*, i32** %21, align 8
  %304 = getelementptr inbounds [5760 x i32], [5760 x i32]* %25, i64 0, i64 0
  %305 = load i32, i32* %30, align 4
  %306 = call i32 @sf_read_short(i32* %303, i32* %304, i32 %305)
  store i32 %306, i32* %35, align 4
  %307 = load i32, i32* %35, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %327

309:                                              ; preds = %301
  %310 = load i32*, i32** %17, align 8
  %311 = getelementptr inbounds [5760 x i32], [5760 x i32]* %25, i64 0, i64 0
  %312 = load i32, i32* %35, align 4
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = sdiv i32 %312, %314
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @toxav_audio_send_frame(i32* %310, i32 0, i32* %311, i32 %315, i32 %317, i32 %319, i32* %36)
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %309
  %323 = load i32, i32* %35, align 4
  %324 = load i32, i32* %36, align 4
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %309
  br label %327

327:                                              ; preds = %326, %301
  %328 = load i32*, i32** %16, align 8
  %329 = load i32*, i32** %17, align 8
  %330 = load i32*, i32** %18, align 8
  %331 = call i32 @iterate_tox(i32* %328, i32* %329, i32* %330)
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = call i64 (...) @current_time_monotonic()
  %335 = load i64, i64* %34, align 8
  %336 = sub nsw i64 %334, %335
  %337 = sub nsw i64 %333, %336
  %338 = sub nsw i64 %337, 1
  %339 = call i32 @abs(i64 %338)
  %340 = call i32 @c_sleep(i32 %339)
  br label %295

341:                                              ; preds = %295
  %342 = call i32 @time(i32* null)
  %343 = load i32, i32* %26, align 4
  %344 = sub nsw i32 %342, %343
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %344)
  %346 = load i32, i32* @adout, align 4
  %347 = call i32 @Pa_StopStream(i32 %346)
  %348 = load i32*, i32** %21, align 8
  %349 = call i32 @sf_close(i32* %348)
  %350 = load i32*, i32** %17, align 8
  %351 = load i32, i32* @TOXAV_CALL_CONTROL_CANCEL, align 4
  %352 = call i32 @toxav_call_control(i32* %350, i32 0, i32 %351, i32* %37)
  %353 = load i32, i32* %37, align 4
  %354 = load i32, i32* @TOXAV_ERR_CALL_CONTROL_OK, align 4
  %355 = icmp ne i32 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %341
  %357 = load i32, i32* %37, align 4
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %357)
  %359 = call i32 @exit(i32 1) #3
  unreachable

360:                                              ; preds = %341
  %361 = load i32*, i32** %16, align 8
  %362 = load i32*, i32** %17, align 8
  %363 = load i32*, i32** %18, align 8
  %364 = call i32 @iterate_tox(i32* %361, i32* %362, i32* %363)
  %365 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @TOXAV_FRIEND_CALL_STATE_FINISHED, align 8
  %368 = icmp eq i64 %366, %367
  %369 = zext i1 %368 to i32
  %370 = call i32 @assert(i32 %369)
  %371 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 1
  store i32 -1, i32* %371, align 8
  br label %372

372:                                              ; preds = %376, %360
  %373 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %28, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 1
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = call i32 (...) @pthread_yield()
  br label %372

378:                                              ; preds = %372
  %379 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %19, i32 0, i32 6
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @pthread_mutex_destroy(i32 %380)
  %382 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 6
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @pthread_mutex_destroy(i32 %383)
  store i8* null, i8** %38, align 8
  br label %385

385:                                              ; preds = %390, %378
  %386 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %19, i32 0, i32 5
  %387 = load i8*, i8** %386, align 8
  %388 = call i64 @rb_read(i8* %387, i8** %38)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %385
  %391 = load i8*, i8** %38, align 8
  %392 = call i32 @free(i8* %391)
  br label %385

393:                                              ; preds = %385
  br label %394

394:                                              ; preds = %399, %393
  %395 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 5
  %396 = load i8*, i8** %395, align 8
  %397 = call i64 @rb_read(i8* %396, i8** %38)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %394
  %400 = load i8*, i8** %38, align 8
  %401 = call i32 @free(i8* %400)
  br label %394

402:                                              ; preds = %394
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %404

404:                                              ; preds = %402, %155
  %405 = load i64, i64* @TEST_TRANSFER_V, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %522

407:                                              ; preds = %404
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  %409 = call i32 @memset(%struct.toxav_thread_data* %19, i32 0, i32 56)
  %410 = call i32 @memset(%struct.toxav_thread_data* %20, i32 0, i32 56)
  %411 = load i32*, i32** %17, align 8
  %412 = call i32 @toxav_call(i32* %411, i32 0, i32 0, i32 2000, i32* %39)
  %413 = load i32, i32* %39, align 4
  %414 = load i32, i32* @TOXAV_ERR_CALL_OK, align 4
  %415 = icmp ne i32 %413, %414
  br i1 %415, label %416, label %420

416:                                              ; preds = %407
  %417 = load i32, i32* %39, align 4
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %417)
  %419 = call i32 @exit(i32 1) #3
  unreachable

420:                                              ; preds = %407
  br label %421

421:                                              ; preds = %426, %420
  %422 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %423, 0
  %425 = xor i1 %424, true
  br i1 %425, label %426, label %431

426:                                              ; preds = %421
  %427 = load i32*, i32** %16, align 8
  %428 = load i32*, i32** %17, align 8
  %429 = load i32*, i32** %18, align 8
  %430 = call i32 @iterate_tox(i32* %427, i32* %428, i32* %429)
  br label %421

431:                                              ; preds = %421
  %432 = load i32*, i32** %18, align 8
  %433 = call i32 @toxav_answer(i32* %432, i32 0, i32 0, i32 5000, i32* %40)
  %434 = load i32, i32* %40, align 4
  %435 = load i32, i32* @TOXAV_ERR_ANSWER_OK, align 4
  %436 = icmp ne i32 %434, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %431
  %438 = load i32, i32* %40, align 4
  %439 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %438)
  %440 = call i32 @exit(i32 1) #3
  unreachable

441:                                              ; preds = %431
  %442 = load i32*, i32** %16, align 8
  %443 = load i32*, i32** %17, align 8
  %444 = load i32*, i32** %18, align 8
  %445 = call i32 @iterate_tox(i32* %442, i32* %443, i32* %444)
  %446 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 0
  store i64 0, i64* %446, align 8
  %447 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 1
  store i32 0, i32* %447, align 8
  %448 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 2
  %449 = load i32*, i32** %18, align 8
  store i32* %449, i32** %448, align 8
  %450 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 3
  %451 = load i32*, i32** %17, align 8
  store i32* %451, i32** %450, align 8
  %452 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 4
  store i32 0, i32* %452, align 8
  %453 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 5
  store i8* null, i8** %453, align 8
  %454 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 6
  store i32 0, i32* %454, align 8
  %455 = load i32, i32* @iterate_toxav, align 4
  %456 = call i32 @pthread_create(i32* %42, i32* null, i32 %455, %struct.toxav_thread_data* %41)
  %457 = load i32, i32* %42, align 4
  %458 = call i32 @pthread_detach(i32 %457)
  %459 = load i8*, i8** %8, align 8
  %460 = call i32* @cvCreateFileCapture(i8* %459)
  store i32* %460, i32** %43, align 8
  %461 = load i32*, i32** %43, align 8
  %462 = icmp ne i32* %461, null
  br i1 %462, label %467, label %463

463:                                              ; preds = %441
  %464 = load i8*, i8** %8, align 8
  %465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i8* %464)
  %466 = call i32 @exit(i32 1) #3
  unreachable

467:                                              ; preds = %441
  %468 = call i32 @time(i32* null)
  store i32 %468, i32* %44, align 4
  br label %469

469:                                              ; preds = %480, %467
  %470 = load i32, i32* %44, align 4
  %471 = add nsw i32 %470, 90
  %472 = call i32 @time(i32* null)
  %473 = icmp sgt i32 %471, %472
  br i1 %473, label %474, label %489

474:                                              ; preds = %469
  %475 = load i32*, i32** %43, align 8
  %476 = call i32* @cvQueryFrame(i32* %475)
  store i32* %476, i32** %45, align 8
  %477 = load i32*, i32** %45, align 8
  %478 = icmp ne i32* %477, null
  br i1 %478, label %480, label %479

479:                                              ; preds = %474
  br label %489

480:                                              ; preds = %474
  %481 = load i32*, i32** %17, align 8
  %482 = load i32*, i32** %45, align 8
  %483 = call i32 @send_opencv_img(i32* %481, i32 0, i32* %482)
  %484 = load i32*, i32** %16, align 8
  %485 = load i32*, i32** %17, align 8
  %486 = load i32*, i32** %18, align 8
  %487 = call i32 @iterate_tox(i32* %484, i32* %485, i32* %486)
  %488 = call i32 @c_sleep(i32 10)
  br label %469

489:                                              ; preds = %479, %469
  %490 = call i32 @cvReleaseCapture(i32** %43)
  %491 = load i32*, i32** %17, align 8
  %492 = load i32, i32* @TOXAV_CALL_CONTROL_CANCEL, align 4
  %493 = call i32 @toxav_call_control(i32* %491, i32 0, i32 %492, i32* %46)
  %494 = load i32, i32* %46, align 4
  %495 = load i32, i32* @TOXAV_ERR_CALL_CONTROL_OK, align 4
  %496 = icmp ne i32 %494, %495
  br i1 %496, label %497, label %501

497:                                              ; preds = %489
  %498 = load i32, i32* %46, align 4
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %498)
  %500 = call i32 @exit(i32 1) #3
  unreachable

501:                                              ; preds = %489
  %502 = load i32*, i32** %16, align 8
  %503 = load i32*, i32** %17, align 8
  %504 = load i32*, i32** %18, align 8
  %505 = call i32 @iterate_tox(i32* %502, i32* %503, i32* %504)
  %506 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %20, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @TOXAV_FRIEND_CALL_STATE_FINISHED, align 8
  %509 = icmp eq i64 %507, %508
  %510 = zext i1 %509 to i32
  %511 = call i32 @assert(i32 %510)
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %513 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 1
  store i32 -1, i32* %513, align 8
  br label %514

514:                                              ; preds = %518, %501
  %515 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %41, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  %517 = icmp ne i32 %516, 1
  br i1 %517, label %518, label %520

518:                                              ; preds = %514
  %519 = call i32 (...) @pthread_yield()
  br label %514

520:                                              ; preds = %514
  %521 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %522

522:                                              ; preds = %520, %404
  %523 = load i32*, i32** %17, align 8
  %524 = call i32* @toxav_get_tox(i32* %523)
  store i32* %524, i32** %47, align 8
  %525 = load i32*, i32** %18, align 8
  %526 = call i32* @toxav_get_tox(i32* %525)
  store i32* %526, i32** %48, align 8
  %527 = load i32*, i32** %18, align 8
  %528 = call i32 @toxav_kill(i32* %527)
  %529 = load i32*, i32** %17, align 8
  %530 = call i32 @toxav_kill(i32* %529)
  %531 = load i32*, i32** %48, align 8
  %532 = call i32 @tox_kill(i32* %531)
  %533 = load i32*, i32** %47, align 8
  %534 = call i32 @tox_kill(i32* %533)
  %535 = load i32*, i32** %16, align 8
  %536 = call i32 @tox_kill(i32* %535)
  %537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %538 = call i32 (...) @Pa_Terminate()
  store i32 0, i32* %3, align 4
  br label %539

539:                                              ; preds = %522, %151, %95, %93
  %540 = load i32, i32* %3, align 4
  ret i32 %540
}

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @Pa_Initialize(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @print_audio_devices(...) #1

declare dso_local i32 @print_help(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @Pa_GetDefaultOutputDevice(...) #1

declare dso_local %struct.TYPE_6__* @Pa_GetDeviceInfo(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @initialize_tox(i32**, i32**, %struct.toxav_thread_data*, i32**, %struct.toxav_thread_data*) #1

declare dso_local i32 @memset(%struct.toxav_thread_data*, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32, i32*) #1

declare dso_local i8* @rb_new(i32) #1

declare dso_local i32 @toxav_call(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @iterate_tox(i32*, i32*, i32*) #1

declare dso_local i32 @toxav_answer(i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @sf_open(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @time(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.toxav_thread_data*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i64 @Pa_OpenStream(i32*, i32*, %struct.PaStreamParameters*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @Pa_StartStream(i32) #1

declare dso_local i64 @current_time_monotonic(...) #1

declare dso_local i32 @sf_read_short(i32*, i32*, i32) #1

declare dso_local i32 @toxav_audio_send_frame(i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @c_sleep(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @Pa_StopStream(i32) #1

declare dso_local i32 @sf_close(i32*) #1

declare dso_local i32 @toxav_call_control(i32*, i32, i32, i32*) #1

declare dso_local i32 @pthread_yield(...) #1

declare dso_local i32 @pthread_mutex_destroy(i32) #1

declare dso_local i64 @rb_read(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @cvCreateFileCapture(i8*) #1

declare dso_local i32* @cvQueryFrame(i32*) #1

declare dso_local i32 @send_opencv_img(i32*, i32, i32*) #1

declare dso_local i32 @cvReleaseCapture(i32**) #1

declare dso_local i32* @toxav_get_tox(i32*) #1

declare dso_local i32 @toxav_kill(i32*) #1

declare dso_local i32 @tox_kill(i32*) #1

declare dso_local i32 @Pa_Terminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
