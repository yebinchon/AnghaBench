; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_redraw.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, %struct.session*, %struct.status_line }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.session = type { i32 }
%struct.status_line = type { %struct.screen*, i32 }
%struct.screen = type { i64, i32, i32, i32 }
%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i64, i32, i32, i32 }

@PROMPT_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"message-command-style\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"message-style\00", align 1
@GRID_ATTR_REVERSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_prompt_redraw(%struct.client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.status_line*, align 8
  %5 = alloca %struct.screen_write_ctx, align 4
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.screen, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.grid_cell, align 8
  %17 = alloca %struct.grid_cell, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  %18 = load %struct.client*, %struct.client** %3, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 6
  store %struct.status_line* %19, %struct.status_line** %4, align 8
  %20 = load %struct.client*, %struct.client** %3, align 8
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 5
  %22 = load %struct.session*, %struct.session** %21, align 8
  store %struct.session* %22, %struct.session** %6, align 8
  %23 = load %struct.client*, %struct.client** %3, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.client*, %struct.client** %3, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %1
  store i32 0, i32* %2, align 4
  br label %300

35:                                               ; preds = %28
  %36 = load %struct.status_line*, %struct.status_line** %4, align 8
  %37 = getelementptr inbounds %struct.status_line, %struct.status_line* %36, i32 0, i32 0
  %38 = load %struct.screen*, %struct.screen** %37, align 8
  %39 = call i32 @memcpy(%struct.screen* %7, %struct.screen* %38, i32 24)
  %40 = load %struct.client*, %struct.client** %3, align 8
  %41 = call i32 @status_line_size(%struct.client* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.status_line*, %struct.status_line** %4, align 8
  %47 = getelementptr inbounds %struct.status_line, %struct.status_line* %46, i32 0, i32 0
  %48 = load %struct.screen*, %struct.screen** %47, align 8
  %49 = load %struct.client*, %struct.client** %3, align 8
  %50 = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @screen_init(%struct.screen* %48, i64 %52, i32 %53, i32 0)
  %55 = load %struct.client*, %struct.client** %3, align 8
  %56 = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PROMPT_COMMAND, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = bitcast %struct.grid_cell* %16 to %struct.screen*
  %62 = load %struct.session*, %struct.session** %6, align 8
  %63 = getelementptr inbounds %struct.session, %struct.session* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @style_apply(%struct.screen* %61, i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %72

66:                                               ; preds = %45
  %67 = bitcast %struct.grid_cell* %16 to %struct.screen*
  %68 = load %struct.session*, %struct.session** %6, align 8
  %69 = getelementptr inbounds %struct.session, %struct.session* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @style_apply(%struct.screen* %67, i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %60
  %73 = bitcast %struct.grid_cell* %17 to %struct.screen*
  %74 = bitcast %struct.grid_cell* %16 to %struct.screen*
  %75 = call i32 @memcpy(%struct.screen* %73, %struct.screen* %74, i32 24)
  %76 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %77 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = xor i32 %78, %76
  store i32 %79, i32* %77, align 8
  %80 = load %struct.client*, %struct.client** %3, align 8
  %81 = getelementptr inbounds %struct.client, %struct.client* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @screen_write_strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.client*, %struct.client** %3, align 8
  %87 = getelementptr inbounds %struct.client, %struct.client* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %85, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %72
  %92 = load %struct.client*, %struct.client** %3, align 8
  %93 = getelementptr inbounds %struct.client, %struct.client* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %91, %72
  %98 = load %struct.status_line*, %struct.status_line** %4, align 8
  %99 = getelementptr inbounds %struct.status_line, %struct.status_line* %98, i32 0, i32 0
  %100 = load %struct.screen*, %struct.screen** %99, align 8
  %101 = call i32 @screen_write_start(%struct.screen_write_ctx* %5, i32* null, %struct.screen* %100)
  %102 = load %struct.status_line*, %struct.status_line** %4, align 8
  %103 = getelementptr inbounds %struct.status_line, %struct.status_line* %102, i32 0, i32 1
  %104 = load %struct.client*, %struct.client** %3, align 8
  %105 = getelementptr inbounds %struct.client, %struct.client* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %5, i32* %103, i32 0, i32 0, i32 %108, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %5, i32 0, i32 %113, i32 0)
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %126, %97
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.client*, %struct.client** %3, align 8
  %119 = getelementptr inbounds %struct.client, %struct.client* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %117, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = bitcast %struct.grid_cell* %16 to %struct.screen*
  %125 = call i32 @screen_write_putc(%struct.screen_write_ctx* %5, %struct.screen* %124, i8 signext 32)
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %5, i32 0, i32 %131, i32 0)
  %133 = load i32, i32* %12, align 4
  %134 = bitcast %struct.grid_cell* %16 to %struct.screen*
  %135 = load %struct.client*, %struct.client** %3, align 8
  %136 = getelementptr inbounds %struct.client, %struct.client* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @screen_write_nputs(%struct.screen_write_ctx* %5, i32 %133, %struct.screen* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %140, 1
  %142 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %5, i32 %139, i32 %141, i32 0)
  %143 = load %struct.client*, %struct.client** %3, align 8
  %144 = getelementptr inbounds %struct.client, %struct.client* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = sub nsw i64 %146, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %129
  br label %285

154:                                              ; preds = %129
  %155 = load %struct.client*, %struct.client** %3, align 8
  %156 = getelementptr inbounds %struct.client, %struct.client* %155, i32 0, i32 2
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load %struct.client*, %struct.client** %3, align 8
  %159 = getelementptr inbounds %struct.client, %struct.client* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @utf8_strwidth(%struct.TYPE_5__* %157, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load %struct.client*, %struct.client** %3, align 8
  %163 = getelementptr inbounds %struct.client, %struct.client* %162, i32 0, i32 2
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = call i32 @utf8_strwidth(%struct.TYPE_5__* %164, i32 -1)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %154
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %11, align 4
  %172 = sub nsw i32 %170, %171
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %15, align 4
  br label %176

175:                                              ; preds = %154
  store i32 0, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %169
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %15, align 4
  br label %182

182:                                              ; preds = %180, %176
  store i32 0, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %261, %182
  %184 = load %struct.client*, %struct.client** %3, align 8
  %185 = getelementptr inbounds %struct.client, %struct.client* %184, i32 0, i32 2
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %264

193:                                              ; preds = %183
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load %struct.client*, %struct.client** %3, align 8
  %199 = getelementptr inbounds %struct.client, %struct.client* %198, i32 0, i32 2
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %13, align 4
  br label %261

208:                                              ; preds = %193
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %210, %211
  %213 = icmp sge i32 %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %264

215:                                              ; preds = %208
  %216 = load %struct.client*, %struct.client** %3, align 8
  %217 = getelementptr inbounds %struct.client, %struct.client* %216, i32 0, i32 2
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %227, %228
  %230 = icmp sgt i32 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %215
  br label %264

232:                                              ; preds = %215
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.client*, %struct.client** %3, align 8
  %235 = getelementptr inbounds %struct.client, %struct.client* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %233, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %16, i32 0, i32 2
  %240 = load %struct.client*, %struct.client** %3, align 8
  %241 = getelementptr inbounds %struct.client, %struct.client* %240, i32 0, i32 2
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %244
  %246 = call i32 @utf8_copy(i32* %239, %struct.TYPE_5__* %245)
  %247 = bitcast %struct.grid_cell* %16 to %struct.screen*
  %248 = call i32 @screen_write_cell(%struct.screen_write_ctx* %5, %struct.screen* %247)
  br label %260

249:                                              ; preds = %232
  %250 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 2
  %251 = load %struct.client*, %struct.client** %3, align 8
  %252 = getelementptr inbounds %struct.client, %struct.client* %251, i32 0, i32 2
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = call i32 @utf8_copy(i32* %250, %struct.TYPE_5__* %256)
  %258 = bitcast %struct.grid_cell* %17 to %struct.screen*
  %259 = call i32 @screen_write_cell(%struct.screen_write_ctx* %5, %struct.screen* %258)
  br label %260

260:                                              ; preds = %249, %238
  br label %261

261:                                              ; preds = %260, %197
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  br label %183

264:                                              ; preds = %231, %214, %183
  %265 = load %struct.status_line*, %struct.status_line** %4, align 8
  %266 = getelementptr inbounds %struct.status_line, %struct.status_line* %265, i32 0, i32 0
  %267 = load %struct.screen*, %struct.screen** %266, align 8
  %268 = getelementptr inbounds %struct.screen, %struct.screen* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.status_line*, %struct.status_line** %4, align 8
  %271 = getelementptr inbounds %struct.status_line, %struct.status_line* %270, i32 0, i32 0
  %272 = load %struct.screen*, %struct.screen** %271, align 8
  %273 = call i64 @screen_size_x(%struct.screen* %272)
  %274 = icmp slt i64 %269, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %264
  %276 = load %struct.client*, %struct.client** %3, align 8
  %277 = getelementptr inbounds %struct.client, %struct.client* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = icmp sge i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = bitcast %struct.grid_cell* %17 to %struct.screen*
  %283 = call i32 @screen_write_putc(%struct.screen_write_ctx* %5, %struct.screen* %282, i8 signext 32)
  br label %284

284:                                              ; preds = %281, %275, %264
  br label %285

285:                                              ; preds = %284, %153
  %286 = call i32 @screen_write_stop(%struct.screen_write_ctx* %5)
  %287 = load %struct.status_line*, %struct.status_line** %4, align 8
  %288 = getelementptr inbounds %struct.status_line, %struct.status_line* %287, i32 0, i32 0
  %289 = load %struct.screen*, %struct.screen** %288, align 8
  %290 = getelementptr inbounds %struct.screen, %struct.screen* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = getelementptr inbounds %struct.screen, %struct.screen* %7, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i64 @grid_compare(i32 %291, i32 %293)
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %285
  %297 = call i32 @screen_free(%struct.screen* %7)
  store i32 0, i32* %2, align 4
  br label %300

298:                                              ; preds = %285
  %299 = call i32 @screen_free(%struct.screen* %7)
  store i32 1, i32* %2, align 4
  br label %300

300:                                              ; preds = %298, %296, %34
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32 @memcpy(%struct.screen*, %struct.screen*, i32) #1

declare dso_local i32 @status_line_size(%struct.client*) #1

declare dso_local i32 @screen_init(%struct.screen*, i64, i32, i32) #1

declare dso_local i32 @style_apply(%struct.screen*, i32, i8*) #1

declare dso_local i32 @screen_write_strlen(i8*, i32) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @screen_write_fast_copy(%struct.screen_write_ctx*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.screen*, i8 signext) #1

declare dso_local i32 @screen_write_nputs(%struct.screen_write_ctx*, i32, %struct.screen*, i8*, i32) #1

declare dso_local i32 @utf8_strwidth(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @utf8_copy(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @screen_write_cell(%struct.screen_write_ctx*, %struct.screen*) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i64 @grid_compare(i32, i32) #1

declare dso_local i32 @screen_free(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
