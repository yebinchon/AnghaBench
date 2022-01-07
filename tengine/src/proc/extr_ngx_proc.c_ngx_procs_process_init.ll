; ModuleID = '/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_process_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (%struct.TYPE_21__*)* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_21__*)*, i32 }
%struct.rlimit = type { i8*, i8* }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@ngx_core_module = common dso_local global i32 0, align 4
@PRIO_PROCESS = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"process %V setpriority(%i) failed\00", align 1
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"process %V setrlimit(RLIMIT_NOFILE, %i) failed\00", align 1
@RLIMIT_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"process %V setrlimit(RLIMIT_CORE, %O) failed\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"process %V setgid(%d) failed\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"process %V initgroups(%s, %d) failed\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"process %V setuid(%d) failed\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"process %V chdir(\22%s\22) failed\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"process %V sigprocmask() failed\00", align 1
@ngx_event_core_module = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"process %V init event error\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"process %V process init error\00", align 1
@ngx_last_process = common dso_local global i64 0, align 8
@ngx_processes = common dso_local global %struct.TYPE_15__* null, align 8
@ngx_process_slot = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"process %V close() channel failed\00", align 1
@ngx_channel = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@ngx_procs_channel_handler = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@PR_SET_DUMPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_19__*, i64)* @ngx_procs_process_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_procs_process_init(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rlimit, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = call i32* @ngx_set_environment(%struct.TYPE_21__* %13, i32* null)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @exit(i32 2) #3
  unreachable

18:                                               ; preds = %3
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ngx_core_module, align 4
  %23 = call i64 @ngx_get_conf(i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %11, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load i32, i32* @PRIO_PROCESS, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @setpriority(i32 %28, i32 0, i32 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i32, i32* @NGX_LOG_ALERT, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ngx_errno, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i64, i64* %6, align 8
  %42 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %34, i32 %37, i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %33, %27
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NGX_CONF_UNSET, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* @RLIMIT_NOFILE, align 4
  %62 = call i32 @setrlimit(i32 %61, %struct.rlimit* %10)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %76

64:                                               ; preds = %50
  %65 = load i32, i32* @NGX_LOG_ALERT, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ngx_errno, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %65, i32 %68, i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32* %71, i64 %74)
  br label %76

76:                                               ; preds = %64, %50
  br label %77

77:                                               ; preds = %76, %44
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NGX_CONF_UNSET, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %77
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @RLIMIT_CORE, align 4
  %95 = call i32 @setrlimit(i32 %94, %struct.rlimit* %10)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %109

97:                                               ; preds = %83
  %98 = load i32, i32* @NGX_LOG_ALERT, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ngx_errno, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %98, i32 %101, i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* %104, i64 %107)
  br label %109

109:                                              ; preds = %97, %83
  br label %110

110:                                              ; preds = %109, %77
  %111 = call i64 (...) @geteuid()
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %176

113:                                              ; preds = %110
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @setgid(i32 %116)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %132

119:                                              ; preds = %113
  %120 = load i32, i32* @NGX_LOG_EMERG, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ngx_errno, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %120, i32 %123, i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %126, i32 %129)
  %131 = call i32 @exit(i32 2) #3
  unreachable

132:                                              ; preds = %113
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @initgroups(i32 %135, i32 %138)
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %156

141:                                              ; preds = %132
  %142 = load i32, i32* @NGX_LOG_EMERG, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ngx_errno, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %142, i32 %145, i32 %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %141, %132
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @setuid(i32 %159)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load i32, i32* @NGX_LOG_EMERG, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ngx_errno, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %163, i32 %166, i32 %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32* %169, i32 %172)
  %174 = call i32 @exit(i32 2) #3
  unreachable

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175, %110
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %176
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = call i32 @chdir(i8* %187)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %204

190:                                              ; preds = %182
  %191 = load i32, i32* @NGX_LOG_ALERT, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ngx_errno, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %191, i32 %194, i32 %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %197, i64 %201)
  %203 = call i32 @exit(i32 2) #3
  unreachable

204:                                              ; preds = %182
  br label %205

205:                                              ; preds = %204, %176
  %206 = call i32 @sigemptyset(i32* %7)
  %207 = load i32, i32* @SIG_SETMASK, align 4
  %208 = call i32 @sigprocmask(i32 %207, i32* %7, i32* null)
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load i32, i32* @NGX_LOG_ALERT, align 4
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @ngx_errno, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  %218 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %211, i32 %214, i32 %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32* %217)
  br label %219

219:                                              ; preds = %210, %205
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  store %struct.TYPE_20__* %223, %struct.TYPE_20__** %12, align 8
  store i64 0, i64* %9, align 8
  br label %224

224:                                              ; preds = %236, %219
  %225 = load i64, i64* %9, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ult i64 %225, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %224
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %233 = load i64, i64* %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  store i32* null, i32** %235, align 8
  br label %236

236:                                              ; preds = %231
  %237 = load i64, i64* %9, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %9, align 8
  br label %224

239:                                              ; preds = %224
  %240 = load i64 (%struct.TYPE_21__*)*, i64 (%struct.TYPE_21__*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ngx_event_core_module, i32 0, i32 0), align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %242 = call i64 %240(%struct.TYPE_21__* %241)
  %243 = load i64, i64* @NGX_OK, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %254

245:                                              ; preds = %239
  %246 = load i32, i32* @NGX_LOG_ERR, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %246, i32 %249, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32* %251)
  %253 = call i32 @exit(i32 2) #3
  unreachable

254:                                              ; preds = %239
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load i64 (%struct.TYPE_21__*)*, i64 (%struct.TYPE_21__*)** %256, align 8
  %258 = icmp ne i64 (%struct.TYPE_21__*)* %257, null
  br i1 %258, label %259, label %277

259:                                              ; preds = %254
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = load i64 (%struct.TYPE_21__*)*, i64 (%struct.TYPE_21__*)** %261, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %264 = call i64 %262(%struct.TYPE_21__* %263)
  %265 = load i64, i64* @NGX_OK, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %276

267:                                              ; preds = %259
  %268 = load i32, i32* @NGX_LOG_ERR, align 4
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 1
  %274 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %268, i32 %271, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32* %273)
  %275 = call i32 @exit(i32 2) #3
  unreachable

276:                                              ; preds = %259
  br label %277

277:                                              ; preds = %276, %254
  store i64 0, i64* %8, align 8
  br label %278

278:                                              ; preds = %325, %277
  %279 = load i64, i64* %8, align 8
  %280 = load i64, i64* @ngx_last_process, align 8
  %281 = icmp slt i64 %279, %280
  br i1 %281, label %282, label %328

282:                                              ; preds = %278
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_processes, align 8
  %284 = load i64, i64* %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, -1
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %325

290:                                              ; preds = %282
  %291 = load i64, i64* %8, align 8
  %292 = load i64, i64* @ngx_process_slot, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  br label %325

295:                                              ; preds = %290
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_processes, align 8
  %297 = load i64, i64* %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %304, label %305

304:                                              ; preds = %295
  br label %325

305:                                              ; preds = %295
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_processes, align 8
  %307 = load i64, i64* %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @close(i32 %312)
  %314 = icmp eq i32 %313, -1
  br i1 %314, label %315, label %324

315:                                              ; preds = %305
  %316 = load i32, i32* @NGX_LOG_ALERT, align 4
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @ngx_errno, align 4
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 1
  %323 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %316, i32 %319, i32 %320, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32* %322)
  br label %324

324:                                              ; preds = %315, %305
  br label %325

325:                                              ; preds = %324, %304, %294, %289
  %326 = load i64, i64* %8, align 8
  %327 = add nsw i64 %326, 1
  store i64 %327, i64* %8, align 8
  br label %278

328:                                              ; preds = %278
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_processes, align 8
  %330 = load i64, i64* @ngx_process_slot, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @close(i32 %335)
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %347

338:                                              ; preds = %328
  %339 = load i32, i32* @NGX_LOG_ALERT, align 4
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @ngx_errno, align 4
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 1
  %346 = call i32 (i32, i32, i32, i8*, i32*, ...) @ngx_log_error(i32 %339, i32 %342, i32 %343, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32* %345)
  br label %347

347:                                              ; preds = %338, %328
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %349 = load i32, i32* @ngx_channel, align 4
  %350 = load i32, i32* @NGX_READ_EVENT, align 4
  %351 = load i32, i32* @ngx_procs_channel_handler, align 4
  %352 = call i64 @ngx_add_channel_event(%struct.TYPE_21__* %348, i32 %349, i32 %350, i32 %351)
  %353 = load i64, i64* @NGX_ERROR, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %347
  %356 = call i32 @exit(i32 2) #3
  unreachable

357:                                              ; preds = %347
  ret void
}

declare dso_local i32* @ngx_set_environment(%struct.TYPE_21__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i32 @setpriority(i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, ...) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @initgroups(i32, i32) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @ngx_add_channel_event(%struct.TYPE_21__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
