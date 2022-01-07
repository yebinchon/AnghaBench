; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_key.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i64, i64, i32, i64, i64, i64, i8*, i32, %struct.TYPE_2__, i32, %struct.mode_tree_line*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mode_tree_line = type { i32, %struct.mode_tree_item* }
%struct.mode_tree_item = type { i32, i32, i32, %struct.mode_tree_item*, i32 }
%struct.client = type { i32 }
%struct.mouse_event = type { i32 }

@KEYC_NONE = common dso_local global i8 0, align 1
@KEYC_MOUSEDOWN3_PANE = common dso_local global i8 0, align 1
@KEYC_MOUSEDOWN1_PANE = common dso_local global i8 0, align 1
@KEYC_DOUBLECLICK1_PANE = common dso_local global i8 0, align 1
@KEYC_MASK_MOD = common dso_local global i8 0, align 1
@KEYC_ESCAPE = common dso_local global i8 0, align 1
@KEYC_MASK_KEY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [10 x i8] c"(search) \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mode_tree_search_callback = common dso_local global i32 0, align 4
@mode_tree_search_free = common dso_local global i32 0, align 4
@PROMPT_NOFORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"(filter) \00", align 1
@mode_tree_filter_callback = common dso_local global i32 0, align 4
@mode_tree_filter_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mode_tree_key(%struct.mode_tree_data* %0, %struct.client* %1, i8* %2, %struct.mouse_event* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mode_tree_data*, align 8
  %9 = alloca %struct.client*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mouse_event*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.mode_tree_line*, align 8
  %15 = alloca %struct.mode_tree_item*, align 8
  %16 = alloca %struct.mode_tree_item*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %8, align 8
  store %struct.client* %1, %struct.client** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.mouse_event* %3, %struct.mouse_event** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @KEYC_IS_MOUSE(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %167

26:                                               ; preds = %6
  %27 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %28 = icmp ne %struct.mouse_event* %27, null
  br i1 %28, label %29, label %167

29:                                               ; preds = %26
  %30 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %31 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %34 = call i64 @cmd_mouse_at(i32 %32, %struct.mouse_event* %33, i64* %18, i64* %19, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8, i8* @KEYC_NONE, align 1
  %38 = load i8*, i8** %10, align 8
  store i8 %37, i8* %38, align 1
  store i32 0, i32* %7, align 4
  br label %568

39:                                               ; preds = %29
  %40 = load i64*, i64** %12, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %18, align 8
  %44 = load i64*, i64** %12, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64*, i64** %13, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* %19, align 8
  %50 = load i64*, i64** %13, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %18, align 8
  %53 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %54 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %19, align 8
  %59 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %60 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57, %51
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @KEYC_MOUSEDOWN3_PANE, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %72 = load %struct.client*, %struct.client** %9, align 8
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %19, align 8
  %75 = call i32 @mode_tree_display_menu(%struct.mode_tree_data* %71, %struct.client* %72, i64 %73, i64 %74, i32 1)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %78 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i8, i8* @KEYC_NONE, align 1
  %83 = load i8*, i8** %10, align 8
  store i8 %82, i8* %83, align 1
  br label %84

84:                                               ; preds = %81, %76
  store i32 0, i32* %7, align 4
  br label %568

85:                                               ; preds = %57
  %86 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %87 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %19, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %92 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %150

95:                                               ; preds = %85
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @KEYC_MOUSEDOWN1_PANE, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %116, label %102

102:                                              ; preds = %95
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = load i8, i8* @KEYC_MOUSEDOWN3_PANE, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i8*, i8** %10, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* @KEYC_DOUBLECLICK1_PANE, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %109, %102, %95
  %117 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %118 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %19, align 8
  %121 = add nsw i64 %119, %120
  %122 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %123 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %122, i32 0, i32 5
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %116, %109
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* @KEYC_DOUBLECLICK1_PANE, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i8*, i8** %10, align 8
  store i8 13, i8* %132, align 1
  br label %149

133:                                              ; preds = %124
  %134 = load i8*, i8** %10, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* @KEYC_MOUSEDOWN3_PANE, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %142 = load %struct.client*, %struct.client** %9, align 8
  %143 = load i64, i64* %18, align 8
  %144 = load i64, i64* %19, align 8
  %145 = call i32 @mode_tree_display_menu(%struct.mode_tree_data* %141, %struct.client* %142, i64 %143, i64 %144, i32 0)
  br label %146

146:                                              ; preds = %140, %133
  %147 = load i8, i8* @KEYC_NONE, align 1
  %148 = load i8*, i8** %10, align 8
  store i8 %147, i8* %148, align 1
  br label %149

149:                                              ; preds = %146, %131
  br label %166

150:                                              ; preds = %85
  %151 = load i8*, i8** %10, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* @KEYC_MOUSEDOWN3_PANE, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %159 = load %struct.client*, %struct.client** %9, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load i64, i64* %19, align 8
  %162 = call i32 @mode_tree_display_menu(%struct.mode_tree_data* %158, %struct.client* %159, i64 %160, i64 %161, i32 0)
  br label %163

163:                                              ; preds = %157, %150
  %164 = load i8, i8* @KEYC_NONE, align 1
  %165 = load i8*, i8** %10, align 8
  store i8 %164, i8* %165, align 1
  br label %166

166:                                              ; preds = %163, %149
  store i32 0, i32* %7, align 4
  br label %568

167:                                              ; preds = %26, %6
  %168 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %169 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %168, i32 0, i32 10
  %170 = load %struct.mode_tree_line*, %struct.mode_tree_line** %169, align 8
  %171 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %172 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %170, i64 %173
  store %struct.mode_tree_line* %174, %struct.mode_tree_line** %14, align 8
  %175 = load %struct.mode_tree_line*, %struct.mode_tree_line** %14, align 8
  %176 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %175, i32 0, i32 1
  %177 = load %struct.mode_tree_item*, %struct.mode_tree_item** %176, align 8
  store %struct.mode_tree_item* %177, %struct.mode_tree_item** %15, align 8
  store i32 -1, i32* %20, align 4
  %178 = load i8*, i8** %10, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp sge i32 %180, 48
  br i1 %181, label %182, label %192

182:                                              ; preds = %167
  %183 = load i8*, i8** %10, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp sle i32 %185, 57
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i8*, i8** %10, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = sub nsw i32 %190, 48
  store i32 %191, i32* %20, align 4
  br label %224

192:                                              ; preds = %182, %167
  %193 = load i8*, i8** %10, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = load i8, i8* @KEYC_MASK_MOD, align 1
  %197 = sext i8 %196 to i32
  %198 = and i32 %195, %197
  %199 = load i8, i8* @KEYC_ESCAPE, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %192
  %203 = load i8*, i8** %10, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = load i8, i8* @KEYC_MASK_KEY, align 1
  %207 = sext i8 %206 to i32
  %208 = and i32 %205, %207
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %21, align 1
  %210 = load i8, i8* %21, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp sge i32 %211, 97
  br i1 %212, label %213, label %222

213:                                              ; preds = %202
  %214 = load i8, i8* %21, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp sle i32 %215, 122
  br i1 %216, label %217, label %222

217:                                              ; preds = %213
  %218 = load i8, i8* %21, align 1
  %219 = sext i8 %218 to i32
  %220 = sub nsw i32 %219, 97
  %221 = add nsw i32 10, %220
  store i32 %221, i32* %20, align 4
  br label %222

222:                                              ; preds = %217, %213, %202
  br label %223

223:                                              ; preds = %222, %192
  br label %224

224:                                              ; preds = %223, %187
  %225 = load i32, i32* %20, align 4
  %226 = icmp ne i32 %225, -1
  br i1 %226, label %227, label %244

227:                                              ; preds = %224
  %228 = load i32, i32* %20, align 4
  %229 = sext i32 %228 to i64
  %230 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %231 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %232, 1
  %234 = icmp sgt i64 %229, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i8, i8* @KEYC_NONE, align 1
  %237 = load i8*, i8** %10, align 8
  store i8 %236, i8* %237, align 1
  store i32 0, i32* %7, align 4
  br label %568

238:                                              ; preds = %227
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %242 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %241, i32 0, i32 5
  store i64 %240, i64* %242, align 8
  %243 = load i8*, i8** %10, align 8
  store i8 13, i8* %243, align 1
  store i32 0, i32* %7, align 4
  br label %568

244:                                              ; preds = %224
  %245 = load i8*, i8** %10, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  switch i32 %247, label %567 [
    i32 113, label %248
    i32 27, label %248
    i32 7, label %248
    i32 130, label %249
    i32 107, label %249
    i32 128, label %249
    i32 16, label %249
    i32 137, label %252
    i32 106, label %252
    i32 129, label %252
    i32 14, label %252
    i32 103, label %255
    i32 132, label %255
    i32 2, label %255
    i32 71, label %275
    i32 133, label %275
    i32 6, label %275
    i32 135, label %299
    i32 136, label %304
    i32 116, label %334
    i32 84, label %368
    i32 20, label %388
    i32 79, label %429
    i32 114, label %450
    i32 134, label %463
    i32 104, label %463
    i32 45, label %463
    i32 131, label %495
    i32 108, label %495
    i32 43, label %495
    i32 63, label %520
    i32 47, label %520
    i32 19, label %520
    i32 110, label %531
    i32 102, label %534
    i32 118, label %548
  ]

248:                                              ; preds = %244, %244, %244
  store i32 1, i32* %7, align 4
  br label %568

249:                                              ; preds = %244, %244, %244, %244
  %250 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %251 = call i32 @mode_tree_up(%struct.mode_tree_data* %250, i32 1)
  br label %567

252:                                              ; preds = %244, %244, %244, %244
  %253 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %254 = call i32 @mode_tree_down(%struct.mode_tree_data* %253, i32 1)
  br label %567

255:                                              ; preds = %244, %244, %244
  store i64 0, i64* %17, align 8
  br label %256

256:                                              ; preds = %271, %255
  %257 = load i64, i64* %17, align 8
  %258 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %259 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp slt i64 %257, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %256
  %263 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %264 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %274

268:                                              ; preds = %262
  %269 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %270 = call i32 @mode_tree_up(%struct.mode_tree_data* %269, i32 1)
  br label %271

271:                                              ; preds = %268
  %272 = load i64, i64* %17, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* %17, align 8
  br label %256

274:                                              ; preds = %267, %256
  br label %567

275:                                              ; preds = %244, %244, %244
  store i64 0, i64* %17, align 8
  br label %276

276:                                              ; preds = %295, %275
  %277 = load i64, i64* %17, align 8
  %278 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %279 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp slt i64 %277, %280
  br i1 %281, label %282, label %298

282:                                              ; preds = %276
  %283 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %284 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %287 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = sub nsw i64 %288, 1
  %290 = icmp eq i64 %285, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %282
  br label %298

292:                                              ; preds = %282
  %293 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %294 = call i32 @mode_tree_down(%struct.mode_tree_data* %293, i32 1)
  br label %295

295:                                              ; preds = %292
  %296 = load i64, i64* %17, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %17, align 8
  br label %276

298:                                              ; preds = %291, %276
  br label %567

299:                                              ; preds = %244
  %300 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %301 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %300, i32 0, i32 5
  store i64 0, i64* %301, align 8
  %302 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %303 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %302, i32 0, i32 3
  store i64 0, i64* %303, align 8
  br label %567

304:                                              ; preds = %244
  %305 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %306 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %307, 1
  %309 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %310 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %309, i32 0, i32 5
  store i64 %308, i64* %310, align 8
  %311 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %312 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %311, i32 0, i32 5
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %315 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = sub nsw i64 %316, 1
  %318 = icmp ugt i64 %313, %317
  br i1 %318, label %319, label %330

319:                                              ; preds = %304
  %320 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %321 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %324 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = sub i64 %322, %325
  %327 = add i64 %326, 1
  %328 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %329 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %328, i32 0, i32 3
  store i64 %327, i64* %329, align 8
  br label %333

330:                                              ; preds = %304
  %331 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %332 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %331, i32 0, i32 3
  store i64 0, i64* %332, align 8
  br label %333

333:                                              ; preds = %330, %319
  br label %567

334:                                              ; preds = %244
  %335 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %336 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %358, label %339

339:                                              ; preds = %334
  %340 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %341 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %340, i32 0, i32 3
  %342 = load %struct.mode_tree_item*, %struct.mode_tree_item** %341, align 8
  store %struct.mode_tree_item* %342, %struct.mode_tree_item** %16, align 8
  br label %343

343:                                              ; preds = %346, %339
  %344 = load %struct.mode_tree_item*, %struct.mode_tree_item** %16, align 8
  %345 = icmp ne %struct.mode_tree_item* %344, null
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load %struct.mode_tree_item*, %struct.mode_tree_item** %16, align 8
  %348 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %347, i32 0, i32 0
  store i32 0, i32* %348, align 8
  %349 = load %struct.mode_tree_item*, %struct.mode_tree_item** %16, align 8
  %350 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %349, i32 0, i32 3
  %351 = load %struct.mode_tree_item*, %struct.mode_tree_item** %350, align 8
  store %struct.mode_tree_item* %351, %struct.mode_tree_item** %16, align 8
  br label %343

352:                                              ; preds = %343
  %353 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %354 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %353, i32 0, i32 4
  %355 = call i32 @mode_tree_clear_tagged(i32* %354)
  %356 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %357 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %356, i32 0, i32 0
  store i32 1, i32* %357, align 8
  br label %361

358:                                              ; preds = %334
  %359 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %360 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %359, i32 0, i32 0
  store i32 0, i32* %360, align 8
  br label %361

361:                                              ; preds = %358, %352
  %362 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %363 = icmp ne %struct.mouse_event* %362, null
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %366 = call i32 @mode_tree_down(%struct.mode_tree_data* %365, i32 0)
  br label %367

367:                                              ; preds = %364, %361
  br label %567

368:                                              ; preds = %244
  store i64 0, i64* %17, align 8
  br label %369

369:                                              ; preds = %384, %368
  %370 = load i64, i64* %17, align 8
  %371 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %372 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = icmp slt i64 %370, %373
  br i1 %374, label %375, label %387

375:                                              ; preds = %369
  %376 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %377 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %376, i32 0, i32 10
  %378 = load %struct.mode_tree_line*, %struct.mode_tree_line** %377, align 8
  %379 = load i64, i64* %17, align 8
  %380 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %378, i64 %379
  %381 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %380, i32 0, i32 1
  %382 = load %struct.mode_tree_item*, %struct.mode_tree_item** %381, align 8
  %383 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %382, i32 0, i32 0
  store i32 0, i32* %383, align 8
  br label %384

384:                                              ; preds = %375
  %385 = load i64, i64* %17, align 8
  %386 = add nsw i64 %385, 1
  store i64 %386, i64* %17, align 8
  br label %369

387:                                              ; preds = %369
  br label %567

388:                                              ; preds = %244
  store i64 0, i64* %17, align 8
  br label %389

389:                                              ; preds = %425, %388
  %390 = load i64, i64* %17, align 8
  %391 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %392 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %391, i32 0, i32 4
  %393 = load i64, i64* %392, align 8
  %394 = icmp slt i64 %390, %393
  br i1 %394, label %395, label %428

395:                                              ; preds = %389
  %396 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %397 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %396, i32 0, i32 10
  %398 = load %struct.mode_tree_line*, %struct.mode_tree_line** %397, align 8
  %399 = load i64, i64* %17, align 8
  %400 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %398, i64 %399
  %401 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %400, i32 0, i32 1
  %402 = load %struct.mode_tree_item*, %struct.mode_tree_item** %401, align 8
  %403 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %402, i32 0, i32 3
  %404 = load %struct.mode_tree_item*, %struct.mode_tree_item** %403, align 8
  %405 = icmp eq %struct.mode_tree_item* %404, null
  br i1 %405, label %406, label %415

406:                                              ; preds = %395
  %407 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %408 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %407, i32 0, i32 10
  %409 = load %struct.mode_tree_line*, %struct.mode_tree_line** %408, align 8
  %410 = load i64, i64* %17, align 8
  %411 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %409, i64 %410
  %412 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %411, i32 0, i32 1
  %413 = load %struct.mode_tree_item*, %struct.mode_tree_item** %412, align 8
  %414 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %413, i32 0, i32 0
  store i32 1, i32* %414, align 8
  br label %424

415:                                              ; preds = %395
  %416 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %417 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %416, i32 0, i32 10
  %418 = load %struct.mode_tree_line*, %struct.mode_tree_line** %417, align 8
  %419 = load i64, i64* %17, align 8
  %420 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %418, i64 %419
  %421 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %420, i32 0, i32 1
  %422 = load %struct.mode_tree_item*, %struct.mode_tree_item** %421, align 8
  %423 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %422, i32 0, i32 0
  store i32 0, i32* %423, align 8
  br label %424

424:                                              ; preds = %415, %406
  br label %425

425:                                              ; preds = %424
  %426 = load i64, i64* %17, align 8
  %427 = add nsw i64 %426, 1
  store i64 %427, i64* %17, align 8
  br label %389

428:                                              ; preds = %389
  br label %567

429:                                              ; preds = %244
  %430 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %431 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %430, i32 0, i32 8
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %432, align 4
  %435 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %436 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %435, i32 0, i32 8
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %440 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %439, i32 0, i32 9
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %438, %441
  br i1 %442, label %443, label %447

443:                                              ; preds = %429
  %444 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %445 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %444, i32 0, i32 8
  %446 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %445, i32 0, i32 1
  store i32 0, i32* %446, align 4
  br label %447

447:                                              ; preds = %443, %429
  %448 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %449 = call i32 @mode_tree_build(%struct.mode_tree_data* %448)
  br label %567

450:                                              ; preds = %244
  %451 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %452 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %451, i32 0, i32 8
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = icmp ne i32 %454, 0
  %456 = xor i1 %455, true
  %457 = zext i1 %456 to i32
  %458 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %459 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %458, i32 0, i32 8
  %460 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i32 0, i32 0
  store i32 %457, i32* %460, align 4
  %461 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %462 = call i32 @mode_tree_build(%struct.mode_tree_data* %461)
  br label %567

463:                                              ; preds = %244, %244, %244
  %464 = load %struct.mode_tree_line*, %struct.mode_tree_line** %14, align 8
  %465 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %473, label %468

468:                                              ; preds = %463
  %469 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %470 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %477, label %473

473:                                              ; preds = %468, %463
  %474 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %475 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %474, i32 0, i32 3
  %476 = load %struct.mode_tree_item*, %struct.mode_tree_item** %475, align 8
  store %struct.mode_tree_item* %476, %struct.mode_tree_item** %15, align 8
  br label %477

477:                                              ; preds = %473, %468
  %478 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %479 = icmp eq %struct.mode_tree_item* %478, null
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %482 = call i32 @mode_tree_up(%struct.mode_tree_data* %481, i32 0)
  br label %494

483:                                              ; preds = %477
  %484 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %485 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %484, i32 0, i32 1
  store i32 0, i32* %485, align 4
  %486 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %487 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = sext i32 %488 to i64
  %490 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %491 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %490, i32 0, i32 5
  store i64 %489, i64* %491, align 8
  %492 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %493 = call i32 @mode_tree_build(%struct.mode_tree_data* %492)
  br label %494

494:                                              ; preds = %483, %480
  br label %567

495:                                              ; preds = %244, %244, %244
  %496 = load %struct.mode_tree_line*, %struct.mode_tree_line** %14, align 8
  %497 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %495
  %501 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %502 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %508

505:                                              ; preds = %500, %495
  %506 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %507 = call i32 @mode_tree_down(%struct.mode_tree_data* %506, i32 0)
  br label %519

508:                                              ; preds = %500
  %509 = load %struct.mode_tree_line*, %struct.mode_tree_line** %14, align 8
  %510 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %518, label %513

513:                                              ; preds = %508
  %514 = load %struct.mode_tree_item*, %struct.mode_tree_item** %15, align 8
  %515 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %514, i32 0, i32 1
  store i32 1, i32* %515, align 4
  %516 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %517 = call i32 @mode_tree_build(%struct.mode_tree_data* %516)
  br label %518

518:                                              ; preds = %513, %508
  br label %519

519:                                              ; preds = %518, %505
  br label %567

520:                                              ; preds = %244, %244, %244
  %521 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %522 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %521, i32 0, i32 7
  %523 = load i32, i32* %522, align 8
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %522, align 8
  %525 = load %struct.client*, %struct.client** %9, align 8
  %526 = load i32, i32* @mode_tree_search_callback, align 4
  %527 = load i32, i32* @mode_tree_search_free, align 4
  %528 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %529 = load i32, i32* @PROMPT_NOFORMAT, align 4
  %530 = call i32 @status_prompt_set(%struct.client* %525, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %526, i32 %527, %struct.mode_tree_data* %528, i32 %529)
  br label %567

531:                                              ; preds = %244
  %532 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %533 = call i32 @mode_tree_search_set(%struct.mode_tree_data* %532)
  br label %567

534:                                              ; preds = %244
  %535 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %536 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %535, i32 0, i32 7
  %537 = load i32, i32* %536, align 8
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %536, align 8
  %539 = load %struct.client*, %struct.client** %9, align 8
  %540 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %541 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %540, i32 0, i32 6
  %542 = load i8*, i8** %541, align 8
  %543 = load i32, i32* @mode_tree_filter_callback, align 4
  %544 = load i32, i32* @mode_tree_filter_free, align 4
  %545 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %546 = load i32, i32* @PROMPT_NOFORMAT, align 4
  %547 = call i32 @status_prompt_set(%struct.client* %539, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %542, i32 %543, i32 %544, %struct.mode_tree_data* %545, i32 %546)
  br label %567

548:                                              ; preds = %244
  %549 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %550 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = icmp ne i32 %551, 0
  %553 = xor i1 %552, true
  %554 = zext i1 %553 to i32
  %555 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %556 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %555, i32 0, i32 2
  store i32 %554, i32* %556, align 8
  %557 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %558 = call i32 @mode_tree_build(%struct.mode_tree_data* %557)
  %559 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %560 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %559, i32 0, i32 2
  %561 = load i32, i32* %560, align 8
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %548
  %564 = load %struct.mode_tree_data*, %struct.mode_tree_data** %8, align 8
  %565 = call i32 @mode_tree_check_selected(%struct.mode_tree_data* %564)
  br label %566

566:                                              ; preds = %563, %548
  br label %567

567:                                              ; preds = %244, %566, %534, %531, %520, %519, %494, %450, %447, %428, %387, %367, %333, %299, %298, %274, %252, %249
  store i32 0, i32* %7, align 4
  br label %568

568:                                              ; preds = %567, %248, %238, %235, %166, %84, %36
  %569 = load i32, i32* %7, align 4
  ret i32 %569
}

declare dso_local i64 @KEYC_IS_MOUSE(i8 signext) #1

declare dso_local i64 @cmd_mouse_at(i32, %struct.mouse_event*, i64*, i64*, i32) #1

declare dso_local i32 @mode_tree_display_menu(%struct.mode_tree_data*, %struct.client*, i64, i64, i32) #1

declare dso_local i32 @mode_tree_up(%struct.mode_tree_data*, i32) #1

declare dso_local i32 @mode_tree_down(%struct.mode_tree_data*, i32) #1

declare dso_local i32 @mode_tree_clear_tagged(i32*) #1

declare dso_local i32 @mode_tree_build(%struct.mode_tree_data*) #1

declare dso_local i32 @status_prompt_set(%struct.client*, i8*, i8*, i32, i32, %struct.mode_tree_data*, i32) #1

declare dso_local i32 @mode_tree_search_set(%struct.mode_tree_data*) #1

declare dso_local i32 @mode_tree_check_selected(%struct.mode_tree_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
