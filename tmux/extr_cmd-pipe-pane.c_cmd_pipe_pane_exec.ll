; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-pipe-pane.c_cmd_pipe_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-pipe-pane.c_cmd_pipe_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i8** }
%struct.cmdq_item = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.winlink*, %struct.session*, %struct.window_pane* }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.window_pane = type { i32, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.client = type { i32 }
%struct.format_tree = type { i32 }

@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"socketpair error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@FORMAT_NONE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fork error: %s\00", align 1
@server_proc = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@_PATH_BSHELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@cmd_pipe_pane_read_callback = common dso_local global i32 0, align 4
@cmd_pipe_pane_write_callback = common dso_local global i32 0, align 4
@cmd_pipe_pane_error_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_pipe_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_pipe_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.format_tree*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %20 = load %struct.cmd*, %struct.cmd** %4, align 8
  %21 = getelementptr inbounds %struct.cmd, %struct.cmd* %20, i32 0, i32 0
  %22 = load %struct.args*, %struct.args** %21, align 8
  store %struct.args* %22, %struct.args** %6, align 8
  %23 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %24 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %23, i32* null, i32 1)
  store %struct.client* %24, %struct.client** %7, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.window_pane*, %struct.window_pane** %27, align 8
  store %struct.window_pane* %28, %struct.window_pane** %8, align 8
  %29 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %30 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.session*, %struct.session** %31, align 8
  store %struct.session* %32, %struct.session** %9, align 8
  %33 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %34 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.winlink*, %struct.winlink** %35, align 8
  store %struct.winlink* %36, %struct.winlink** %10, align 8
  %37 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %38 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %41 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %63

44:                                               ; preds = %2
  %45 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %46 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bufferevent_free(i32* %47)
  %49 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %50 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @close(i32 %51)
  %53 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %54 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %56 = call i64 @window_pane_destroy_ready(%struct.window_pane* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %60 = call i32 @server_destroy_pane(%struct.window_pane* %59, i32 1)
  %61 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %61, i32* %3, align 4
  br label %294

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = getelementptr inbounds %struct.args, %struct.args* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load %struct.args*, %struct.args** %6, align 8
  %70 = getelementptr inbounds %struct.args, %struct.args* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68, %63
  %78 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %78, i32* %3, align 4
  br label %294

79:                                               ; preds = %68
  %80 = load %struct.cmd*, %struct.cmd** %4, align 8
  %81 = getelementptr inbounds %struct.cmd, %struct.cmd* %80, i32 0, i32 0
  %82 = load %struct.args*, %struct.args** %81, align 8
  %83 = call i32 @args_has(%struct.args* %82, i8 signext 111)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %89, i32* %3, align 4
  br label %294

90:                                               ; preds = %85, %79
  %91 = load %struct.cmd*, %struct.cmd** %4, align 8
  %92 = getelementptr inbounds %struct.cmd, %struct.cmd* %91, i32 0, i32 0
  %93 = load %struct.args*, %struct.args** %92, align 8
  %94 = call i32 @args_has(%struct.args* %93, i8 signext 73)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  store i32 1, i32* %15, align 4
  %97 = load %struct.cmd*, %struct.cmd** %4, align 8
  %98 = getelementptr inbounds %struct.cmd, %struct.cmd* %97, i32 0, i32 0
  %99 = load %struct.args*, %struct.args** %98, align 8
  %100 = call i32 @args_has(%struct.args* %99, i8 signext 79)
  store i32 %100, i32* %16, align 4
  br label %102

101:                                              ; preds = %90
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = load i32, i32* @AF_UNIX, align 4
  %104 = load i32, i32* @SOCK_STREAM, align 4
  %105 = load i32, i32* @PF_UNSPEC, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %107 = call i64 @socketpair(i32 %103, i32 %104, i32 %105, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %111 = load i32, i32* @errno, align 4
  %112 = call i32 @strerror(i32 %111)
  %113 = call i32 @cmdq_error(%struct.cmdq_item* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %114, i32* %3, align 4
  br label %294

115:                                              ; preds = %102
  %116 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %117 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %120 = load i32, i32* @FORMAT_NONE, align 4
  %121 = call %struct.format_tree* @format_create(i32 %118, %struct.cmdq_item* %119, i32 %120, i32 0)
  store %struct.format_tree* %121, %struct.format_tree** %17, align 8
  %122 = load %struct.format_tree*, %struct.format_tree** %17, align 8
  %123 = load %struct.client*, %struct.client** %7, align 8
  %124 = load %struct.session*, %struct.session** %9, align 8
  %125 = load %struct.winlink*, %struct.winlink** %10, align 8
  %126 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %127 = call i32 @format_defaults(%struct.format_tree* %122, %struct.client* %123, %struct.session* %124, %struct.winlink* %125, %struct.window_pane* %126)
  %128 = load %struct.format_tree*, %struct.format_tree** %17, align 8
  %129 = load %struct.args*, %struct.args** %6, align 8
  %130 = getelementptr inbounds %struct.args, %struct.args* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @format_expand_time(%struct.format_tree* %128, i8* %133)
  store i8* %134, i8** %11, align 8
  %135 = load %struct.format_tree*, %struct.format_tree** %17, align 8
  %136 = call i32 @format_free(%struct.format_tree* %135)
  %137 = call i32 @sigfillset(i32* %18)
  %138 = load i32, i32* @SIG_BLOCK, align 4
  %139 = call i32 @sigprocmask(i32 %138, i32* %18, i32* %19)
  %140 = call i32 (...) @fork()
  switch i32 %140, label %225 [
    i32 -1, label %141
    i32 0, label %151
  ]

141:                                              ; preds = %115
  %142 = load i32, i32* @SIG_SETMASK, align 4
  %143 = call i32 @sigprocmask(i32 %142, i32* %19, i32* null)
  %144 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %145 = load i32, i32* @errno, align 4
  %146 = call i32 @strerror(i32 %145)
  %147 = call i32 @cmdq_error(%struct.cmdq_item* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load i8*, i8** %11, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %150, i32* %3, align 4
  br label %294

151:                                              ; preds = %115
  %152 = load i32, i32* @server_proc, align 4
  %153 = call i32 @proc_clear_signals(i32 %152, i32 1)
  %154 = load i32, i32* @SIG_SETMASK, align 4
  %155 = call i32 @sigprocmask(i32 %154, i32* %19, i32* null)
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @close(i32 %157)
  %159 = load i32, i32* @_PATH_DEVNULL, align 4
  %160 = load i32, i32* @O_WRONLY, align 4
  %161 = call i32 @open(i32 %159, i32 %160, i32 0)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %151
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @STDIN_FILENO, align 4
  %168 = call i32 @dup2(i32 %166, i32 %167)
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = call i32 @_exit(i32 1) #3
  unreachable

172:                                              ; preds = %164
  br label %181

173:                                              ; preds = %151
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @STDIN_FILENO, align 4
  %176 = call i32 @dup2(i32 %174, i32 %175)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = call i32 @_exit(i32 1) #3
  unreachable

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %172
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @STDOUT_FILENO, align 4
  %188 = call i32 @dup2(i32 %186, i32 %187)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = call i32 @_exit(i32 1) #3
  unreachable

192:                                              ; preds = %184
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @STDOUT_FILENO, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @close(i32 %199)
  br label %201

201:                                              ; preds = %197, %192
  br label %210

202:                                              ; preds = %181
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @STDOUT_FILENO, align 4
  %205 = call i32 @dup2(i32 %203, i32 %204)
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = call i32 @_exit(i32 1) #3
  unreachable

209:                                              ; preds = %202
  br label %210

210:                                              ; preds = %209, %201
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @STDERR_FILENO, align 4
  %213 = call i32 @dup2(i32 %211, i32 %212)
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i32 @_exit(i32 1) #3
  unreachable

217:                                              ; preds = %210
  %218 = load i32, i32* @STDERR_FILENO, align 4
  %219 = add nsw i32 %218, 1
  %220 = call i32 @closefrom(i32 %219)
  %221 = load i32, i32* @_PATH_BSHELL, align 4
  %222 = load i8*, i8** %11, align 8
  %223 = call i32 @execl(i32 %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %222, i8* null)
  %224 = call i32 @_exit(i32 1) #3
  unreachable

225:                                              ; preds = %115
  %226 = load i32, i32* @SIG_SETMASK, align 4
  %227 = call i32 @sigprocmask(i32 %226, i32* %19, i32* null)
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @close(i32 %229)
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %234 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %236 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, -1
  br i1 %238, label %239, label %248

239:                                              ; preds = %225
  %240 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %241 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %240, i32 0, i32 4
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @EVBUFFER_LENGTH(i32 %244)
  %246 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %247 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  br label %251

248:                                              ; preds = %225
  %249 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %250 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %249, i32 0, i32 3
  store i32 0, i32* %250, align 8
  br label %251

251:                                              ; preds = %248, %239
  %252 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %253 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @setblocking(i32 %254, i32 0)
  %256 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %257 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @cmd_pipe_pane_read_callback, align 4
  %260 = load i32, i32* @cmd_pipe_pane_write_callback, align 4
  %261 = load i32, i32* @cmd_pipe_pane_error_callback, align 4
  %262 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %263 = call i32* @bufferevent_new(i32 %258, i32 %259, i32 %260, i32 %261, %struct.window_pane* %262)
  %264 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %265 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %264, i32 0, i32 2
  store i32* %263, i32** %265, align 8
  %266 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %267 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = icmp eq i32* %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %251
  %271 = call i32 @fatalx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %251
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %272
  %276 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %277 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* @EV_WRITE, align 4
  %280 = call i32 @bufferevent_enable(i32* %278, i32 %279)
  br label %281

281:                                              ; preds = %275, %272
  %282 = load i32, i32* %15, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %281
  %285 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %286 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* @EV_READ, align 4
  %289 = call i32 @bufferevent_enable(i32* %287, i32 %288)
  br label %290

290:                                              ; preds = %284, %281
  %291 = load i8*, i8** %11, align 8
  %292 = call i32 @free(i8* %291)
  %293 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %290, %141, %109, %88, %77, %58
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i32 @bufferevent_free(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @window_pane_destroy_ready(%struct.window_pane*) #1

declare dso_local i32 @server_destroy_pane(%struct.window_pane*, i32) #1

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.format_tree* @format_create(i32, %struct.cmdq_item*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i8* @format_expand_time(%struct.format_tree*, i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @proc_clear_signals(i32, i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @execl(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @EVBUFFER_LENGTH(i32) #1

declare dso_local i32 @setblocking(i32, i32) #1

declare dso_local i32* @bufferevent_new(i32, i32, i32, i32, %struct.window_pane*) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @bufferevent_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
