; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_worker_process_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_worker_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__**, %struct.TYPE_16__, i32 }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_20__*)* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.rlimit = type { i8*, i8* }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_15__, i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }

@ngx_core_module = common dso_local global i32 0, align 4
@PRIO_PROCESS = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setpriority(%d) failed\00", align 1
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"setrlimit(RLIMIT_NOFILE, %i) failed\00", align 1
@RLIMIT_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"setrlimit(RLIMIT_CORE, %O) failed\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"setgid(%d) failed\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"initgroups(%s, %d) failed\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"setuid(%d) failed\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"chdir(\22%s\22) failed\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"sigprocmask() failed\00", align 1
@ngx_pid = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_last_process = common dso_local global i64 0, align 8
@ngx_processes = common dso_local global %struct.TYPE_14__* null, align 8
@ngx_process_slot = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"close() channel failed\00", align 1
@ngx_channel = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@ngx_channel_handler = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@PR_SET_DUMPABLE = common dso_local global i32 0, align 4
@PR_SET_KEEPCAPS = common dso_local global i32 0, align 4
@SYS_capset = common dso_local global i32 0, align 4
@_LINUX_CAPABILITY_VERSION_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64)* @ngx_worker_process_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_worker_process_init(%struct.TYPE_20__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rlimit, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = call i32* @ngx_set_environment(%struct.TYPE_20__* %13, i32* null)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @exit(i32 2) #3
  unreachable

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ngx_core_module, align 4
  %23 = call i64 @ngx_get_conf(i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %11, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %18
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i32, i32* @PRIO_PROCESS, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @setpriority(i32 %33, i32 0, i64 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load i32, i32* @NGX_LOG_ALERT, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ngx_errno, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %40, i32 %43, i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %39, %32
  br label %50

50:                                               ; preds = %49, %27, %18
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NGX_CONF_UNSET, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* @RLIMIT_NOFILE, align 4
  %68 = call i32 @setrlimit(i32 %67, %struct.rlimit* %10)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %80

70:                                               ; preds = %56
  %71 = load i32, i32* @NGX_LOG_ALERT, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ngx_errno, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %71, i32 %74, i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %70, %56
  br label %81

81:                                               ; preds = %80, %50
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NGX_CONF_UNSET, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %81
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* @RLIMIT_CORE, align 4
  %99 = call i32 @setrlimit(i32 %98, %struct.rlimit* %10)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %111

101:                                              ; preds = %87
  %102 = load i32, i32* @NGX_LOG_ALERT, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ngx_errno, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %102, i32 %105, i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %101, %87
  br label %112

112:                                              ; preds = %111, %81
  %113 = call i64 (...) @geteuid()
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %172

115:                                              ; preds = %112
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @setgid(i32 %118)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i32, i32* @NGX_LOG_EMERG, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ngx_errno, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %122, i32 %125, i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = call i32 @exit(i32 2) #3
  unreachable

132:                                              ; preds = %115
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @initgroups(i32 %135, i32 %138)
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %154

141:                                              ; preds = %132
  %142 = load i32, i32* @NGX_LOG_EMERG, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ngx_errno, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %142, i32 %145, i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %141, %132
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @setuid(i64 %157)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load i32, i32* @NGX_LOG_EMERG, align 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @ngx_errno, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %161, i32 %164, i32 %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %168)
  %170 = call i32 @exit(i32 2) #3
  unreachable

171:                                              ; preds = %154
  br label %172

172:                                              ; preds = %171, %112
  %173 = load i64, i64* %4, align 8
  %174 = icmp sge i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i64, i64* %4, align 8
  %177 = call i32* @ngx_get_cpu_affinity(i64 %176)
  store i32* %177, i32** %9, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32*, i32** %9, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ngx_setaffinity(i32* %181, i32 %184)
  br label %186

186:                                              ; preds = %180, %175
  br label %187

187:                                              ; preds = %186, %172
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = call i32 @chdir(i8* %198)
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %213

201:                                              ; preds = %193
  %202 = load i32, i32* @NGX_LOG_ALERT, align 4
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @ngx_errno, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %202, i32 %205, i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %210)
  %212 = call i32 @exit(i32 2) #3
  unreachable

213:                                              ; preds = %193
  br label %214

214:                                              ; preds = %213, %187
  %215 = call i32 @sigemptyset(i32* %5)
  %216 = load i32, i32* @SIG_SETMASK, align 4
  %217 = call i32 @sigprocmask(i32 %216, i32* %5, i32* null)
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i32, i32* @NGX_LOG_ALERT, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @ngx_errno, align 4
  %225 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %220, i32 %223, i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %226

226:                                              ; preds = %219, %214
  %227 = call %struct.TYPE_18__* (...) @ngx_timeofday()
  store %struct.TYPE_18__* %227, %struct.TYPE_18__** %7, align 8
  %228 = load i64, i64* @ngx_pid, align 8
  %229 = trunc i64 %228 to i32
  %230 = shl i32 %229, 16
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = xor i32 %230, %233
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = xor i32 %234, %237
  %239 = call i32 @srandom(i32 %238)
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %242, align 8
  store %struct.TYPE_19__* %243, %struct.TYPE_19__** %12, align 8
  store i64 0, i64* %8, align 8
  br label %244

244:                                              ; preds = %256, %226
  %245 = load i64, i64* %8, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ult i64 %245, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %244
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  store i32* null, i32** %255, align 8
  br label %256

256:                                              ; preds = %251
  %257 = load i64, i64* %8, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %8, align 8
  br label %244

259:                                              ; preds = %244
  store i64 0, i64* %8, align 8
  br label %260

260:                                              ; preds = %295, %259
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %262, align 8
  %264 = load i64, i64* %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %263, i64 %264
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %265, align 8
  %267 = icmp ne %struct.TYPE_17__* %266, null
  br i1 %267, label %268, label %298

268:                                              ; preds = %260
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %270, align 8
  %272 = load i64, i64* %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %271, i64 %272
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 0
  %276 = load i64 (%struct.TYPE_20__*)*, i64 (%struct.TYPE_20__*)** %275, align 8
  %277 = icmp ne i64 (%struct.TYPE_20__*)* %276, null
  br i1 %277, label %278, label %294

278:                                              ; preds = %268
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %280, align 8
  %282 = load i64, i64* %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %281, i64 %282
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load i64 (%struct.TYPE_20__*)*, i64 (%struct.TYPE_20__*)** %285, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %288 = call i64 %286(%struct.TYPE_20__* %287)
  %289 = load i64, i64* @NGX_ERROR, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %278
  %292 = call i32 @exit(i32 2) #3
  unreachable

293:                                              ; preds = %278
  br label %294

294:                                              ; preds = %293, %268
  br label %295

295:                                              ; preds = %294
  %296 = load i64, i64* %8, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %8, align 8
  br label %260

298:                                              ; preds = %260
  store i64 0, i64* %6, align 8
  br label %299

299:                                              ; preds = %344, %298
  %300 = load i64, i64* %6, align 8
  %301 = load i64, i64* @ngx_last_process, align 8
  %302 = icmp slt i64 %300, %301
  br i1 %302, label %303, label %347

303:                                              ; preds = %299
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_processes, align 8
  %305 = load i64, i64* %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp eq i32 %308, -1
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  br label %344

311:                                              ; preds = %303
  %312 = load i64, i64* %6, align 8
  %313 = load i64, i64* @ngx_process_slot, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  br label %344

316:                                              ; preds = %311
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_processes, align 8
  %318 = load i64, i64* %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %326

325:                                              ; preds = %316
  br label %344

326:                                              ; preds = %316
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_processes, align 8
  %328 = load i64, i64* %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @close(i32 %333)
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %336, label %343

336:                                              ; preds = %326
  %337 = load i32, i32* @NGX_LOG_ALERT, align 4
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @ngx_errno, align 4
  %342 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %337, i32 %340, i32 %341, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %343

343:                                              ; preds = %336, %326
  br label %344

344:                                              ; preds = %343, %325, %315, %310
  %345 = load i64, i64* %6, align 8
  %346 = add nsw i64 %345, 1
  store i64 %346, i64* %6, align 8
  br label %299

347:                                              ; preds = %299
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_processes, align 8
  %349 = load i64, i64* @ngx_process_slot, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @close(i32 %354)
  %356 = icmp eq i32 %355, -1
  br i1 %356, label %357, label %364

357:                                              ; preds = %347
  %358 = load i32, i32* @NGX_LOG_ALERT, align 4
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @ngx_errno, align 4
  %363 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %358, i32 %361, i32 %362, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %364

364:                                              ; preds = %357, %347
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %366 = load i32, i32* @ngx_channel, align 4
  %367 = load i32, i32* @NGX_READ_EVENT, align 4
  %368 = load i32, i32* @ngx_channel_handler, align 4
  %369 = call i64 @ngx_add_channel_event(%struct.TYPE_20__* %365, i32 %366, i32 %367, i32 %368)
  %370 = load i64, i64* @NGX_ERROR, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %364
  %373 = call i32 @exit(i32 2) #3
  unreachable

374:                                              ; preds = %364
  ret void
}

declare dso_local i32* @ngx_set_environment(%struct.TYPE_20__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i32 @setpriority(i32, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @initgroups(i32, i32) #1

declare dso_local i32 @setuid(i64) #1

declare dso_local i32* @ngx_get_cpu_affinity(i64) #1

declare dso_local i32 @ngx_setaffinity(i32*, i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @ngx_timeofday(...) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @ngx_add_channel_event(%struct.TYPE_20__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
