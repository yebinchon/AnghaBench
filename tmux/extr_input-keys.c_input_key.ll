; ModuleID = '/home/carl/AnghaBench/tmux/extr_input-keys.c_input_key.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input-keys.c_input_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_key_ent = type { i32, i32, i8* }
%struct.window_pane = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mouse_event = type { i32 }
%struct.utf8_data = type { i8*, i64 }

@.str = private unnamed_addr constant [32 x i8] c"writing key 0x%llx (%s) to %%%u\00", align 1
@KEYC_LITERAL = common dso_local global i32 0, align 4
@KEYC_XTERM = common dso_local global i32 0, align 4
@KEYC_ESCAPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\1B\00", align 1
@KEYC_BASE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"xterm-keys\00", align 1
@input_keys = common dso_local global %struct.input_key_ent* null, align 8
@INPUTKEY_KEYPAD = common dso_local global i32 0, align 4
@MODE_KKEYPAD = common dso_local global i32 0, align 4
@INPUTKEY_CURSOR = common dso_local global i32 0, align 4
@MODE_KCURSOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"key 0x%llx missing\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"found key 0x%llx: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_key(%struct.window_pane* %0, i32 %1, %struct.mouse_event* %2) #0 {
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mouse_event*, align 8
  %7 = alloca %struct.input_key_ent*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.utf8_data, align 8
  store %struct.window_pane* %0, %struct.window_pane** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mouse_event* %2, %struct.mouse_event** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @key_string_lookup_key(i32 %14)
  %16 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %17 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i64 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @KEYC_IS_MOUSE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %3
  %24 = load %struct.mouse_event*, %struct.mouse_event** %6, align 8
  %25 = icmp ne %struct.mouse_event* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.mouse_event*, %struct.mouse_event** %6, align 8
  %28 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.mouse_event*, %struct.mouse_event** %6, align 8
  %33 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %37 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %42 = load %struct.mouse_event*, %struct.mouse_event** %6, align 8
  %43 = call i32 @input_key_mouse(%struct.window_pane* %41, %struct.mouse_event* %42)
  br label %44

44:                                               ; preds = %40, %31, %26, %23
  br label %258

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @KEYC_LITERAL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %12, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %52, i8* %55, align 1
  %56 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %57 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %12, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = call i32 @bufferevent_write(i32 %58, i8* %61, i64 1)
  br label %258

63:                                               ; preds = %45
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @KEYC_XTERM, align 4
  %66 = load i32, i32* @KEYC_ESCAPE, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %64, %68
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sle i32 %70, 127
  br i1 %71, label %72, label %95

72:                                               ; preds = %63
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @KEYC_ESCAPE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %79 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bufferevent_write(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %11, align 4
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %12, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %84, i8* %87, align 1
  %88 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %89 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %12, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = call i32 @bufferevent_write(i32 %90, i8* %93, i64 1)
  br label %258

95:                                               ; preds = %63
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %96, 127
  br i1 %97, label %98, label %127

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @KEYC_BASE, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @utf8_split(i32 %103, %struct.utf8_data* %12)
  %105 = load i64, i64* @UTF8_DONE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %258

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @KEYC_ESCAPE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %115 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bufferevent_write(i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %120 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %12, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %12, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @bufferevent_write(i32 %121, i8* %123, i64 %125)
  br label %258

127:                                              ; preds = %98, %95
  %128 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %129 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %128, i32 0, i32 3
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @options_get_number(i32 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %127
  %136 = load i32, i32* %5, align 4
  %137 = call i8* @xterm_keys_lookup(i32 %136)
  store i8* %137, i8** %10, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %141 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = call i32 @bufferevent_write(i32 %142, i8* %143, i64 %145)
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @free(i8* %147)
  br label %258

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %127
  %151 = load i32, i32* @KEYC_XTERM, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %5, align 4
  store i64 0, i64* %8, align 8
  br label %155

155:                                              ; preds = %219, %150
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.input_key_ent*, %struct.input_key_ent** @input_keys, align 8
  %158 = call i64 @nitems(%struct.input_key_ent* %157)
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %160, label %222

160:                                              ; preds = %155
  %161 = load %struct.input_key_ent*, %struct.input_key_ent** @input_keys, align 8
  %162 = load i64, i64* %8, align 8
  %163 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %161, i64 %162
  store %struct.input_key_ent* %163, %struct.input_key_ent** %7, align 8
  %164 = load %struct.input_key_ent*, %struct.input_key_ent** %7, align 8
  %165 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @INPUTKEY_KEYPAD, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %160
  %171 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %172 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MODE_KKEYPAD, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %170
  br label %219

180:                                              ; preds = %170, %160
  %181 = load %struct.input_key_ent*, %struct.input_key_ent** %7, align 8
  %182 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @INPUTKEY_CURSOR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %180
  %188 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %189 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %188, i32 0, i32 2
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @MODE_KCURSOR, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %187
  br label %219

197:                                              ; preds = %187, %180
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @KEYC_ESCAPE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load %struct.input_key_ent*, %struct.input_key_ent** %7, align 8
  %204 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @KEYC_ESCAPE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %222

211:                                              ; preds = %202, %197
  %212 = load %struct.input_key_ent*, %struct.input_key_ent** %7, align 8
  %213 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %222

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218, %196, %179
  %220 = load i64, i64* %8, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %8, align 8
  br label %155

222:                                              ; preds = %217, %210, %155
  %223 = load i64, i64* %8, align 8
  %224 = load %struct.input_key_ent*, %struct.input_key_ent** @input_keys, align 8
  %225 = call i64 @nitems(%struct.input_key_ent* %224)
  %226 = icmp eq i64 %223, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i32, i32* %5, align 4
  %229 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %228)
  br label %258

230:                                              ; preds = %222
  %231 = load %struct.input_key_ent*, %struct.input_key_ent** %7, align 8
  %232 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 @strlen(i8* %233)
  store i64 %234, i64* %9, align 8
  %235 = load i32, i32* %5, align 4
  %236 = load %struct.input_key_ent*, %struct.input_key_ent** %7, align 8
  %237 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %235, i8* %238)
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @KEYC_ESCAPE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %230
  %245 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %246 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @bufferevent_write(i32 %247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  br label %249

249:                                              ; preds = %244, %230
  %250 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %251 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.input_key_ent*, %struct.input_key_ent** %7, align 8
  %254 = getelementptr inbounds %struct.input_key_ent, %struct.input_key_ent* %253, i32 0, i32 2
  %255 = load i8*, i8** %254, align 8
  %256 = load i64, i64* %9, align 8
  %257 = call i32 @bufferevent_write(i32 %252, i8* %255, i64 %256)
  br label %258

258:                                              ; preds = %249, %227, %139, %118, %107, %82, %50, %44
  ret void
}

declare dso_local i32 @log_debug(i8*, i32, ...) #1

declare dso_local i32 @key_string_lookup_key(i32) #1

declare dso_local i64 @KEYC_IS_MOUSE(i32) #1

declare dso_local i32 @input_key_mouse(%struct.window_pane*, %struct.mouse_event*) #1

declare dso_local i32 @bufferevent_write(i32, i8*, i64) #1

declare dso_local i64 @utf8_split(i32, %struct.utf8_data*) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i8* @xterm_keys_lookup(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @nitems(%struct.input_key_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
