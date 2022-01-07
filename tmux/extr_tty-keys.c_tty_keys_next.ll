; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_next.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, %struct.client*, i32, %struct.TYPE_2__ }
%struct.client = type { i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.timeval = type { i32, i32 }
%struct.mouse_event = type { i32 }
%struct.key_event = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: keys are %zu (%.*s)\00", align 1
@KEYC_UNKNOWN = common dso_local global i32 0, align 4
@KEYC_MOUSE = common dso_local global i32 0, align 4
@KEYC_XTERM = common dso_local global i32 0, align 4
@KEYC_ESCAPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: partial key %.*s\00", align 1
@TTY_TIMER = common dso_local global i32 0, align 4
@global_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"escape-time\00", align 1
@tty_keys_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: complete key %.*s %#llx\00", align 1
@VERASE = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@KEYC_MASK_KEY = common dso_local global i32 0, align 4
@KEYC_MASK_MOD = common dso_local global i32 0, align 4
@KEYC_BSPACE = common dso_local global i32 0, align 4
@KEYC_FOCUS_OUT = common dso_local global i32 0, align 4
@CLIENT_FOCUSED = common dso_local global i32 0, align 4
@KEYC_FOCUS_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: discard key %.*s %#llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_keys_next(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mouse_event, align 4
  %15 = alloca %struct.key_event*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 2
  %18 = load %struct.client*, %struct.client** %17, align 8
  store %struct.client* %18, %struct.client** %4, align 8
  store i32 0, i32* %11, align 4
  %19 = bitcast %struct.mouse_event* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %21 = load %struct.tty*, %struct.tty** %3, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @EVBUFFER_DATA(i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load %struct.tty*, %struct.tty** %3, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @EVBUFFER_LENGTH(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %312

32:                                               ; preds = %1
  %33 = load %struct.client*, %struct.client** %4, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %39, i8* %40)
  %42 = load %struct.tty*, %struct.tty** %3, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @tty_keys_clipboard(%struct.tty* %42, i8* %43, i64 %44, i64* %8)
  switch i32 %45, label %50 [
    i32 0, label %46
    i32 -1, label %48
    i32 1, label %49
  ]

46:                                               ; preds = %32
  %47 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %47, i32* %13, align 4
  br label %200

48:                                               ; preds = %32
  br label %50

49:                                               ; preds = %32
  br label %140

50:                                               ; preds = %32, %48
  %51 = load %struct.tty*, %struct.tty** %3, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @tty_keys_device_attributes(%struct.tty* %51, i8* %52, i64 %53, i64* %8)
  switch i32 %54, label %59 [
    i32 0, label %55
    i32 -1, label %57
    i32 1, label %58
  ]

55:                                               ; preds = %50
  %56 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %56, i32* %13, align 4
  br label %200

57:                                               ; preds = %50
  br label %59

58:                                               ; preds = %50
  br label %140

59:                                               ; preds = %50, %57
  %60 = load %struct.tty*, %struct.tty** %3, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @tty_keys_mouse(%struct.tty* %60, i8* %61, i64 %62, i64* %8, %struct.mouse_event* %14)
  switch i32 %63, label %70 [
    i32 0, label %64
    i32 -1, label %66
    i32 -2, label %67
    i32 1, label %69
  ]

64:                                               ; preds = %59
  %65 = load i32, i32* @KEYC_MOUSE, align 4
  store i32 %65, i32* %13, align 4
  br label %200

66:                                               ; preds = %59
  br label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @KEYC_MOUSE, align 4
  store i32 %68, i32* %13, align 4
  br label %298

69:                                               ; preds = %59
  br label %140

70:                                               ; preds = %59, %66
  br label %71

71:                                               ; preds = %164, %70
  %72 = load %struct.tty*, %struct.tty** %3, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @tty_keys_next1(%struct.tty* %72, i8* %73, i64 %74, i32* %13, i64* %8, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %200

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %140

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 27
  br i1 %88, label %89, label %119

89:                                               ; preds = %84
  %90 = load i64, i64* %7, align 8
  %91 = icmp ugt i64 %90, 1
  br i1 %91, label %92, label %119

92:                                               ; preds = %89
  %93 = load %struct.tty*, %struct.tty** %3, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i64, i64* %7, align 8
  %97 = sub i64 %96, 1
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @tty_keys_next1(%struct.tty* %93, i8* %95, i64 %97, i32* %13, i64* %8, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @KEYC_XTERM, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 27, i32* %13, align 4
  store i64 1, i64* %8, align 8
  br label %200

108:                                              ; preds = %102
  %109 = load i32, i32* @KEYC_ESCAPE, align 4
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %200

114:                                              ; preds = %92
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %140

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118, %89, %84
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 27
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i64, i64* %7, align 8
  %126 = icmp uge i64 %125, 2
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = load i32, i32* @KEYC_ESCAPE, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %13, align 4
  store i64 2, i64* %8, align 8
  br label %139

134:                                              ; preds = %124, %119
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  store i32 %138, i32* %13, align 4
  store i64 1, i64* %8, align 8
  br label %139

139:                                              ; preds = %134, %127
  br label %200

140:                                              ; preds = %117, %83, %69, %58, %49
  %141 = load %struct.client*, %struct.client** %4, align 8
  %142 = getelementptr inbounds %struct.client, %struct.client* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* %7, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %145, i8* %146)
  %148 = load %struct.tty*, %struct.tty** %3, align 8
  %149 = getelementptr inbounds %struct.tty, %struct.tty* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TTY_TIMER, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %140
  %155 = load %struct.tty*, %struct.tty** %3, align 8
  %156 = getelementptr inbounds %struct.tty, %struct.tty* %155, i32 0, i32 3
  %157 = call i64 @evtimer_initialized(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.tty*, %struct.tty** %3, align 8
  %161 = getelementptr inbounds %struct.tty, %struct.tty* %160, i32 0, i32 3
  %162 = call i32 @evtimer_pending(i32* %161, i32* null)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  store i32 1, i32* %11, align 4
  br label %71

165:                                              ; preds = %159, %154
  store i32 0, i32* %2, align 4
  br label %312

166:                                              ; preds = %140
  %167 = load i32, i32* @global_options, align 4
  %168 = call i32 @options_get_number(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = sdiv i32 %169, 1000
  %171 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* %10, align 4
  %173 = srem i32 %172, 1000
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %174, 1000
  %176 = trunc i64 %175 to i32
  %177 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i32 %176, i32* %177, align 4
  %178 = load %struct.tty*, %struct.tty** %3, align 8
  %179 = getelementptr inbounds %struct.tty, %struct.tty* %178, i32 0, i32 3
  %180 = call i64 @event_initialized(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %166
  %183 = load %struct.tty*, %struct.tty** %3, align 8
  %184 = getelementptr inbounds %struct.tty, %struct.tty* %183, i32 0, i32 3
  %185 = call i32 @evtimer_del(i32* %184)
  br label %186

186:                                              ; preds = %182, %166
  %187 = load %struct.tty*, %struct.tty** %3, align 8
  %188 = getelementptr inbounds %struct.tty, %struct.tty* %187, i32 0, i32 3
  %189 = load i32, i32* @tty_keys_callback, align 4
  %190 = load %struct.tty*, %struct.tty** %3, align 8
  %191 = call i32 @evtimer_set(i32* %188, i32 %189, %struct.tty* %190)
  %192 = load %struct.tty*, %struct.tty** %3, align 8
  %193 = getelementptr inbounds %struct.tty, %struct.tty* %192, i32 0, i32 3
  %194 = call i32 @evtimer_add(i32* %193, %struct.timeval* %5)
  %195 = load i32, i32* @TTY_TIMER, align 4
  %196 = load %struct.tty*, %struct.tty** %3, align 8
  %197 = getelementptr inbounds %struct.tty, %struct.tty* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  store i32 0, i32* %2, align 4
  br label %312

200:                                              ; preds = %139, %108, %107, %79, %64, %55, %46
  %201 = load %struct.client*, %struct.client** %4, align 8
  %202 = getelementptr inbounds %struct.client, %struct.client* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i64, i64* %8, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i8*, i8** %6, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %203, i32 %205, i8* %206, i32 %207)
  %209 = load %struct.tty*, %struct.tty** %3, align 8
  %210 = getelementptr inbounds %struct.tty, %struct.tty* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @VERASE, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @_POSIX_VDISABLE, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %200
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @KEYC_MASK_KEY, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* %9, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @KEYC_MASK_MOD, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @KEYC_BSPACE, align 4
  %230 = or i32 %228, %229
  store i32 %230, i32* %13, align 4
  br label %231

231:                                              ; preds = %225, %219, %200
  %232 = load %struct.tty*, %struct.tty** %3, align 8
  %233 = getelementptr inbounds %struct.tty, %struct.tty* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i64, i64* %8, align 8
  %236 = call i32 @evbuffer_drain(i32 %234, i64 %235)
  %237 = load %struct.tty*, %struct.tty** %3, align 8
  %238 = getelementptr inbounds %struct.tty, %struct.tty* %237, i32 0, i32 3
  %239 = call i64 @event_initialized(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load %struct.tty*, %struct.tty** %3, align 8
  %243 = getelementptr inbounds %struct.tty, %struct.tty* %242, i32 0, i32 3
  %244 = call i32 @evtimer_del(i32* %243)
  br label %245

245:                                              ; preds = %241, %231
  %246 = load i32, i32* @TTY_TIMER, align 4
  %247 = xor i32 %246, -1
  %248 = load %struct.tty*, %struct.tty** %3, align 8
  %249 = getelementptr inbounds %struct.tty, %struct.tty* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @KEYC_FOCUS_OUT, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %264

255:                                              ; preds = %245
  %256 = load i32, i32* @CLIENT_FOCUSED, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.tty*, %struct.tty** %3, align 8
  %259 = getelementptr inbounds %struct.tty, %struct.tty* %258, i32 0, i32 2
  %260 = load %struct.client*, %struct.client** %259, align 8
  %261 = getelementptr inbounds %struct.client, %struct.client* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %257
  store i32 %263, i32* %261, align 4
  store i32 1, i32* %2, align 4
  br label %312

264:                                              ; preds = %245
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* @KEYC_FOCUS_IN, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %276

268:                                              ; preds = %264
  %269 = load i32, i32* @CLIENT_FOCUSED, align 4
  %270 = load %struct.tty*, %struct.tty** %3, align 8
  %271 = getelementptr inbounds %struct.tty, %struct.tty* %270, i32 0, i32 2
  %272 = load %struct.client*, %struct.client** %271, align 8
  %273 = getelementptr inbounds %struct.client, %struct.client* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %269
  store i32 %275, i32* %273, align 4
  store i32 1, i32* %2, align 4
  br label %312

276:                                              ; preds = %264
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* @KEYC_UNKNOWN, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %297

281:                                              ; preds = %277
  %282 = call %struct.key_event* @xmalloc(i32 8)
  store %struct.key_event* %282, %struct.key_event** %15, align 8
  %283 = load i32, i32* %13, align 4
  %284 = load %struct.key_event*, %struct.key_event** %15, align 8
  %285 = getelementptr inbounds %struct.key_event, %struct.key_event* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 4
  %286 = load %struct.key_event*, %struct.key_event** %15, align 8
  %287 = getelementptr inbounds %struct.key_event, %struct.key_event* %286, i32 0, i32 1
  %288 = call i32 @memcpy(i32* %287, %struct.mouse_event* %14, i32 4)
  %289 = load %struct.client*, %struct.client** %4, align 8
  %290 = load %struct.key_event*, %struct.key_event** %15, align 8
  %291 = call i32 @server_client_handle_key(%struct.client* %289, %struct.key_event* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %281
  %294 = load %struct.key_event*, %struct.key_event** %15, align 8
  %295 = call i32 @free(%struct.key_event* %294)
  br label %296

296:                                              ; preds = %293, %281
  br label %297

297:                                              ; preds = %296, %277
  store i32 1, i32* %2, align 4
  br label %312

298:                                              ; preds = %67
  %299 = load %struct.client*, %struct.client** %4, align 8
  %300 = getelementptr inbounds %struct.client, %struct.client* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i64, i64* %8, align 8
  %303 = trunc i64 %302 to i32
  %304 = load i8*, i8** %6, align 8
  %305 = load i32, i32* %13, align 4
  %306 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %301, i32 %303, i8* %304, i32 %305)
  %307 = load %struct.tty*, %struct.tty** %3, align 8
  %308 = getelementptr inbounds %struct.tty, %struct.tty* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i64, i64* %8, align 8
  %311 = call i32 @evbuffer_drain(i32 %309, i64 %310)
  store i32 1, i32* %2, align 4
  br label %312

312:                                              ; preds = %298, %297, %268, %255, %186, %165, %31
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i8* @EVBUFFER_DATA(i32) #2

declare dso_local i64 @EVBUFFER_LENGTH(i32) #2

declare dso_local i32 @log_debug(i8*, i32, i32, ...) #2

declare dso_local i32 @tty_keys_clipboard(%struct.tty*, i8*, i64, i64*) #2

declare dso_local i32 @tty_keys_device_attributes(%struct.tty*, i8*, i64, i64*) #2

declare dso_local i32 @tty_keys_mouse(%struct.tty*, i8*, i64, i64*, %struct.mouse_event*) #2

declare dso_local i32 @tty_keys_next1(%struct.tty*, i8*, i64, i32*, i64*, i32) #2

declare dso_local i64 @evtimer_initialized(i32*) #2

declare dso_local i32 @evtimer_pending(i32*, i32*) #2

declare dso_local i32 @options_get_number(i32, i8*) #2

declare dso_local i64 @event_initialized(i32*) #2

declare dso_local i32 @evtimer_del(i32*) #2

declare dso_local i32 @evtimer_set(i32*, i32, %struct.tty*) #2

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #2

declare dso_local i32 @evbuffer_drain(i32, i64) #2

declare dso_local %struct.key_event* @xmalloc(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.mouse_event*, i32) #2

declare dso_local i32 @server_client_handle_key(%struct.client*, %struct.key_event*) #2

declare dso_local i32 @free(%struct.key_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
