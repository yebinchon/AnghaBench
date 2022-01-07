; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_command_generator.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_command_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tgl_message = type { i32 }

@command_generator.len = internal global i32 0, align 4
@command_generator.index = internal global i32 0, align 4
@command_generator.mode = internal global i32 0, align 4
@command_generator.command_pos = internal global i8* null, align 8
@command_generator.command_len = internal global i32 0, align 4
@in_chat_mode = common dso_local global i64 0, align 8
@in_chat_commands = common dso_local global i32 0, align 4
@rl_point = common dso_local global i64 0, align 8
@rl_line_buffer = common dso_local global i8* null, align 8
@cur_token = common dso_local global i8* null, align 8
@cur_token_len = common dso_local global i32 0, align 4
@ca_none = common dso_local global i32 0, align 4
@ca_string = common dso_local global i32 0, align 4
@ca_string_end = common dso_local global i32 0, align 4
@ca_number = common dso_local global i32 0, align 4
@ca_double = common dso_local global i32 0, align 4
@ca_msg_id = common dso_local global i32 0, align 4
@TGL_PEER_USER = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@TGL_PEER_CHANNEL = common dso_local global i32 0, align 4
@modifiers = common dso_local global i32 0, align 4
@autocomplete_peer = common dso_local global %struct.TYPE_7__* null, align 8
@TGL_PEER_CHAT = common dso_local global i32 0, align 4
@autocomplete_id = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @command_generator(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tgl_message*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* @in_chat_mode, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %14 = load i32, i32* @in_chat_commands, align 4
  %15 = load i32, i32* @command_generator.index, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* @rl_point, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @complete_string_list(i32 %14, i32 %15, i8* %16, i32 %18, i8** %6)
  store i32 %19, i32* @command_generator.index, align 4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %3, align 8
  br label %358

21:                                               ; preds = %2
  store i8 0, i8* %7, align 1
  %22 = load i8*, i8** @rl_line_buffer, align 8
  %23 = load i64, i64* @rl_point, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %7, align 1
  %26 = load i8*, i8** @rl_line_buffer, align 8
  %27 = load i64, i64* @rl_point, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* @command_generator.len, align 4
  store i32 -1, i32* @command_generator.index, align 4
  %34 = call i32 (...) @get_complete_mode()
  store i32 %34, i32* @command_generator.mode, align 4
  %35 = load i8*, i8** @cur_token, align 8
  store i8* %35, i8** @command_generator.command_pos, align 8
  %36 = load i32, i32* @cur_token_len, align 4
  store i32 %36, i32* @command_generator.command_len, align 4
  br label %48

37:                                               ; preds = %21
  %38 = load i32, i32* @command_generator.mode, align 4
  %39 = icmp ne i32 %38, 134
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* @command_generator.mode, align 4
  %42 = icmp ne i32 %41, 133
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @command_generator.index, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %358

47:                                               ; preds = %43, %40, %37
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* @command_generator.mode, align 4
  %50 = load i32, i32* @ca_none, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %72, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @command_generator.mode, align 4
  %54 = load i32, i32* @ca_string, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @command_generator.mode, align 4
  %58 = load i32, i32* @ca_string_end, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @command_generator.mode, align 4
  %62 = load i32, i32* @ca_number, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @command_generator.mode, align 4
  %66 = load i32, i32* @ca_double, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @command_generator.mode, align 4
  %70 = load i32, i32* @ca_msg_id, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68, %64, %60, %56, %52, %48
  %73 = load i8, i8* %7, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8, i8* %7, align 1
  %77 = load i8*, i8** @rl_line_buffer, align 8
  %78 = load i64, i64* @rl_point, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 %76, i8* %79, align 1
  br label %80

80:                                               ; preds = %75, %72
  store i8* null, i8** %3, align 8
  br label %358

81:                                               ; preds = %68
  %82 = load i32, i32* @command_generator.command_len, align 4
  %83 = icmp sge i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  store i8* null, i8** %8, align 8
  %86 = load i32, i32* @command_generator.mode, align 4
  %87 = and i32 %86, 255
  switch i32 %87, label %349 [
    i32 136, label %88
    i32 128, label %102
    i32 130, label %133
    i32 134, label %163
    i32 133, label %163
    i32 137, label %176
    i32 129, label %191
    i32 138, label %206
    i32 132, label %237
    i32 131, label %252
    i32 135, label %332
  ]

88:                                               ; preds = %81
  %89 = load i32, i32* @command_generator.index, align 4
  %90 = load i8*, i8** @command_generator.command_pos, align 8
  %91 = load i32, i32* @command_generator.command_len, align 4
  %92 = call i32 @complete_command_list(i32 %89, i8* %90, i32 %91, i8** %8)
  store i32 %92, i32* @command_generator.index, align 4
  %93 = load i8, i8* %7, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load i8, i8* %7, align 1
  %97 = load i8*, i8** @rl_line_buffer, align 8
  %98 = load i64, i64* @rl_point, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %99, align 1
  br label %100

100:                                              ; preds = %95, %88
  %101 = load i8*, i8** %8, align 8
  store i8* %101, i8** %3, align 8
  br label %358

102:                                              ; preds = %81
  %103 = load i32, i32* @command_generator.command_len, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i8*, i8** @command_generator.command_pos, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 64
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* @TGL_PEER_USER, align 4
  %113 = load i32, i32* @command_generator.index, align 4
  %114 = load i8*, i8** @command_generator.command_pos, align 8
  %115 = load i32, i32* @command_generator.command_len, align 4
  %116 = call i32 @complete_username(i32 %112, i32 %113, i8* %114, i32 %115, i8** %8)
  store i32 %116, i32* @command_generator.index, align 4
  br label %123

117:                                              ; preds = %105, %102
  %118 = load i32, i32* @TLS, align 4
  %119 = load i32, i32* @command_generator.index, align 4
  %120 = load i8*, i8** @command_generator.command_pos, align 8
  %121 = load i32, i32* @command_generator.command_len, align 4
  %122 = call i32 @tgl_complete_user_list(i32 %118, i32 %119, i8* %120, i32 %121, i8** %8)
  store i32 %122, i32* @command_generator.index, align 4
  br label %123

123:                                              ; preds = %117, %111
  %124 = load i8, i8* %7, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8, i8* %7, align 1
  %128 = load i8*, i8** @rl_line_buffer, align 8
  %129 = load i64, i64* @rl_point, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 %127, i8* %130, align 1
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i8*, i8** %8, align 8
  store i8* %132, i8** %3, align 8
  br label %358

133:                                              ; preds = %81
  %134 = load i32, i32* @command_generator.command_len, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i8*, i8** @command_generator.command_pos, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 64
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* @command_generator.index, align 4
  %144 = load i8*, i8** @command_generator.command_pos, align 8
  %145 = load i32, i32* @command_generator.command_len, align 4
  %146 = call i32 @complete_username(i32 0, i32 %143, i8* %144, i32 %145, i8** %8)
  store i32 %146, i32* @command_generator.index, align 4
  br label %153

147:                                              ; preds = %136, %133
  %148 = load i32, i32* @TLS, align 4
  %149 = load i32, i32* @command_generator.index, align 4
  %150 = load i8*, i8** @command_generator.command_pos, align 8
  %151 = load i32, i32* @command_generator.command_len, align 4
  %152 = call i32 @tgl_complete_peer_list(i32 %148, i32 %149, i8* %150, i32 %151, i8** %8)
  store i32 %152, i32* @command_generator.index, align 4
  br label %153

153:                                              ; preds = %147, %142
  %154 = load i8, i8* %7, align 1
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i8, i8* %7, align 1
  %158 = load i8*, i8** @rl_line_buffer, align 8
  %159 = load i64, i64* @rl_point, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8 %157, i8* %160, align 1
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i8*, i8** %8, align 8
  store i8* %162, i8** %3, align 8
  br label %358

163:                                              ; preds = %81, %81
  %164 = load i8, i8* %7, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i8, i8* %7, align 1
  %168 = load i8*, i8** @rl_line_buffer, align 8
  %169 = load i64, i64* @rl_point, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8 %167, i8* %170, align 1
  br label %171

171:                                              ; preds = %166, %163
  %172 = load i8*, i8** @command_generator.command_pos, align 8
  %173 = load i32, i32* %5, align 4
  %174 = call i8* @rl_filename_completion_function(i8* %172, i32 %173)
  store i8* %174, i8** %8, align 8
  %175 = load i8*, i8** %8, align 8
  store i8* %175, i8** %3, align 8
  br label %358

176:                                              ; preds = %81
  %177 = load i32, i32* @TLS, align 4
  %178 = load i32, i32* @command_generator.index, align 4
  %179 = load i8*, i8** @command_generator.command_pos, align 8
  %180 = load i32, i32* @command_generator.command_len, align 4
  %181 = call i32 @tgl_complete_chat_list(i32 %177, i32 %178, i8* %179, i32 %180, i8** %8)
  store i32 %181, i32* @command_generator.index, align 4
  %182 = load i8, i8* %7, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load i8, i8* %7, align 1
  %186 = load i8*, i8** @rl_line_buffer, align 8
  %187 = load i64, i64* @rl_point, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8 %185, i8* %188, align 1
  br label %189

189:                                              ; preds = %184, %176
  %190 = load i8*, i8** %8, align 8
  store i8* %190, i8** %3, align 8
  br label %358

191:                                              ; preds = %81
  %192 = load i32, i32* @TLS, align 4
  %193 = load i32, i32* @command_generator.index, align 4
  %194 = load i8*, i8** @command_generator.command_pos, align 8
  %195 = load i32, i32* @command_generator.command_len, align 4
  %196 = call i32 @tgl_complete_encr_chat_list(i32 %192, i32 %193, i8* %194, i32 %195, i8** %8)
  store i32 %196, i32* @command_generator.index, align 4
  %197 = load i8, i8* %7, align 1
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %191
  %200 = load i8, i8* %7, align 1
  %201 = load i8*, i8** @rl_line_buffer, align 8
  %202 = load i64, i64* @rl_point, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8 %200, i8* %203, align 1
  br label %204

204:                                              ; preds = %199, %191
  %205 = load i8*, i8** %8, align 8
  store i8* %205, i8** %3, align 8
  br label %358

206:                                              ; preds = %81
  %207 = load i32, i32* @command_generator.command_len, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load i8*, i8** @command_generator.command_pos, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 64
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i32, i32* @TGL_PEER_CHANNEL, align 4
  %217 = load i32, i32* @command_generator.index, align 4
  %218 = load i8*, i8** @command_generator.command_pos, align 8
  %219 = load i32, i32* @command_generator.command_len, align 4
  %220 = call i32 @complete_username(i32 %216, i32 %217, i8* %218, i32 %219, i8** %8)
  store i32 %220, i32* @command_generator.index, align 4
  br label %227

221:                                              ; preds = %209, %206
  %222 = load i32, i32* @TLS, align 4
  %223 = load i32, i32* @command_generator.index, align 4
  %224 = load i8*, i8** @command_generator.command_pos, align 8
  %225 = load i32, i32* @command_generator.command_len, align 4
  %226 = call i32 @tgl_complete_channel_list(i32 %222, i32 %223, i8* %224, i32 %225, i8** %8)
  store i32 %226, i32* @command_generator.index, align 4
  br label %227

227:                                              ; preds = %221, %215
  %228 = load i8, i8* %7, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i8, i8* %7, align 1
  %232 = load i8*, i8** @rl_line_buffer, align 8
  %233 = load i64, i64* @rl_point, align 8
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8 %231, i8* %234, align 1
  br label %235

235:                                              ; preds = %230, %227
  %236 = load i8*, i8** %8, align 8
  store i8* %236, i8** %3, align 8
  br label %358

237:                                              ; preds = %81
  %238 = load i32, i32* @modifiers, align 4
  %239 = load i32, i32* @command_generator.index, align 4
  %240 = load i8*, i8** @command_generator.command_pos, align 8
  %241 = load i32, i32* @command_generator.command_len, align 4
  %242 = call i32 @complete_string_list(i32 %238, i32 %239, i8* %240, i32 %241, i8** %8)
  store i32 %242, i32* @command_generator.index, align 4
  %243 = load i8, i8* %7, align 1
  %244 = icmp ne i8 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %237
  %246 = load i8, i8* %7, align 1
  %247 = load i8*, i8** @rl_line_buffer, align 8
  %248 = load i64, i64* @rl_point, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8 %246, i8* %249, align 1
  br label %250

250:                                              ; preds = %245, %237
  %251 = load i8*, i8** %8, align 8
  store i8* %251, i8** %3, align 8
  br label %358

252:                                              ; preds = %81
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** @autocomplete_peer, align 8
  %254 = icmp ne %struct.TYPE_7__* %253, null
  br i1 %254, label %255, label %282

255:                                              ; preds = %252
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** @autocomplete_peer, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @tgl_get_peer_type(i32 %258)
  %260 = load i32, i32* @TGL_PEER_USER, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** @autocomplete_peer, align 8
  %264 = load i32, i32* @command_generator.index, align 4
  %265 = load i8*, i8** @command_generator.command_pos, align 8
  %266 = load i32, i32* @command_generator.command_len, align 4
  %267 = call i32 @complete_user_command(%struct.TYPE_7__* %263, i32 %264, i8* %265, i32 %266, i8** %8)
  store i32 %267, i32* @command_generator.index, align 4
  br label %268

268:                                              ; preds = %262, %255
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** @autocomplete_peer, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @tgl_get_peer_type(i32 %271)
  %273 = load i32, i32* @TGL_PEER_CHAT, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %268
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** @autocomplete_peer, align 8
  %277 = load i32, i32* @command_generator.index, align 4
  %278 = load i8*, i8** @command_generator.command_pos, align 8
  %279 = load i32, i32* @command_generator.command_len, align 4
  %280 = call i32 @complete_chat_command(%struct.TYPE_7__* %276, i32 %277, i8* %278, i32 %279, i8** %8)
  store i32 %280, i32* @command_generator.index, align 4
  br label %281

281:                                              ; preds = %275, %268
  br label %282

282:                                              ; preds = %281, %252
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @autocomplete_id, i32 0, i32 0), align 4
  %284 = load i32, i32* @NOT_FOUND, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %322

286:                                              ; preds = %282
  %287 = load i32, i32* @TLS, align 4
  %288 = call %struct.tgl_message* @tgl_message_get(i32 %287, %struct.TYPE_6__* @autocomplete_id)
  store %struct.tgl_message* %288, %struct.tgl_message** %9, align 8
  %289 = load %struct.tgl_message*, %struct.tgl_message** %9, align 8
  %290 = icmp ne %struct.tgl_message* %289, null
  br i1 %290, label %291, label %321

291:                                              ; preds = %286
  %292 = load i32, i32* @command_generator.command_len, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %314

294:                                              ; preds = %291
  %295 = load i8*, i8** @command_generator.command_pos, align 8
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 47
  br i1 %298, label %299, label %314

299:                                              ; preds = %294
  %300 = load i32, i32* @TLS, align 4
  %301 = load %struct.tgl_message*, %struct.tgl_message** %9, align 8
  %302 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32* @tgl_peer_get(i32 %300, i32 %303)
  store i32* %304, i32** %10, align 8
  %305 = load i32*, i32** %10, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %313

307:                                              ; preds = %299
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** @autocomplete_peer, align 8
  %309 = load i32, i32* @command_generator.index, align 4
  %310 = load i8*, i8** @command_generator.command_pos, align 8
  %311 = load i32, i32* @command_generator.command_len, align 4
  %312 = call i32 @complete_user_command(%struct.TYPE_7__* %308, i32 %309, i8* %310, i32 %311, i8** %8)
  store i32 %312, i32* @command_generator.index, align 4
  br label %313

313:                                              ; preds = %307, %299
  br label %320

314:                                              ; preds = %294, %291
  %315 = load %struct.tgl_message*, %struct.tgl_message** %9, align 8
  %316 = load i32, i32* @command_generator.index, align 4
  %317 = load i8*, i8** @command_generator.command_pos, align 8
  %318 = load i32, i32* @command_generator.command_len, align 4
  %319 = call i32 @complete_spec_message_answer(%struct.tgl_message* %315, i32 %316, i8* %317, i32 %318, i8** %8)
  store i32 %319, i32* @command_generator.index, align 4
  br label %320

320:                                              ; preds = %314, %313
  br label %321

321:                                              ; preds = %320, %286
  br label %322

322:                                              ; preds = %321, %282
  %323 = load i8, i8* %7, align 1
  %324 = icmp ne i8 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = load i8, i8* %7, align 1
  %327 = load i8*, i8** @rl_line_buffer, align 8
  %328 = load i64, i64* @rl_point, align 8
  %329 = getelementptr inbounds i8, i8* %327, i64 %328
  store i8 %326, i8* %329, align 1
  br label %330

330:                                              ; preds = %325, %322
  %331 = load i8*, i8** %8, align 8
  store i8* %331, i8** %3, align 8
  br label %358

332:                                              ; preds = %81
  %333 = load i32, i32* @TLS, align 4
  %334 = load i8*, i8** %4, align 8
  %335 = load i32, i32* @command_generator.len, align 4
  %336 = load i32, i32* @command_generator.index, align 4
  %337 = load i8*, i8** @rl_line_buffer, align 8
  %338 = load i64, i64* @rl_point, align 8
  %339 = call i32 @tglf_extf_autocomplete(i32 %333, i8* %334, i32 %335, i32 %336, i8** %8, i8* %337, i64 %338)
  store i32 %339, i32* @command_generator.index, align 4
  %340 = load i8, i8* %7, align 1
  %341 = icmp ne i8 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %332
  %343 = load i8, i8* %7, align 1
  %344 = load i8*, i8** @rl_line_buffer, align 8
  %345 = load i64, i64* @rl_point, align 8
  %346 = getelementptr inbounds i8, i8* %344, i64 %345
  store i8 %343, i8* %346, align 1
  br label %347

347:                                              ; preds = %342, %332
  %348 = load i8*, i8** %8, align 8
  store i8* %348, i8** %3, align 8
  br label %358

349:                                              ; preds = %81
  %350 = load i8, i8* %7, align 1
  %351 = icmp ne i8 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %349
  %353 = load i8, i8* %7, align 1
  %354 = load i8*, i8** @rl_line_buffer, align 8
  %355 = load i64, i64* @rl_point, align 8
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  store i8 %353, i8* %356, align 1
  br label %357

357:                                              ; preds = %352, %349
  store i8* null, i8** %3, align 8
  br label %358

358:                                              ; preds = %357, %347, %330, %250, %235, %204, %189, %171, %161, %131, %100, %80, %46, %13
  %359 = load i8*, i8** %3, align 8
  ret i8* %359
}

declare dso_local i32 @complete_string_list(i32, i32, i8*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_complete_mode(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @complete_command_list(i32, i8*, i32, i8**) #1

declare dso_local i32 @complete_username(i32, i32, i8*, i32, i8**) #1

declare dso_local i32 @tgl_complete_user_list(i32, i32, i8*, i32, i8**) #1

declare dso_local i32 @tgl_complete_peer_list(i32, i32, i8*, i32, i8**) #1

declare dso_local i8* @rl_filename_completion_function(i8*, i32) #1

declare dso_local i32 @tgl_complete_chat_list(i32, i32, i8*, i32, i8**) #1

declare dso_local i32 @tgl_complete_encr_chat_list(i32, i32, i8*, i32, i8**) #1

declare dso_local i32 @tgl_complete_channel_list(i32, i32, i8*, i32, i8**) #1

declare dso_local i32 @tgl_get_peer_type(i32) #1

declare dso_local i32 @complete_user_command(%struct.TYPE_7__*, i32, i8*, i32, i8**) #1

declare dso_local i32 @complete_chat_command(%struct.TYPE_7__*, i32, i8*, i32, i8**) #1

declare dso_local %struct.tgl_message* @tgl_message_get(i32, %struct.TYPE_6__*) #1

declare dso_local i32* @tgl_peer_get(i32, i32) #1

declare dso_local i32 @complete_spec_message_answer(%struct.tgl_message*, i32, i8*, i32, i8**) #1

declare dso_local i32 @tglf_extf_autocomplete(i32, i8*, i32, i32, i8**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
