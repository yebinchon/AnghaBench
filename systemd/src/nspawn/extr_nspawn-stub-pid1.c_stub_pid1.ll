; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-stub-pid1.c_stub_pid1.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-stub-pid1.c_stub_pid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64 }
%struct.timespec = type { i32 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@__const.stub_pid1.new_environment = private unnamed_addr constant [73 x i8] c"container=systemd-nspawn\00container_uuid=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\00", align 16
@SIG_BLOCK = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@TIOCNOTTY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Failed to surrender controlling terminal: %m\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to fork child pid: %m\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@SD_ID128_STRING_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"(sd-stubinit)\00", align 1
@SIGCHLD = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i64 0, align 8
@SIGRTMIN = common dso_local global i64 0, align 8
@P_ALL = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to reap children: %m\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@RB_AUTOBOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to reboot: %m\00", align 1
@RB_POWER_OFF = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i64 0, align 8
@EXIT_EXCEPTION = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to wait for signal: %m\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Got unexpected signal\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT_USEC = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stub_pid1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [73 x i8], align 16
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.timespec, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %15 = load i64, i64* @USEC_INFINITY, align 8
  store i64 %15, i64* %8, align 8
  %16 = bitcast [73 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([73 x i8], [73 x i8]* @__const.stub_pid1.new_environment, i32 0, i32 0), i64 73, i1 false)
  %17 = call i64 @sigfillset(i32* %5)
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32, i32* @SIG_BLOCK, align 4
  %22 = call i64 @sigprocmask(i32 %21, i32* %5, i32* %6)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32, i32* @STDIN_FILENO, align 4
  %27 = load i32, i32* @TIOCNOTTY, align 4
  %28 = call i32 @ioctl(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ENOTTY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @log_error_errno(i64 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %279

38:                                               ; preds = %31, %1
  %39 = call i64 (...) @fork()
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* @errno, align 8
  %44 = call i32 @log_error_errno(i64 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %279

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @SIG_SETMASK, align 4
  %50 = call i64 @sigprocmask(i32 %49, i32* %6, i32* null)
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = call i32 (...) @setsid()
  store i32 0, i32* %2, align 4
  br label %279

55:                                               ; preds = %45
  %56 = call i32 (...) @reset_all_signal_handlers()
  %57 = call i32 (...) @log_close()
  %58 = call i32 @close_all_fds(i32* null, i32 0)
  %59 = call i32 (...) @log_open()
  %60 = load i32, i32* %3, align 4
  %61 = getelementptr inbounds [73 x i8], [73 x i8]* %11, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 73
  %63 = load i32, i32* @SD_ID128_STRING_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = call i32 @sd_id128_to_string(i32 %60, i8* %66)
  %68 = getelementptr inbounds [73 x i8], [73 x i8]* %11, i64 0, i64 0
  %69 = call i32 @reset_environ(i8* %68, i32 73)
  %70 = call i32 @rename_process(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i64 @sigemptyset(i32* %7)
  %72 = icmp sge i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert_se(i32 %73)
  %75 = load i64, i64* @SIGCHLD, align 8
  %76 = load i64, i64* @SIGINT, align 8
  %77 = load i64, i64* @SIGRTMIN, align 8
  %78 = add nsw i64 %77, 3
  %79 = load i64, i64* @SIGRTMIN, align 8
  %80 = add nsw i64 %79, 4
  %81 = load i64, i64* @SIGRTMIN, align 8
  %82 = add nsw i64 %81, 5
  %83 = load i64, i64* @SIGRTMIN, align 8
  %84 = add nsw i64 %83, 6
  %85 = load i64, i64* @SIGRTMIN, align 8
  %86 = add nsw i64 %85, 13
  %87 = load i64, i64* @SIGRTMIN, align 8
  %88 = add nsw i64 %87, 14
  %89 = load i64, i64* @SIGRTMIN, align 8
  %90 = add nsw i64 %89, 15
  %91 = load i64, i64* @SIGRTMIN, align 8
  %92 = add nsw i64 %91, 16
  %93 = call i64 @sigset_add_many(i32* %7, i64 %75, i64 %76, i64 %78, i64 %80, i64 %82, i64 %84, i64 %86, i64 %88, i64 %90, i64 %92, i32 -1)
  %94 = icmp sge i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert_se(i32 %95)
  br label %97

97:                                               ; preds = %264, %193, %189, %180, %175, %155, %55
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @P_ALL, align 4
  %100 = load i32, i32* @WEXITED, align 4
  %101 = load i32, i32* @WNOHANG, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @waitid(i32 %99, i32 0, %struct.TYPE_5__* %12, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i64, i64* @errno, align 8
  %108 = call i32 @log_error_errno(i64 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %108, i32* %10, align 4
  br label %269

109:                                              ; preds = %97
  %110 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %111 = call i64 @now(i32 %110)
  store i64 %111, i64* %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %109
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %116, %109
  %121 = load i32, i32* %4, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* @RB_AUTOBOOT, align 4
  %125 = call i32 @reboot(i32 %124)
  %126 = load i64, i64* @errno, align 8
  %127 = call i32 @log_error_errno(i64 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 %127, i32* %10, align 4
  br label %269

128:                                              ; preds = %120
  %129 = load i32, i32* %4, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @RB_POWER_OFF, align 4
  %133 = call i32 @reboot(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @CLD_EXITED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %10, align 4
  br label %150

148:                                              ; preds = %140, %135
  %149 = load i32, i32* @EXIT_EXCEPTION, align 4
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %148, %145
  br label %269

151:                                              ; preds = %116
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %97

156:                                              ; preds = %151
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @USEC_INFINITY, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = call i32 @sigwaitinfo(i32* %7, %struct.TYPE_5__* %12)
  store i32 %161, i32* %10, align 4
  br label %168

162:                                              ; preds = %156
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %13, align 8
  %165 = sub nsw i64 %163, %164
  %166 = call i32 @timespec_store(%struct.timespec* %14, i64 %165)
  %167 = call i32 @sigtimedwait(i32* %7, %struct.TYPE_5__* %12, i32 %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %162, %160
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %168
  %172 = load i64, i64* @errno, align 8
  %173 = load i64, i64* @EINTR, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %97

176:                                              ; preds = %171
  %177 = load i64, i64* @errno, align 8
  %178 = load i64, i64* @EAGAIN, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %97

181:                                              ; preds = %176
  %182 = load i64, i64* @errno, align 8
  %183 = call i32 @log_error_errno(i64 %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 %183, i32* %10, align 4
  br label %269

184:                                              ; preds = %168
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @SIGCHLD, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %97

190:                                              ; preds = %184
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %97

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @SIGRTMIN, align 8
  %198 = add nsw i64 %197, 3
  %199 = icmp eq i64 %196, %198
  br i1 %199, label %218, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @SIGRTMIN, align 8
  %204 = add nsw i64 %203, 4
  %205 = icmp eq i64 %202, %204
  br i1 %205, label %218, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @SIGRTMIN, align 8
  %210 = add nsw i64 %209, 13
  %211 = icmp eq i64 %208, %210
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @SIGRTMIN, align 8
  %216 = add nsw i64 %215, 14
  %217 = icmp eq i64 %214, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %212, %206, %200, %194
  store i32 2, i32* %4, align 4
  br label %252

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @SIGINT, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %248, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @SIGRTMIN, align 8
  %228 = add nsw i64 %227, 5
  %229 = icmp eq i64 %226, %228
  br i1 %229, label %248, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @SIGRTMIN, align 8
  %234 = add nsw i64 %233, 6
  %235 = icmp eq i64 %232, %234
  br i1 %235, label %248, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @SIGRTMIN, align 8
  %240 = add nsw i64 %239, 15
  %241 = icmp eq i64 %238, %240
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SIGRTMIN, align 8
  %246 = add nsw i64 %245, 16
  %247 = icmp eq i64 %244, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %242, %236, %230, %224, %219
  store i32 1, i32* %4, align 4
  br label %251

249:                                              ; preds = %242
  %250 = call i32 @assert_not_reached(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %248
  br label %252

252:                                              ; preds = %251, %218
  %253 = load i64, i64* %9, align 8
  %254 = load i32, i32* @SIGTERM, align 4
  %255 = call i32 @kill_and_sigcont(i64 %253, i32 %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @ESRCH, align 4
  %258 = sub nsw i32 0, %257
  %259 = icmp ne i32 %256, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %252
  %261 = load i64, i64* %9, align 8
  %262 = load i32, i32* @SIGHUP, align 4
  %263 = call i32 @kill(i64 %261, i32 %262)
  br label %264

264:                                              ; preds = %260, %252
  %265 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %266 = call i64 @now(i32 %265)
  %267 = load i64, i64* @DEFAULT_TIMEOUT_USEC, align 8
  %268 = add nsw i64 %266, %267
  store i64 %268, i64* %8, align 8
  br label %97

269:                                              ; preds = %181, %150, %123, %106
  %270 = load i32, i32* %10, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load i32, i32* @EXIT_FAILURE, align 4
  br label %276

274:                                              ; preds = %269
  %275 = load i32, i32* %10, align 4
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i32 [ %273, %272 ], [ %275, %274 ]
  %278 = call i32 @_exit(i32 %277) #4
  unreachable

279:                                              ; preds = %48, %42, %35
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @sigfillset(i32*) #2

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @ioctl(i32, i32) #2

declare dso_local i32 @log_error_errno(i64, i8*) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @setsid(...) #2

declare dso_local i32 @reset_all_signal_handlers(...) #2

declare dso_local i32 @log_close(...) #2

declare dso_local i32 @close_all_fds(i32*, i32) #2

declare dso_local i32 @log_open(...) #2

declare dso_local i32 @sd_id128_to_string(i32, i8*) #2

declare dso_local i32 @reset_environ(i8*, i32) #2

declare dso_local i32 @rename_process(i8*) #2

declare dso_local i64 @sigemptyset(i32*) #2

declare dso_local i64 @sigset_add_many(i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32) #2

declare dso_local i32 @waitid(i32, i32, %struct.TYPE_5__*, i32) #2

declare dso_local i64 @now(i32) #2

declare dso_local i32 @reboot(i32) #2

declare dso_local i32 @sigwaitinfo(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @sigtimedwait(i32*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @timespec_store(%struct.timespec*, i64) #2

declare dso_local i32 @assert_not_reached(i8*) #2

declare dso_local i32 @kill_and_sigcont(i64, i32) #2

declare dso_local i32 @kill(i64, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
