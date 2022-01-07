; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_config_command.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_config_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.cmd_handler = type { %struct.cmd_results* (i32, i8**)* }

@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@CMD_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@CMD_BLOCK_END = common dso_local global i32 0, align 4
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Config command: %s\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Command '%s' is shimmed, but unimplemented\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unknown/invalid command '%s'\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"After replacement: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @config_command(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmd_handler*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8** @split_args(i8* %14, i32* %6)
  store i8** %15, i8*** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @CMD_SUCCESS, align 4
  %20 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %19, i8* null)
  store %struct.cmd_results* %20, %struct.cmd_results** %5, align 8
  br label %255

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i8**, i8*** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i8**, i8*** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i8* @join_args(i8** %34, i32 %36)
  %38 = load i8**, i8*** %4, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @CMD_BLOCK, align 4
  %40 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %39, i8* null)
  store %struct.cmd_results* %40, %struct.cmd_results** %5, align 8
  br label %255

41:                                               ; preds = %24, %21
  %42 = load i8**, i8*** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @CMD_BLOCK_END, align 4
  %52 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %51, i8* null)
  store %struct.cmd_results* %52, %struct.cmd_results** %5, align 8
  br label %255

53:                                               ; preds = %41
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 36
  br i1 %59, label %60, label %83

60:                                               ; preds = %53
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @do_var_replacement(i8* %63)
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %64, i8** %66, align 8
  %67 = load i8**, i8*** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i8* @join_args(i8** %67, i32 %68)
  store i8* %69, i8** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i8**, i8*** %7, align 8
  %72 = call i32 @free_argv(i32 %70, i8** %71)
  %73 = load i8*, i8** %8, align 8
  %74 = call i8** @split_args(i8* %73, i32* %6)
  store i8** %74, i8*** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %60
  %80 = load i32, i32* @CMD_SUCCESS, align 4
  %81 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %80, i8* null)
  store %struct.cmd_results* %81, %struct.cmd_results** %5, align 8
  br label %255

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i32, i32* @SWAY_INFO, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @sway_log(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call %struct.cmd_handler* @find_core_handler(i8* %89)
  store %struct.cmd_handler* %90, %struct.cmd_handler** %9, align 8
  %91 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %92 = icmp ne %struct.cmd_handler* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %95 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %94, i32 0, i32 0
  %96 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %95, align 8
  %97 = icmp ne %struct.cmd_results* (i32, i8**)* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %93, %83
  %99 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %100 = icmp ne %struct.cmd_handler* %99, null
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)
  store i8* %102, i8** %10, align 8
  %103 = load i32, i32* @CMD_INVALID, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i8**, i8*** %7, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %103, i8* %104, i8* %107)
  store %struct.cmd_results* %108, %struct.cmd_results** %5, align 8
  br label %255

109:                                              ; preds = %93
  %110 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %111 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %110, i32 0, i32 0
  %112 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %111, align 8
  %113 = icmp eq %struct.cmd_results* (i32, i8**)* %112, @cmd_set
  br i1 %113, label %114, label %146

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %146

117:                                              ; preds = %114
  %118 = load i8**, i8*** %7, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 36
  br i1 %123, label %124, label %146

124:                                              ; preds = %117
  %125 = load i8**, i8*** %7, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strlen(i8* %127)
  %129 = add nsw i64 %128, 2
  %130 = call i8* @calloc(i32 1, i64 %129)
  store i8* %130, i8** %11, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  store i8 36, i8* %132, align 1
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8**, i8*** %7, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strcpy(i8* %134, i8* %137)
  %139 = load i8**, i8*** %7, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8*, i8** %11, align 8
  %144 = load i8**, i8*** %7, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %124, %117, %114, %109
  %147 = load i8**, i8*** %7, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i8* @join_args(i8** %147, i32 %148)
  %150 = call i8* @do_var_replacement(i8* %149)
  store i8* %150, i8** %12, align 8
  %151 = load i32, i32* @SWAY_INFO, align 4
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @sway_log(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* %6, align 4
  %155 = load i8**, i8*** %7, align 8
  %156 = call i32 @free_argv(i32 %154, i8** %155)
  %157 = load i8*, i8** %12, align 8
  %158 = call i8** @split_args(i8* %157, i32* %6)
  store i8** %158, i8*** %7, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 @free(i8* %159)
  %161 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %162 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %161, i32 0, i32 0
  %163 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %162, align 8
  %164 = icmp eq %struct.cmd_results* (i32, i8**)* %163, @cmd_set
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 2, i32 1
  store i32 %166, i32* %13, align 4
  br label %167

167:                                              ; preds = %243, %146
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %246

171:                                              ; preds = %167
  %172 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %173 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %172, i32 0, i32 0
  %174 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %173, align 8
  %175 = icmp ne %struct.cmd_results* (i32, i8**)* %174, @cmd_exec
  br i1 %175, label %176, label %236

176:                                              ; preds = %171
  %177 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %178 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %177, i32 0, i32 0
  %179 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %178, align 8
  %180 = icmp ne %struct.cmd_results* (i32, i8**)* %179, @cmd_exec_always
  br i1 %180, label %181, label %236

181:                                              ; preds = %176
  %182 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %183 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %182, i32 0, i32 0
  %184 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %183, align 8
  %185 = icmp ne %struct.cmd_results* (i32, i8**)* %184, @cmd_mode
  br i1 %185, label %186, label %236

186:                                              ; preds = %181
  %187 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %188 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %187, i32 0, i32 0
  %189 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %188, align 8
  %190 = icmp ne %struct.cmd_results* (i32, i8**)* %189, @cmd_bindsym
  br i1 %190, label %191, label %236

191:                                              ; preds = %186
  %192 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %193 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %192, i32 0, i32 0
  %194 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %193, align 8
  %195 = icmp ne %struct.cmd_results* (i32, i8**)* %194, @cmd_bindcode
  br i1 %195, label %196, label %236

196:                                              ; preds = %191
  %197 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %198 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %197, i32 0, i32 0
  %199 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %198, align 8
  %200 = icmp ne %struct.cmd_results* (i32, i8**)* %199, @cmd_bindswitch
  br i1 %200, label %201, label %236

201:                                              ; preds = %196
  %202 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %203 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %202, i32 0, i32 0
  %204 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %203, align 8
  %205 = icmp ne %struct.cmd_results* (i32, i8**)* %204, @cmd_set
  br i1 %205, label %206, label %236

206:                                              ; preds = %201
  %207 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %208 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %207, i32 0, i32 0
  %209 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %208, align 8
  %210 = icmp ne %struct.cmd_results* (i32, i8**)* %209, @cmd_for_window
  br i1 %210, label %211, label %236

211:                                              ; preds = %206
  %212 = load i8**, i8*** %7, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 34
  br i1 %219, label %229, label %220

220:                                              ; preds = %211
  %221 = load i8**, i8*** %7, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 39
  br i1 %228, label %229, label %236

229:                                              ; preds = %220, %211
  %230 = load i8**, i8*** %7, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @strip_quotes(i8* %234)
  br label %236

236:                                              ; preds = %229, %220, %206, %201, %196, %191, %186, %181, %176, %171
  %237 = load i8**, i8*** %7, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @unescape_string(i8* %241)
  br label %243

243:                                              ; preds = %236
  %244 = load i32, i32* %13, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %13, align 4
  br label %167

246:                                              ; preds = %167
  %247 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %248 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %247, i32 0, i32 0
  %249 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %248, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sub nsw i32 %250, 1
  %252 = load i8**, i8*** %7, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 1
  %254 = call %struct.cmd_results* %249(i32 %251, i8** %253)
  store %struct.cmd_results* %254, %struct.cmd_results** %5, align 8
  br label %255

255:                                              ; preds = %246, %98, %79, %50, %33, %18
  %256 = load i32, i32* %6, align 4
  %257 = load i8**, i8*** %7, align 8
  %258 = call i32 @free_argv(i32 %256, i8** %257)
  %259 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %259
}

declare dso_local i8** @split_args(i8*, i32*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local i8* @do_var_replacement(i8*) #1

declare dso_local i32 @free_argv(i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local %struct.cmd_handler* @find_core_handler(i8*) #1

declare dso_local %struct.cmd_results* @cmd_set(i32, i8**) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_exec(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_exec_always(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_mode(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_bindsym(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_bindcode(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_bindswitch(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_for_window(i32, i8**) #1

declare dso_local i32 @strip_quotes(i8*) #1

declare dso_local i32 @unescape_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
