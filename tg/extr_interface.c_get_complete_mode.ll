; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_get_complete_mode.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_get_complete_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.command = type { i32*, i64 }

@force_end_mode = common dso_local global i64 0, align 8
@rl_line_buffer = common dso_local global i8* null, align 8
@line_ptr = common dso_local global i8* null, align 8
@autocomplete_peer = common dso_local global i32* null, align 8
@NOT_FOUND = common dso_local global i8* null, align 8
@autocomplete_id = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@cur_token_quoted = common dso_local global i64 0, align 8
@ca_none = common dso_local global i32 0, align 4
@cur_token_len = common dso_local global i32 0, align 4
@cur_token = common dso_local global i8* null, align 8
@cur_token_end_str = common dso_local global i64 0, align 8
@ca_modifier = common dso_local global i32 0, align 4
@ca_extf = common dso_local global i32 0, align 4
@commands = common dso_local global %struct.command* null, align 8
@ca_period = common dso_local global i32 0, align 4
@ca_optional = common dso_local global i32 0, align 4
@ca_string_end = common dso_local global i32 0, align 4
@ca_file_name_end = common dso_local global i32 0, align 4
@ca_msg_string_end = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@ca_string = common dso_local global i32 0, align 4
@ca_file_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_complete_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.command*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  store i64 0, i64* @force_end_mode, align 8
  %12 = load i8*, i8** @rl_line_buffer, align 8
  store i8* %12, i8** @line_ptr, align 8
  store i32* null, i32** @autocomplete_peer, align 8
  %13 = load i8*, i8** @NOT_FOUND, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @autocomplete_id, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %0, %45
  %15 = call i32 (...) @next_token()
  %16 = load i64, i64* @cur_token_quoted, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ca_none, align 4
  store i32 %19, i32* %1, align 4
  br label %308

20:                                               ; preds = %14
  %21 = load i32, i32* @cur_token_len, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 134, i32* %1, align 4
  br label %308

24:                                               ; preds = %20
  %25 = load i8*, i8** @cur_token, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 91
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i64, i64* @cur_token_end_str, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @ca_modifier, align 4
  store i32 %33, i32* %1, align 4
  br label %308

34:                                               ; preds = %29
  %35 = load i8*, i8** @cur_token, align 8
  %36 = load i32, i32* @cur_token_len, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 93
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @ca_none, align 4
  store i32 %44, i32* %1, align 4
  br label %308

45:                                               ; preds = %34
  br label %14

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* @cur_token_quoted, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @ca_none, align 4
  store i32 %51, i32* %1, align 4
  br label %308

52:                                               ; preds = %47
  %53 = load i64, i64* @cur_token_end_str, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 134, i32* %1, align 4
  br label %308

56:                                               ; preds = %52
  %57 = load i8*, i8** @cur_token, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 40
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @ca_extf, align 4
  store i32 %62, i32* %1, align 4
  br label %308

63:                                               ; preds = %56
  %64 = load %struct.command*, %struct.command** @commands, align 8
  store %struct.command* %64, %struct.command** %2, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %79, %63
  %66 = load %struct.command*, %struct.command** %2, align 8
  %67 = getelementptr inbounds %struct.command, %struct.command* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i8*, i8** @cur_token, align 8
  %72 = load i32, i32* @cur_token_len, align 4
  %73 = load %struct.command*, %struct.command** %2, align 8
  %74 = getelementptr inbounds %struct.command, %struct.command* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @is_same_word(i8* %71, i32 %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %84

79:                                               ; preds = %70
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  %82 = load %struct.command*, %struct.command** %2, align 8
  %83 = getelementptr inbounds %struct.command, %struct.command* %82, i32 1
  store %struct.command* %83, %struct.command** %2, align 8
  br label %65

84:                                               ; preds = %78, %65
  %85 = load %struct.command*, %struct.command** %2, align 8
  %86 = getelementptr inbounds %struct.command, %struct.command* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ca_none, align 4
  store i32 %90, i32* %1, align 4
  br label %308

91:                                               ; preds = %84
  %92 = load %struct.command*, %struct.command** %2, align 8
  %93 = getelementptr inbounds %struct.command, %struct.command* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %91, %174, %181, %268, %278, %287, %303, %306
  store i32 0, i32* %5, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ca_period, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 -1
  store i32* %102, i32** %4, align 8
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 255
  store i32 %106, i32* %6, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ca_optional, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @ca_none, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* @ca_none, align 4
  store i32 %115, i32* %1, align 4
  br label %308

116:                                              ; preds = %103
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @ca_string_end, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @ca_file_name_end, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @ca_msg_string_end, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124, %120, %116
  %129 = call i32 (...) @next_token_end_ac()
  %130 = load i32, i32* @cur_token_len, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* @cur_token_end_str, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* @ca_none, align 4
  store i32 %136, i32* %1, align 4
  br label %308

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %1, align 4
  br label %308

139:                                              ; preds = %124
  %140 = load i8*, i8** @line_ptr, align 8
  store i8* %140, i8** %8, align 8
  %141 = call i32 (...) @next_token()
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %168, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 135
  br i1 %146, label %168, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 129
  br i1 %149, label %168, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 130
  br i1 %152, label %168, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 131
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 133
  br i1 %158, label %168, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 132
  br i1 %161, label %168, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %6, align 4
  %164 = icmp eq i32 %163, 134
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %6, align 4
  %167 = icmp eq i32 %166, 136
  br i1 %167, label %168, label %290

168:                                              ; preds = %165, %162, %159, %156, %153, %150, %147, %144, %139
  %169 = load i64, i64* @cur_token_quoted, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %168
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i8*, i8** %8, align 8
  store i8* %175, i8** @line_ptr, align 8
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %4, align 8
  br label %95

178:                                              ; preds = %171
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %8, align 8
  store i8* %182, i8** @line_ptr, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  store i32* %184, i32** %4, align 8
  br label %95

185:                                              ; preds = %178
  %186 = load i32, i32* @ca_none, align 4
  store i32 %186, i32* %1, align 4
  br label %308

187:                                              ; preds = %168
  %188 = load i64, i64* @cur_token_end_str, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %1, align 4
  br label %308

192:                                              ; preds = %187
  store i32 1, i32* %9, align 4
  %193 = load i32, i32* %6, align 4
  switch i32 %193, label %260 [
    i32 128, label %194
    i32 135, label %200
    i32 129, label %206
    i32 136, label %212
    i32 130, label %218
    i32 131, label %232
    i32 132, label %237
    i32 133, label %251
    i32 134, label %256
  ]

194:                                              ; preds = %192
  %195 = call i32 (...) @cur_token_user()
  %196 = call i8* @tgl_get_peer_type(i32 %195)
  %197 = load i8*, i8** @NOT_FOUND, align 8
  %198 = icmp ne i8* %196, %197
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %9, align 4
  br label %262

200:                                              ; preds = %192
  %201 = call i32 (...) @cur_token_chat()
  %202 = call i8* @tgl_get_peer_type(i32 %201)
  %203 = load i8*, i8** @NOT_FOUND, align 8
  %204 = icmp ne i8* %202, %203
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %9, align 4
  br label %262

206:                                              ; preds = %192
  %207 = call i32 (...) @cur_token_encr_chat()
  %208 = call i8* @tgl_get_peer_type(i32 %207)
  %209 = load i8*, i8** @NOT_FOUND, align 8
  %210 = icmp ne i8* %208, %209
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %9, align 4
  br label %262

212:                                              ; preds = %192
  %213 = call i32 (...) @cur_token_channel()
  %214 = call i8* @tgl_get_peer_type(i32 %213)
  %215 = load i8*, i8** @NOT_FOUND, align 8
  %216 = icmp ne i8* %214, %215
  %217 = zext i1 %216 to i32
  store i32 %217, i32* %9, align 4
  br label %262

218:                                              ; preds = %192
  %219 = call i32 (...) @cur_token_peer()
  %220 = call i8* @tgl_get_peer_type(i32 %219)
  %221 = load i8*, i8** @NOT_FOUND, align 8
  %222 = icmp ne i8* %220, %221
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %218
  %227 = load i32, i32* @TLS, align 4
  %228 = call i32 (...) @cur_token_peer()
  %229 = call i32* @tgl_peer_get(i32 %227, i32 %228)
  store i32* %229, i32** @autocomplete_peer, align 8
  %230 = load i8*, i8** @NOT_FOUND, align 8
  store i8* %230, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @autocomplete_id, i32 0, i32 0), align 8
  br label %231

231:                                              ; preds = %226, %218
  br label %262

232:                                              ; preds = %192
  %233 = call i8* (...) @cur_token_int()
  %234 = load i8*, i8** @NOT_FOUND, align 8
  %235 = icmp ne i8* %233, %234
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %9, align 4
  br label %262

237:                                              ; preds = %192
  %238 = call i8* (...) @cur_token_msg_id()
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i8* %238, i8** %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  %243 = zext i1 %242 to i32
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* %9, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %237
  store i32* null, i32** @autocomplete_peer, align 8
  %247 = call i8* (...) @cur_token_msg_id()
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8* %247, i8** %248, align 8
  %249 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_3__* @autocomplete_id to i8*), i8* align 8 %249, i64 8, i1 false)
  br label %250

250:                                              ; preds = %246, %237
  br label %262

251:                                              ; preds = %192
  %252 = call i8* (...) @cur_token_double()
  %253 = load i8*, i8** @NOT_FOUND, align 8
  %254 = icmp ne i8* %252, %253
  %255 = zext i1 %254 to i32
  store i32 %255, i32* %9, align 4
  br label %262

256:                                              ; preds = %192
  %257 = load i32, i32* @cur_token_len, align 4
  %258 = icmp sgt i32 %257, 0
  %259 = zext i1 %258 to i32
  store i32 %259, i32* %9, align 4
  br label %262

260:                                              ; preds = %192
  %261 = call i32 @assert(i32 0)
  br label %262

262:                                              ; preds = %260, %256, %251, %250, %232, %231, %212, %206, %200, %194
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %265
  %269 = load i8*, i8** %8, align 8
  store i8* %269, i8** @line_ptr, align 8
  %270 = load i32*, i32** %4, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %4, align 8
  br label %95

272:                                              ; preds = %265, %262
  %273 = load i32, i32* %5, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %272
  %276 = load i32, i32* %9, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %275
  %279 = load i8*, i8** %8, align 8
  store i8* %279, i8** @line_ptr, align 8
  %280 = load i32*, i32** %4, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 2
  store i32* %281, i32** %4, align 8
  br label %95

282:                                              ; preds = %275, %272
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* @ca_none, align 4
  store i32 %286, i32* %1, align 4
  br label %308

287:                                              ; preds = %282
  %288 = load i32*, i32** %4, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %4, align 8
  br label %95

290:                                              ; preds = %165
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @ca_string, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %298, label %294

294:                                              ; preds = %290
  %295 = load i32, i32* %6, align 4
  %296 = load i32, i32* @ca_file_name, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %294, %290
  %299 = load i64, i64* @cur_token_end_str, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = load i32, i32* %6, align 4
  store i32 %302, i32* %1, align 4
  br label %308

303:                                              ; preds = %298
  %304 = load i32*, i32** %4, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %4, align 8
  br label %95

306:                                              ; preds = %294
  %307 = call i32 @assert(i32 0)
  br label %95

308:                                              ; preds = %301, %285, %190, %185, %137, %135, %114, %89, %61, %55, %50, %43, %32, %23, %18
  %309 = load i32, i32* %1, align 4
  ret i32 %309
}

declare dso_local i32 @next_token(...) #1

declare dso_local i64 @is_same_word(i8*, i32, i64) #1

declare dso_local i32 @next_token_end_ac(...) #1

declare dso_local i8* @tgl_get_peer_type(i32) #1

declare dso_local i32 @cur_token_user(...) #1

declare dso_local i32 @cur_token_chat(...) #1

declare dso_local i32 @cur_token_encr_chat(...) #1

declare dso_local i32 @cur_token_channel(...) #1

declare dso_local i32 @cur_token_peer(...) #1

declare dso_local i32* @tgl_peer_get(i32, i32) #1

declare dso_local i8* @cur_token_int(...) #1

declare dso_local i8* @cur_token_msg_id(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cur_token_double(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
