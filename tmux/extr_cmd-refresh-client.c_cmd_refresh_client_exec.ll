; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-refresh-client.c_cmd_refresh_client_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-refresh-client.c_cmd_refresh_client_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i32* }
%struct.cmdq_item = type { i32 }
%struct.client = type { i64, i64, i32, %struct.tty, %struct.TYPE_4__*, %struct.window* }
%struct.tty = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.window* }
%struct.window = type { i64, i64 }

@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"adjustment %s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@TTYC_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@CLIENT_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"not a control client\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%u,%u\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%ux%u\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"bad size argument\00", align 1
@WINDOW_MINIMUM = common dso_local global i64 0, align 8
@WINDOW_MAXIMUM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"size too small or too big\00", align 1
@CLIENT_SIZECHANGED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"no-output\00", align 1
@CLIENT_CONTROL_NOOUTPUT = common dso_local global i32 0, align 4
@CLIENT_STATUSFORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_refresh_client_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_refresh_client_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca %struct.window*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %18 = load %struct.cmd*, %struct.cmd** %4, align 8
  %19 = getelementptr inbounds %struct.cmd, %struct.cmd* %18, i32 0, i32 0
  %20 = load %struct.args*, %struct.args** %19, align 8
  store %struct.args* %20, %struct.args** %6, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %22 = load %struct.args*, %struct.args** %6, align 8
  %23 = call i8* @args_get(%struct.args* %22, float 1.160000e+02)
  %24 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %21, i8* %23, i32 0)
  store %struct.client* %24, %struct.client** %7, align 8
  %25 = icmp eq %struct.client* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %365

28:                                               ; preds = %2
  %29 = load %struct.client*, %struct.client** %7, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 3
  store %struct.tty* %30, %struct.tty** %8, align 8
  %31 = load %struct.args*, %struct.args** %6, align 8
  %32 = call i64 @args_has(%struct.args* %31, i8 signext 99)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %28
  %35 = load %struct.args*, %struct.args** %6, align 8
  %36 = call i64 @args_has(%struct.args* %35, i8 signext 76)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load %struct.args*, %struct.args** %6, align 8
  %40 = call i64 @args_has(%struct.args* %39, i8 signext 82)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.args*, %struct.args** %6, align 8
  %44 = call i64 @args_has(%struct.args* %43, i8 signext 85)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.args*, %struct.args** %6, align 8
  %48 = call i64 @args_has(%struct.args* %47, i8 signext 68)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %220

50:                                               ; preds = %46, %42, %38, %34, %28
  %51 = load %struct.args*, %struct.args** %6, align 8
  %52 = getelementptr inbounds %struct.args, %struct.args* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i64 1, i64* %17, align 8
  br label %72

56:                                               ; preds = %50
  %57 = load %struct.args*, %struct.args** %6, align 8
  %58 = getelementptr inbounds %struct.args, %struct.args* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @INT_MAX, align 4
  %63 = call i64 @strtonum(i32 %61, i32 1, i32 %62, i8** %11)
  store i64 %63, i64* %17, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %365

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.args*, %struct.args** %6, align 8
  %74 = call i64 @args_has(%struct.args* %73, i8 signext 99)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.client*, %struct.client** %7, align 8
  %78 = getelementptr inbounds %struct.client, %struct.client* %77, i32 0, i32 5
  store %struct.window* null, %struct.window** %78, align 8
  br label %214

79:                                               ; preds = %72
  %80 = load %struct.client*, %struct.client** %7, align 8
  %81 = getelementptr inbounds %struct.client, %struct.client* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.window*, %struct.window** %85, align 8
  store %struct.window* %86, %struct.window** %9, align 8
  %87 = load %struct.client*, %struct.client** %7, align 8
  %88 = getelementptr inbounds %struct.client, %struct.client* %87, i32 0, i32 5
  %89 = load %struct.window*, %struct.window** %88, align 8
  %90 = load %struct.window*, %struct.window** %9, align 8
  %91 = icmp ne %struct.window* %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %79
  %93 = load %struct.window*, %struct.window** %9, align 8
  %94 = load %struct.client*, %struct.client** %7, align 8
  %95 = getelementptr inbounds %struct.client, %struct.client* %94, i32 0, i32 5
  store %struct.window* %93, %struct.window** %95, align 8
  %96 = load %struct.tty*, %struct.tty** %8, align 8
  %97 = getelementptr inbounds %struct.tty, %struct.tty* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.client*, %struct.client** %7, align 8
  %100 = getelementptr inbounds %struct.client, %struct.client* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.tty*, %struct.tty** %8, align 8
  %102 = getelementptr inbounds %struct.tty, %struct.tty* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.client*, %struct.client** %7, align 8
  %105 = getelementptr inbounds %struct.client, %struct.client* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %92, %79
  %107 = load %struct.args*, %struct.args** %6, align 8
  %108 = call i64 @args_has(%struct.args* %107, i8 signext 76)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load %struct.client*, %struct.client** %7, align 8
  %112 = getelementptr inbounds %struct.client, %struct.client* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %17, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.client*, %struct.client** %7, align 8
  %119 = getelementptr inbounds %struct.client, %struct.client* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %125

122:                                              ; preds = %110
  %123 = load %struct.client*, %struct.client** %7, align 8
  %124 = getelementptr inbounds %struct.client, %struct.client* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %116
  br label %213

126:                                              ; preds = %106
  %127 = load %struct.args*, %struct.args** %6, align 8
  %128 = call i64 @args_has(%struct.args* %127, i8 signext 82)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %126
  %131 = load i64, i64* %17, align 8
  %132 = load %struct.client*, %struct.client** %7, align 8
  %133 = getelementptr inbounds %struct.client, %struct.client* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load %struct.client*, %struct.client** %7, align 8
  %137 = getelementptr inbounds %struct.client, %struct.client* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.window*, %struct.window** %9, align 8
  %140 = getelementptr inbounds %struct.window, %struct.window* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.tty*, %struct.tty** %8, align 8
  %143 = getelementptr inbounds %struct.tty, %struct.tty* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = icmp sgt i64 %138, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %130
  %148 = load %struct.window*, %struct.window** %9, align 8
  %149 = getelementptr inbounds %struct.window, %struct.window* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.tty*, %struct.tty** %8, align 8
  %152 = getelementptr inbounds %struct.tty, %struct.tty* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %150, %153
  %155 = load %struct.client*, %struct.client** %7, align 8
  %156 = getelementptr inbounds %struct.client, %struct.client* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %147, %130
  br label %212

158:                                              ; preds = %126
  %159 = load %struct.args*, %struct.args** %6, align 8
  %160 = call i64 @args_has(%struct.args* %159, i8 signext 85)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %158
  %163 = load %struct.client*, %struct.client** %7, align 8
  %164 = getelementptr inbounds %struct.client, %struct.client* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %17, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load i64, i64* %17, align 8
  %170 = load %struct.client*, %struct.client** %7, align 8
  %171 = getelementptr inbounds %struct.client, %struct.client* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %172, %169
  store i64 %173, i64* %171, align 8
  br label %177

174:                                              ; preds = %162
  %175 = load %struct.client*, %struct.client** %7, align 8
  %176 = getelementptr inbounds %struct.client, %struct.client* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %174, %168
  br label %211

178:                                              ; preds = %158
  %179 = load %struct.args*, %struct.args** %6, align 8
  %180 = call i64 @args_has(%struct.args* %179, i8 signext 68)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %178
  %183 = load i64, i64* %17, align 8
  %184 = load %struct.client*, %struct.client** %7, align 8
  %185 = getelementptr inbounds %struct.client, %struct.client* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.client*, %struct.client** %7, align 8
  %189 = getelementptr inbounds %struct.client, %struct.client* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.window*, %struct.window** %9, align 8
  %192 = getelementptr inbounds %struct.window, %struct.window* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.tty*, %struct.tty** %8, align 8
  %195 = getelementptr inbounds %struct.tty, %struct.tty* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %193, %196
  %198 = icmp sgt i64 %190, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %182
  %200 = load %struct.window*, %struct.window** %9, align 8
  %201 = getelementptr inbounds %struct.window, %struct.window* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.tty*, %struct.tty** %8, align 8
  %204 = getelementptr inbounds %struct.tty, %struct.tty* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %202, %205
  %207 = load %struct.client*, %struct.client** %7, align 8
  %208 = getelementptr inbounds %struct.client, %struct.client* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %199, %182
  br label %210

210:                                              ; preds = %209, %178
  br label %211

211:                                              ; preds = %210, %177
  br label %212

212:                                              ; preds = %211, %157
  br label %213

213:                                              ; preds = %212, %125
  br label %214

214:                                              ; preds = %213, %76
  %215 = load %struct.client*, %struct.client** %7, align 8
  %216 = call i32 @tty_update_client_offset(%struct.client* %215)
  %217 = load %struct.client*, %struct.client** %7, align 8
  %218 = call i32 @server_redraw_client(%struct.client* %217)
  %219 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %219, i32* %3, align 4
  br label %365

220:                                              ; preds = %46
  %221 = load %struct.args*, %struct.args** %6, align 8
  %222 = call i64 @args_has(%struct.args* %221, i8 signext 108)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %220
  %225 = load %struct.client*, %struct.client** %7, align 8
  %226 = getelementptr inbounds %struct.client, %struct.client* %225, i32 0, i32 4
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = icmp ne %struct.TYPE_4__* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.client*, %struct.client** %7, align 8
  %231 = getelementptr inbounds %struct.client, %struct.client* %230, i32 0, i32 3
  %232 = load i32, i32* @TTYC_MS, align 4
  %233 = call i32 @tty_putcode_ptr2(%struct.tty* %231, i32 %232, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %234

234:                                              ; preds = %229, %224
  %235 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %235, i32* %3, align 4
  br label %365

236:                                              ; preds = %220
  %237 = load %struct.args*, %struct.args** %6, align 8
  %238 = call i64 @args_has(%struct.args* %237, i8 signext 67)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load %struct.args*, %struct.args** %6, align 8
  %242 = call i64 @args_has(%struct.args* %241, i8 signext 70)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %343

244:                                              ; preds = %240, %236
  %245 = load %struct.args*, %struct.args** %6, align 8
  %246 = call i64 @args_has(%struct.args* %245, i8 signext 67)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %305

248:                                              ; preds = %244
  %249 = load %struct.client*, %struct.client** %7, align 8
  %250 = getelementptr inbounds %struct.client, %struct.client* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @CLIENT_CONTROL, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %248
  %256 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %257 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %258 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %258, i32* %3, align 4
  br label %365

259:                                              ; preds = %248
  %260 = load %struct.args*, %struct.args** %6, align 8
  %261 = call i8* @args_get(%struct.args* %260, float 6.700000e+01)
  store i8* %261, i8** %10, align 8
  %262 = load i8*, i8** %10, align 8
  %263 = call i32 @sscanf(i8* %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %15, i64* %16)
  %264 = icmp ne i32 %263, 2
  br i1 %264, label %265, label %273

265:                                              ; preds = %259
  %266 = load i8*, i8** %10, align 8
  %267 = call i32 @sscanf(i8* %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* %15, i64* %16)
  %268 = icmp ne i32 %267, 2
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %271 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %270, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %272 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %272, i32* %3, align 4
  br label %365

273:                                              ; preds = %265, %259
  %274 = load i64, i64* %15, align 8
  %275 = load i64, i64* @WINDOW_MINIMUM, align 8
  %276 = icmp slt i64 %274, %275
  br i1 %276, label %289, label %277

277:                                              ; preds = %273
  %278 = load i64, i64* %15, align 8
  %279 = load i64, i64* @WINDOW_MAXIMUM, align 8
  %280 = icmp sgt i64 %278, %279
  br i1 %280, label %289, label %281

281:                                              ; preds = %277
  %282 = load i64, i64* %16, align 8
  %283 = load i64, i64* @WINDOW_MINIMUM, align 8
  %284 = icmp slt i64 %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %16, align 8
  %287 = load i64, i64* @WINDOW_MAXIMUM, align 8
  %288 = icmp sgt i64 %286, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %285, %281, %277, %273
  %290 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %291 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %290, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %292 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %292, i32* %3, align 4
  br label %365

293:                                              ; preds = %285
  %294 = load %struct.client*, %struct.client** %7, align 8
  %295 = getelementptr inbounds %struct.client, %struct.client* %294, i32 0, i32 3
  %296 = load i64, i64* %15, align 8
  %297 = load i64, i64* %16, align 8
  %298 = call i32 @tty_set_size(%struct.tty* %295, i64 %296, i64 %297)
  %299 = load i32, i32* @CLIENT_SIZECHANGED, align 4
  %300 = load %struct.client*, %struct.client** %7, align 8
  %301 = getelementptr inbounds %struct.client, %struct.client* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = call i32 (...) @recalculate_sizes()
  br label %305

305:                                              ; preds = %293, %244
  %306 = load %struct.args*, %struct.args** %6, align 8
  %307 = call i64 @args_has(%struct.args* %306, i8 signext 70)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %341

309:                                              ; preds = %305
  %310 = load %struct.client*, %struct.client** %7, align 8
  %311 = getelementptr inbounds %struct.client, %struct.client* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @CLIENT_CONTROL, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %309
  %317 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %318 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %317, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %319 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %319, i32* %3, align 4
  br label %365

320:                                              ; preds = %309
  %321 = load %struct.args*, %struct.args** %6, align 8
  %322 = call i8* @args_get(%struct.args* %321, float 7.000000e+01)
  %323 = call i8* @xstrdup(i8* %322)
  store i8* %323, i8** %12, align 8
  store i8* %323, i8** %14, align 8
  br label %324

324:                                              ; preds = %337, %320
  %325 = call i8* @strsep(i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %325, i8** %13, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %338

327:                                              ; preds = %324
  %328 = load i8*, i8** %13, align 8
  %329 = call i64 @strcmp(i8* %328, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %327
  %332 = load i32, i32* @CLIENT_CONTROL_NOOUTPUT, align 4
  %333 = load %struct.client*, %struct.client** %7, align 8
  %334 = getelementptr inbounds %struct.client, %struct.client* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %331, %327
  br label %324

338:                                              ; preds = %324
  %339 = load i8*, i8** %12, align 8
  %340 = call i32 @free(i8* %339)
  br label %341

341:                                              ; preds = %338, %305
  %342 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %342, i32* %3, align 4
  br label %365

343:                                              ; preds = %240
  %344 = load %struct.args*, %struct.args** %6, align 8
  %345 = call i64 @args_has(%struct.args* %344, i8 signext 83)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %343
  %348 = load i32, i32* @CLIENT_STATUSFORCE, align 4
  %349 = load %struct.client*, %struct.client** %7, align 8
  %350 = getelementptr inbounds %struct.client, %struct.client* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 8
  %353 = load %struct.client*, %struct.client** %7, align 8
  %354 = call i32 @server_status_client(%struct.client* %353)
  br label %363

355:                                              ; preds = %343
  %356 = load i32, i32* @CLIENT_STATUSFORCE, align 4
  %357 = load %struct.client*, %struct.client** %7, align 8
  %358 = getelementptr inbounds %struct.client, %struct.client* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 8
  %361 = load %struct.client*, %struct.client** %7, align 8
  %362 = call i32 @server_redraw_client(%struct.client* %361)
  br label %363

363:                                              ; preds = %355, %347
  %364 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %364, i32* %3, align 4
  br label %365

365:                                              ; preds = %363, %341, %316, %289, %269, %255, %234, %214, %66, %26
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i8*, i32) #1

declare dso_local i8* @args_get(%struct.args*, float) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @strtonum(i32, i32, i32, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @tty_update_client_offset(%struct.client*) #1

declare dso_local i32 @server_redraw_client(%struct.client*) #1

declare dso_local i32 @tty_putcode_ptr2(%struct.tty*, i32, i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @tty_set_size(%struct.tty*, i64, i64) #1

declare dso_local i32 @recalculate_sizes(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @server_status_client(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
