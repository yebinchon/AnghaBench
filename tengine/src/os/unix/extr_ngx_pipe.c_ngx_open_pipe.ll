; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_open_pipe.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32*, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i64 }
%struct.TYPE_14__ = type { i32** }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_FILE_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"close \22%s\22 failed\00", align 1
@NGX_PIPE_WRITE = common dso_local global i32 0, align 4
@NGX_PROCESS_PIPE = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@NGX_FILE_WRONLY = common dso_local global i32 0, align 4
@NGX_FILE_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"open(\22/dev/null\22) failed\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"dup2(STDERR) failed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"close() failed\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"sigprocmask() failed\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@ngx_core_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @ngx_open_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_open_pipe(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @pipe(i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @NGX_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %268

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  store i32** %22, i32*** %7, align 8
  %23 = call i64 (...) @fork()
  store i64 %23, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %254

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %105

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NGX_INVALID_FILE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %29
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* @NGX_FILE_ERROR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load i32, i32* @NGX_LOG_EMERG, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ngx_errno, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %51, i32 %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %50, %40
  br label %64

64:                                               ; preds = %63, %29
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NGX_PIPE_WRITE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i64 %76, i64* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @close(i32 %85)
  br label %104

87:                                               ; preds = %64
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i64 %93, i64* %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  br label %104

104:                                              ; preds = %87, %70
  br label %251

105:                                              ; preds = %26
  %106 = load i32, i32* @NGX_PROCESS_PIPE, align 4
  store i32 %106, i32* @ngx_process, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = call i32 @ngx_close_listening_sockets(%struct.TYPE_16__* %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %142

113:                                              ; preds = %105
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @close(i32 %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @STDIN_FILENO, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %113
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @STDIN_FILENO, align 4
  %134 = call i32 @dup2(i32 %132, i32 %133)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @close(i32 %139)
  br label %141

141:                                              ; preds = %127, %113
  br label %171

142:                                              ; preds = %105
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @close(i32 %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @STDOUT_FILENO, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %142
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @STDOUT_FILENO, align 4
  %163 = call i32 @dup2(i32 %161, i32 %162)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @close(i32 %168)
  br label %170

170:                                              ; preds = %156, %142
  br label %171

171:                                              ; preds = %170, %141
  %172 = load i32, i32* @NGX_FILE_WRONLY, align 4
  %173 = load i32, i32* @NGX_FILE_OPEN, align 4
  %174 = call i32 @ngx_open_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %173, i32 0)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load i32, i32* @NGX_LOG_EMERG, align 4
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ngx_errno, align 4
  %183 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %178, i32 %181, i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %184 = call i32 @exit(i32 2) #3
  unreachable

185:                                              ; preds = %171
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @STDERR_FILENO, align 4
  %188 = call i32 @dup2(i32 %186, i32 %187)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load i32, i32* @NGX_LOG_EMERG, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @ngx_errno, align 4
  %196 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %191, i32 %194, i32 %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %197 = call i32 @exit(i32 2) #3
  unreachable

198:                                              ; preds = %185
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @STDERR_FILENO, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %198
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @close(i32 %203)
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load i32, i32* @NGX_LOG_EMERG, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @ngx_errno, align 4
  %212 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %207, i32 %210, i32 %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %213 = call i32 @exit(i32 2) #3
  unreachable

214:                                              ; preds = %202, %198
  %215 = call i32 @sigemptyset(i32* %9)
  %216 = load i32, i32* @SIG_SETMASK, align 4
  %217 = call i32 @sigprocmask(i32 %216, i32* %9, i32* null)
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i32, i32* @NGX_LOG_EMERG, align 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @ngx_errno, align 4
  %225 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %220, i32 %223, i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %226 = call i32 @exit(i32 2) #3
  unreachable

227:                                              ; preds = %214
  %228 = load i32**, i32*** %7, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i64 0
  %230 = load i32*, i32** %229, align 8
  %231 = call i64 @ngx_strncmp(i32* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %236 = call i32 @ngx_pipe_log(%struct.TYPE_16__* %234, %struct.TYPE_15__* %235)
  %237 = call i32 @exit(i32 0) #3
  unreachable

238:                                              ; preds = %227
  %239 = load i32**, i32*** %7, align 8
  %240 = getelementptr inbounds i32*, i32** %239, i64 0
  %241 = load i32*, i32** %240, align 8
  %242 = bitcast i32* %241 to i8*
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i32**, i32*** %246, align 8
  %248 = bitcast i32** %247 to i8**
  %249 = call i32 @execv(i8* %242, i8** %248)
  %250 = call i32 @exit(i32 0) #3
  unreachable

251:                                              ; preds = %104
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* @NGX_OK, align 4
  store i32 %253, i32* %3, align 4
  br label %268

254:                                              ; preds = %25
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @close(i32 %259)
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @close(i32 %265)
  %267 = load i32, i32* @NGX_ERROR, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %254, %252, %15
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_close_listening_sockets(%struct.TYPE_16__*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @ngx_open_file(i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i32 @ngx_pipe_log(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @execv(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
