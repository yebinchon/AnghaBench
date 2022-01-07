; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-list-keys.c_cmd_list_keys_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-list-keys.c_cmd_list_keys_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.key_table = type { i8* }
%struct.key_binding = type { i32, i32, i32 }

@cmd_list_commands_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"table %s doesn't exist\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@KEY_BINDING_REPEAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-r \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-T \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"bind-key %s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_list_keys_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_list_keys_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.key_table*, align 8
  %8 = alloca %struct.key_binding*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %21 = load %struct.cmd*, %struct.cmd** %4, align 8
  %22 = getelementptr inbounds %struct.cmd, %struct.cmd* %21, i32 0, i32 1
  %23 = load %struct.args*, %struct.args** %22, align 8
  store %struct.args* %23, %struct.args** %6, align 8
  %24 = load %struct.cmd*, %struct.cmd** %4, align 8
  %25 = getelementptr inbounds %struct.cmd, %struct.cmd* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @cmd_list_commands_entry
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.cmd*, %struct.cmd** %4, align 8
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %31 = call i32 @cmd_list_keys_commands(%struct.cmd* %29, %struct.cmdq_item* %30)
  store i32 %31, i32* %3, align 4
  br label %264

32:                                               ; preds = %2
  %33 = load %struct.args*, %struct.args** %6, align 8
  %34 = call i8* @args_get(%struct.args* %33, i8 signext 84)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = call i32* @key_bindings_get_table(i8* %38, i32 0)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @cmdq_error(%struct.cmdq_item* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %264

46:                                               ; preds = %37, %32
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %47 = call %struct.key_table* (...) @key_bindings_first_table()
  store %struct.key_table* %47, %struct.key_table** %7, align 8
  br label %48

48:                                               ; preds = %107, %61, %46
  %49 = load %struct.key_table*, %struct.key_table** %7, align 8
  %50 = icmp ne %struct.key_table* %49, null
  br i1 %50, label %51, label %110

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.key_table*, %struct.key_table** %7, align 8
  %56 = getelementptr inbounds %struct.key_table, %struct.key_table* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @strcmp(i8* %57, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.key_table*, %struct.key_table** %7, align 8
  %63 = call %struct.key_table* @key_bindings_next_table(%struct.key_table* %62)
  store %struct.key_table* %63, %struct.key_table** %7, align 8
  br label %48

64:                                               ; preds = %54, %51
  %65 = load %struct.key_table*, %struct.key_table** %7, align 8
  %66 = call %struct.key_binding* @key_bindings_first(%struct.key_table* %65)
  store %struct.key_binding* %66, %struct.key_binding** %8, align 8
  br label %67

67:                                               ; preds = %101, %64
  %68 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %69 = icmp ne %struct.key_binding* %68, null
  br i1 %69, label %70, label %107

70:                                               ; preds = %67
  %71 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %72 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @key_string_lookup_key(i32 %73)
  %75 = call i8* @args_escape(i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %77 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @KEY_BINDING_REPEAT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %83

83:                                               ; preds = %82, %70
  %84 = load %struct.key_table*, %struct.key_table** %7, align 8
  %85 = getelementptr inbounds %struct.key_table, %struct.key_table* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @utf8_cstrwidth(i8* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %91, %83
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @utf8_cstrwidth(i8* %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %99, %93
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load %struct.key_table*, %struct.key_table** %7, align 8
  %105 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %106 = call %struct.key_binding* @key_bindings_next(%struct.key_table* %104, %struct.key_binding* %105)
  store %struct.key_binding* %106, %struct.key_binding** %8, align 8
  br label %67

107:                                              ; preds = %67
  %108 = load %struct.key_table*, %struct.key_table** %7, align 8
  %109 = call %struct.key_table* @key_bindings_next_table(%struct.key_table* %108)
  store %struct.key_table* %109, %struct.key_table** %7, align 8
  br label %48

110:                                              ; preds = %48
  store i64 256, i64* %18, align 8
  %111 = load i64, i64* %18, align 8
  %112 = call i8* @xmalloc(i64 %111)
  store i8* %112, i8** %13, align 8
  %113 = call %struct.key_table* (...) @key_bindings_first_table()
  store %struct.key_table* %113, %struct.key_table** %7, align 8
  br label %114

114:                                              ; preds = %257, %127, %110
  %115 = load %struct.key_table*, %struct.key_table** %7, align 8
  %116 = icmp ne %struct.key_table* %115, null
  br i1 %116, label %117, label %260

117:                                              ; preds = %114
  %118 = load i8*, i8** %9, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.key_table*, %struct.key_table** %7, align 8
  %122 = getelementptr inbounds %struct.key_table, %struct.key_table* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i64 @strcmp(i8* %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct.key_table*, %struct.key_table** %7, align 8
  %129 = call %struct.key_table* @key_bindings_next_table(%struct.key_table* %128)
  store %struct.key_table* %129, %struct.key_table** %7, align 8
  br label %114

130:                                              ; preds = %120, %117
  %131 = load %struct.key_table*, %struct.key_table** %7, align 8
  %132 = call %struct.key_binding* @key_bindings_first(%struct.key_table* %131)
  store %struct.key_binding* %132, %struct.key_binding** %8, align 8
  br label %133

133:                                              ; preds = %242, %130
  %134 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %135 = icmp ne %struct.key_binding* %134, null
  br i1 %135, label %136, label %257

136:                                              ; preds = %133
  %137 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %138 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @key_string_lookup_key(i32 %139)
  %141 = call i8* @args_escape(i32 %140)
  store i8* %141, i8** %11, align 8
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %136
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %155

145:                                              ; preds = %136
  %146 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %147 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @KEY_BINDING_REPEAT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %154

153:                                              ; preds = %145
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %154

154:                                              ; preds = %153, %152
  br label %155

155:                                              ; preds = %154, %144
  %156 = load i8*, i8** %13, align 8
  %157 = load i64, i64* %18, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = call i64 @xsnprintf(i8* %156, i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %158)
  store i64 %159, i64* %19, align 8
  %160 = load %struct.key_table*, %struct.key_table** %7, align 8
  %161 = getelementptr inbounds %struct.key_table, %struct.key_table* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = call i8* @utf8_padcstr(i8* %162, i32 %163)
  store i8* %164, i8** %12, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @strlen(i8* %165)
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %20, align 8
  br label %169

169:                                              ; preds = %176, %155
  %170 = load i64, i64* %19, align 8
  %171 = load i64, i64* %20, align 8
  %172 = add i64 %170, %171
  %173 = add i64 %172, 1
  %174 = load i64, i64* %18, align 8
  %175 = icmp uge i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i64, i64* %18, align 8
  %178 = mul i64 %177, 2
  store i64 %178, i64* %18, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = load i64, i64* %18, align 8
  %181 = call i8* @xrealloc(i8* %179, i64 %180)
  store i8* %181, i8** %13, align 8
  br label %169

182:                                              ; preds = %169
  %183 = load i8*, i8** %13, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = load i64, i64* %18, align 8
  %186 = call i64 @strlcat(i8* %183, i8* %184, i64 %185)
  store i64 %186, i64* %19, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = load i64, i64* %18, align 8
  %189 = call i64 @strlcat(i8* %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %188)
  store i64 %189, i64* %19, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i8*, i8** %11, align 8
  %193 = load i32, i32* %17, align 4
  %194 = call i8* @utf8_padcstr(i8* %192, i32 %193)
  store i8* %194, i8** %12, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @strlen(i8* %195)
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %20, align 8
  br label %199

199:                                              ; preds = %206, %182
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* %20, align 8
  %202 = add i64 %200, %201
  %203 = add i64 %202, 1
  %204 = load i64, i64* %18, align 8
  %205 = icmp uge i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = load i64, i64* %18, align 8
  %208 = mul i64 %207, 2
  store i64 %208, i64* %18, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = load i64, i64* %18, align 8
  %211 = call i8* @xrealloc(i8* %209, i64 %210)
  store i8* %211, i8** %13, align 8
  br label %199

212:                                              ; preds = %199
  %213 = load i8*, i8** %13, align 8
  %214 = load i8*, i8** %12, align 8
  %215 = load i64, i64* %18, align 8
  %216 = call i64 @strlcat(i8* %213, i8* %214, i64 %215)
  store i64 %216, i64* %19, align 8
  %217 = load i8*, i8** %13, align 8
  %218 = load i64, i64* %18, align 8
  %219 = call i64 @strlcat(i8* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %218)
  store i64 %219, i64* %19, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = call i32 @free(i8* %220)
  %222 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %223 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @cmd_list_print(i32 %224, i32 1)
  store i8* %225, i8** %12, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = call i32 @strlen(i8* %226)
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %20, align 8
  br label %229

229:                                              ; preds = %236, %212
  %230 = load i64, i64* %19, align 8
  %231 = load i64, i64* %20, align 8
  %232 = add i64 %230, %231
  %233 = add i64 %232, 1
  %234 = load i64, i64* %18, align 8
  %235 = icmp uge i64 %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %229
  %237 = load i64, i64* %18, align 8
  %238 = mul i64 %237, 2
  store i64 %238, i64* %18, align 8
  %239 = load i8*, i8** %13, align 8
  %240 = load i64, i64* %18, align 8
  %241 = call i8* @xrealloc(i8* %239, i64 %240)
  store i8* %241, i8** %13, align 8
  br label %229

242:                                              ; preds = %229
  %243 = load i8*, i8** %13, align 8
  %244 = load i8*, i8** %12, align 8
  %245 = load i64, i64* %18, align 8
  %246 = call i64 @strlcat(i8* %243, i8* %244, i64 %245)
  %247 = load i8*, i8** %12, align 8
  %248 = call i32 @free(i8* %247)
  %249 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = call i32 @cmdq_print(%struct.cmdq_item* %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %250)
  %252 = load i8*, i8** %11, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load %struct.key_table*, %struct.key_table** %7, align 8
  %255 = load %struct.key_binding*, %struct.key_binding** %8, align 8
  %256 = call %struct.key_binding* @key_bindings_next(%struct.key_table* %254, %struct.key_binding* %255)
  store %struct.key_binding* %256, %struct.key_binding** %8, align 8
  br label %133

257:                                              ; preds = %133
  %258 = load %struct.key_table*, %struct.key_table** %7, align 8
  %259 = call %struct.key_table* @key_bindings_next_table(%struct.key_table* %258)
  store %struct.key_table* %259, %struct.key_table** %7, align 8
  br label %114

260:                                              ; preds = %114
  %261 = load i8*, i8** %13, align 8
  %262 = call i32 @free(i8* %261)
  %263 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %260, %41, %28
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @cmd_list_keys_commands(%struct.cmd*, %struct.cmdq_item*) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i32* @key_bindings_get_table(i8*, i32) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local %struct.key_table* @key_bindings_first_table(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.key_table* @key_bindings_next_table(%struct.key_table*) #1

declare dso_local %struct.key_binding* @key_bindings_first(%struct.key_table*) #1

declare dso_local i8* @args_escape(i32) #1

declare dso_local i32 @key_string_lookup_key(i32) #1

declare dso_local i32 @utf8_cstrwidth(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.key_binding* @key_bindings_next(%struct.key_table*, %struct.key_binding*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @xsnprintf(i8*, i64, i8*, i8*) #1

declare dso_local i8* @utf8_padcstr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i8* @cmd_list_print(i32, i32) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
