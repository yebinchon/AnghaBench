; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-save-buffer.c_cmd_save_buffer_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-save-buffer.c_cmd_save_buffer_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args*, i32* }
%struct.args = type { i32* }
%struct.cmdq_item = type { %struct.client*, %struct.TYPE_2__ }
%struct.client = type { i32, i32, i32* }
%struct.TYPE_2__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.paste_buffer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"no buffers\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"no buffer %s\00", align 1
@cmd_show_buffer_entry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"can't write to stdout\00", align 1
@CLIENT_CONTROL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%s: write error\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"buffer too big\00", align 1
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_TAB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_save_buffer_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_save_buffer_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca %struct.winlink*, align 8
  %10 = alloca %struct.window_pane*, align 8
  %11 = alloca %struct.paste_buffer*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %25 = load %struct.cmd*, %struct.cmd** %4, align 8
  %26 = getelementptr inbounds %struct.cmd, %struct.cmd* %25, i32 0, i32 0
  %27 = load %struct.args*, %struct.args** %26, align 8
  store %struct.args* %27, %struct.args** %6, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %28, i32* null, i32 1)
  store %struct.client* %29, %struct.client** %7, align 8
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %31 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load %struct.session*, %struct.session** %32, align 8
  store %struct.session* %33, %struct.session** %8, align 8
  %34 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %35 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.winlink*, %struct.winlink** %36, align 8
  store %struct.winlink* %37, %struct.winlink** %9, align 8
  %38 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %39 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.window_pane*, %struct.window_pane** %40, align 8
  store %struct.window_pane* %41, %struct.window_pane** %10, align 8
  %42 = load %struct.args*, %struct.args** %6, align 8
  %43 = call i64 @args_has(%struct.args* %42, i8 signext 98)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %2
  %46 = call %struct.paste_buffer* @paste_get_top(i32* null)
  store %struct.paste_buffer* %46, %struct.paste_buffer** %11, align 8
  %47 = icmp eq %struct.paste_buffer* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %50 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %51, i32* %3, align 4
  br label %244

52:                                               ; preds = %45
  br label %66

53:                                               ; preds = %2
  %54 = load %struct.args*, %struct.args** %6, align 8
  %55 = call i8* @args_get(%struct.args* %54, i8 signext 98)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call %struct.paste_buffer* @paste_get_name(i8* %56)
  store %struct.paste_buffer* %57, %struct.paste_buffer** %11, align 8
  %58 = load %struct.paste_buffer*, %struct.paste_buffer** %11, align 8
  %59 = icmp eq %struct.paste_buffer* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %64, i32* %3, align 4
  br label %244

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.paste_buffer*, %struct.paste_buffer** %11, align 8
  %68 = call i8* @paste_buffer_data(%struct.paste_buffer* %67, i64* %23)
  store i8* %68, i8** %13, align 8
  %69 = load %struct.cmd*, %struct.cmd** %4, align 8
  %70 = getelementptr inbounds %struct.cmd, %struct.cmd* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, @cmd_show_buffer_entry
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %74, i8** %18, align 8
  br label %87

75:                                               ; preds = %66
  %76 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %77 = load %struct.args*, %struct.args** %6, align 8
  %78 = getelementptr inbounds %struct.args, %struct.args* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.client*, %struct.client** %7, align 8
  %83 = load %struct.session*, %struct.session** %8, align 8
  %84 = load %struct.winlink*, %struct.winlink** %9, align 8
  %85 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %86 = call i8* @format_single(%struct.cmdq_item* %76, i32 %81, %struct.client* %82, %struct.session* %83, %struct.winlink* %84, %struct.window_pane* %85)
  store i8* %86, i8** %18, align 8
  br label %87

87:                                               ; preds = %75, %73
  %88 = load i8*, i8** %18, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = load i8*, i8** %18, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %95 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %94, i32 0, i32 0
  %96 = load %struct.client*, %struct.client** %95, align 8
  store %struct.client* %96, %struct.client** %7, align 8
  %97 = load %struct.client*, %struct.client** %7, align 8
  %98 = icmp eq %struct.client* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %101 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %102, i32* %3, align 4
  br label %244

103:                                              ; preds = %91
  %104 = load %struct.client*, %struct.client** %7, align 8
  %105 = getelementptr inbounds %struct.client, %struct.client* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load %struct.client*, %struct.client** %7, align 8
  %110 = getelementptr inbounds %struct.client, %struct.client* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CLIENT_CONTROL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %103
  br label %168

116:                                              ; preds = %108
  br label %178

117:                                              ; preds = %87
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  %118 = load %struct.cmd*, %struct.cmd** %4, align 8
  %119 = getelementptr inbounds %struct.cmd, %struct.cmd* %118, i32 0, i32 0
  %120 = load %struct.args*, %struct.args** %119, align 8
  %121 = call i64 @args_has(%struct.args* %120, i8 signext 97)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %124

124:                                              ; preds = %123, %117
  %125 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %126 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %125, i32 0, i32 0
  %127 = load %struct.client*, %struct.client** %126, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = call i8* @server_client_get_path(%struct.client* %127, i8* %128)
  store i8* %129, i8** %19, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i8*, i8** %19, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call i32* @fopen(i8* %132, i8* %133)
  store i32* %134, i32** %24, align 8
  %135 = load i32*, i32** %24, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %124
  %138 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @strerror(i32 %140)
  %142 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %139, i32 %141)
  %143 = load i8*, i8** %19, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %145, i32* %3, align 4
  br label %244

146:                                              ; preds = %124
  %147 = load i8*, i8** %13, align 8
  %148 = load i64, i64* %23, align 8
  %149 = load i32*, i32** %24, align 8
  %150 = call i64 @fwrite(i8* %147, i32 1, i64 %148, i32* %149)
  %151 = load i64, i64* %23, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %146
  %154 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %155 = load i8*, i8** %19, align 8
  %156 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %155)
  %157 = load i32*, i32** %24, align 8
  %158 = call i32 @fclose(i32* %157)
  %159 = load i8*, i8** %19, align 8
  %160 = call i32 @free(i8* %159)
  %161 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %161, i32* %3, align 4
  br label %244

162:                                              ; preds = %146
  %163 = load i32*, i32** %24, align 8
  %164 = call i32 @fclose(i32* %163)
  %165 = load i8*, i8** %19, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %167, i32* %3, align 4
  br label %244

168:                                              ; preds = %115
  %169 = load %struct.client*, %struct.client** %7, align 8
  %170 = getelementptr inbounds %struct.client, %struct.client* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %13, align 8
  %173 = load i64, i64* %23, align 8
  %174 = call i32 @evbuffer_add(i32 %171, i8* %172, i64 %173)
  %175 = load %struct.client*, %struct.client** %7, align 8
  %176 = call i32 @server_client_push_stdout(%struct.client* %175)
  %177 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %177, i32* %3, align 4
  br label %244

178:                                              ; preds = %116
  %179 = load i64, i64* %23, align 8
  %180 = load i32, i32* @INT_MAX, align 4
  %181 = sdiv i32 %180, 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = icmp ugt i64 %179, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %187 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %188 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %188, i32* %3, align 4
  br label %244

189:                                              ; preds = %178
  store i8* null, i8** %17, align 8
  store i64 0, i64* %21, align 8
  br label %190

190:                                              ; preds = %215, %189
  %191 = load i64, i64* %21, align 8
  %192 = load i64, i64* %23, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %240

194:                                              ; preds = %190
  %195 = load i8*, i8** %13, align 8
  %196 = load i64, i64* %21, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %14, align 8
  %198 = load i8*, i8** %14, align 8
  %199 = load i64, i64* %23, align 8
  %200 = load i64, i64* %21, align 8
  %201 = sub i64 %199, %200
  %202 = call i8* @memchr(i8* %198, i8 signext 10, i64 %201)
  store i8* %202, i8** %15, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %194
  %206 = load i8*, i8** %15, align 8
  %207 = load i8*, i8** %14, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  store i64 %210, i64* %20, align 8
  br label %215

211:                                              ; preds = %194
  %212 = load i64, i64* %23, align 8
  %213 = load i64, i64* %21, align 8
  %214 = sub i64 %212, %213
  store i64 %214, i64* %20, align 8
  br label %215

215:                                              ; preds = %211, %205
  %216 = load i64, i64* %20, align 8
  %217 = mul i64 %216, 4
  %218 = add i64 %217, 1
  store i64 %218, i64* %22, align 8
  %219 = load i8*, i8** %17, align 8
  %220 = load i64, i64* %22, align 8
  %221 = call i8* @xrealloc(i8* %219, i64 %220)
  store i8* %221, i8** %17, align 8
  %222 = load i8*, i8** %17, align 8
  %223 = load i8*, i8** %14, align 8
  %224 = load i64, i64* %20, align 8
  %225 = load i32, i32* @VIS_OCTAL, align 4
  %226 = load i32, i32* @VIS_TAB, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @strvisx(i8* %222, i8* %223, i64 %224, i32 %227)
  %229 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %230 = load i8*, i8** %17, align 8
  %231 = call i32 @cmdq_print(%struct.cmdq_item* %229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %230)
  %232 = load i64, i64* %20, align 8
  %233 = load i8*, i8** %15, align 8
  %234 = icmp ne i8* %233, null
  %235 = zext i1 %234 to i32
  %236 = sext i32 %235 to i64
  %237 = add i64 %232, %236
  %238 = load i64, i64* %21, align 8
  %239 = add i64 %238, %237
  store i64 %239, i64* %21, align 8
  br label %190

240:                                              ; preds = %190
  %241 = load i8*, i8** %17, align 8
  %242 = call i32 @free(i8* %241)
  %243 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %240, %185, %168, %162, %153, %137, %99, %60, %48
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local %struct.paste_buffer* @paste_get_top(i32*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.paste_buffer* @paste_get_name(i8*) #1

declare dso_local i8* @paste_buffer_data(%struct.paste_buffer*, i64*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i32, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @server_client_get_path(%struct.client*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @evbuffer_add(i32, i8*, i64) #1

declare dso_local i32 @server_client_push_stdout(%struct.client*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @strvisx(i8*, i8*, i64, i32) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
