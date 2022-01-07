; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_split_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_split_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layout_cell = type { i32, i32, i32, i32, i32, i32, %struct.layout_cell* }
%struct.window_pane = type { %struct.TYPE_5__*, %struct.layout_cell* }
%struct.TYPE_5__ = type { %struct.layout_cell*, i32 }

@SPAWN_FULLSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pane-border-status\00", align 1
@PANE_MINIMUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bad layout type\00", align 1
@SPAWN_BEFORE = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.layout_cell* @layout_split_pane(%struct.window_pane* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.layout_cell*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.layout_cell*, align 8
  %11 = alloca %struct.layout_cell*, align 8
  %12 = alloca %struct.layout_cell*, align 8
  %13 = alloca %struct.layout_cell*, align 8
  %14 = alloca %struct.layout_cell*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SPAWN_FULLSIZE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %25, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %34 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.layout_cell*, %struct.layout_cell** %36, align 8
  store %struct.layout_cell* %37, %struct.layout_cell** %10, align 8
  br label %42

38:                                               ; preds = %4
  %39 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %40 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %39, i32 0, i32 1
  %41 = load %struct.layout_cell*, %struct.layout_cell** %40, align 8
  store %struct.layout_cell* %41, %struct.layout_cell** %10, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %44 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @options_get_number(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %26, align 4
  %49 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %50 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  %52 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %53 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %56 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %17, align 4
  %58 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %59 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %92 [
    i32 129, label %62
    i32 128, label %70
  ]

62:                                               ; preds = %42
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @PANE_MINIMUM, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %65, 1
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store %struct.layout_cell* null, %struct.layout_cell** %5, align 8
  br label %438

69:                                               ; preds = %62
  br label %94

70:                                               ; preds = %42
  %71 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %72 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %75 = load i32, i32* %26, align 4
  %76 = call i32 @layout_add_border(%struct.TYPE_5__* %73, %struct.layout_cell* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @PANE_MINIMUM, align 4
  %80 = mul nsw i32 %79, 2
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %21, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load i32, i32* @PANE_MINIMUM, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %21, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %21, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store %struct.layout_cell* null, %struct.layout_cell** %5, align 8
  br label %438

91:                                               ; preds = %86
  br label %94

92:                                               ; preds = %42
  %93 = call i32 @fatalx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %91, %69
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 129
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %23, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %23, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %23, align 4
  %106 = add nsw i32 %105, 1
  %107 = sdiv i32 %106, 2
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %20, align 4
  br label %122

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @SPAWN_BEFORE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %8, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  br label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %20, align 4
  br label %121

121:                                              ; preds = %119, %114
  br label %122

122:                                              ; preds = %121, %104
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* @PANE_MINIMUM, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @PANE_MINIMUM, align 4
  store i32 %127, i32* %20, align 4
  br label %137

128:                                              ; preds = %122
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %23, align 4
  %131 = sub nsw i32 %130, 2
  %132 = icmp sgt i32 %129, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %23, align 4
  %135 = sub nsw i32 %134, 2
  store i32 %135, i32* %20, align 4
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %126
  %138 = load i32, i32* %23, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load i32, i32* %20, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @SPAWN_BEFORE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* %20, align 4
  store i32 %147, i32* %22, align 4
  br label %150

148:                                              ; preds = %137
  %149 = load i32, i32* %19, align 4
  store i32 %149, i32* %22, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = load i32, i32* %25, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %155 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %154, i32 0, i32 0
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %22, align 4
  %160 = call i32 @layout_set_size_check(%struct.TYPE_5__* %156, %struct.layout_cell* %157, i32 %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %153
  store %struct.layout_cell* null, %struct.layout_cell** %5, align 8
  br label %438

163:                                              ; preds = %153, %150
  %164 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %165 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %164, i32 0, i32 6
  %166 = load %struct.layout_cell*, %struct.layout_cell** %165, align 8
  %167 = icmp ne %struct.layout_cell* %166, null
  br i1 %167, label %168, label %199

168:                                              ; preds = %163
  %169 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %170 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %169, i32 0, i32 6
  %171 = load %struct.layout_cell*, %struct.layout_cell** %170, align 8
  %172 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %168
  %177 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %178 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %177, i32 0, i32 6
  %179 = load %struct.layout_cell*, %struct.layout_cell** %178, align 8
  store %struct.layout_cell* %179, %struct.layout_cell** %11, align 8
  %180 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %181 = call %struct.layout_cell* @layout_create_cell(%struct.layout_cell* %180)
  store %struct.layout_cell* %181, %struct.layout_cell** %12, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @SPAWN_BEFORE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %176
  %187 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %188 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %189 = load i32, i32* @entry, align 4
  %190 = call i32 @TAILQ_INSERT_BEFORE(%struct.layout_cell* %187, %struct.layout_cell* %188, i32 %189)
  br label %198

191:                                              ; preds = %176
  %192 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %193 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %192, i32 0, i32 5
  %194 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %195 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %196 = load i32, i32* @entry, align 4
  %197 = call i32 @TAILQ_INSERT_AFTER(i32* %193, %struct.layout_cell* %194, %struct.layout_cell* %195, i32 %196)
  br label %198

198:                                              ; preds = %191, %186
  br label %355

199:                                              ; preds = %168, %163
  %200 = load i32, i32* %25, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %293

202:                                              ; preds = %199
  %203 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %204 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %203, i32 0, i32 6
  %205 = load %struct.layout_cell*, %struct.layout_cell** %204, align 8
  %206 = icmp eq %struct.layout_cell* %205, null
  br i1 %206, label %207, label %293

207:                                              ; preds = %202
  %208 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %209 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %293

213:                                              ; preds = %207
  %214 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %215 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 129
  br i1 %217, label %218, label %230

218:                                              ; preds = %213
  %219 = load i32, i32* %22, align 4
  %220 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %221 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %223 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %222, i32 0, i32 0
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %226 = call i32 @layout_resize_child_cells(%struct.TYPE_5__* %224, %struct.layout_cell* %225)
  %227 = load i32, i32* %23, align 4
  %228 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %229 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %248

230:                                              ; preds = %213
  %231 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %232 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 128
  br i1 %234, label %235, label %247

235:                                              ; preds = %230
  %236 = load i32, i32* %22, align 4
  %237 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %238 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %240 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %239, i32 0, i32 0
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %243 = call i32 @layout_resize_child_cells(%struct.TYPE_5__* %241, %struct.layout_cell* %242)
  %244 = load i32, i32* %23, align 4
  %245 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %246 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %235, %230
  br label %248

248:                                              ; preds = %247, %218
  store i32 1, i32* %24, align 4
  %249 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %250 = call %struct.layout_cell* @layout_create_cell(%struct.layout_cell* %249)
  store %struct.layout_cell* %250, %struct.layout_cell** %12, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sub nsw i32 %251, 1
  %253 = load i32, i32* %22, align 4
  %254 = sub nsw i32 %252, %253
  store i32 %254, i32* %8, align 4
  %255 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %256 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 129
  br i1 %258, label %259, label %264

259:                                              ; preds = %248
  %260 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %16, align 4
  %263 = call i32 @layout_set_size(%struct.layout_cell* %260, i32 %261, i32 %262, i32 0, i32 0)
  br label %275

264:                                              ; preds = %248
  %265 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %266 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, 128
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @layout_set_size(%struct.layout_cell* %270, i32 %271, i32 %272, i32 0, i32 0)
  br label %274

274:                                              ; preds = %269, %264
  br label %275

275:                                              ; preds = %274, %259
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @SPAWN_BEFORE, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %282 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %281, i32 0, i32 5
  %283 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %284 = load i32, i32* @entry, align 4
  %285 = call i32 @TAILQ_INSERT_HEAD(i32* %282, %struct.layout_cell* %283, i32 %284)
  br label %292

286:                                              ; preds = %275
  %287 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %288 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %287, i32 0, i32 5
  %289 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %290 = load i32, i32* @entry, align 4
  %291 = call i32 @TAILQ_INSERT_TAIL(i32* %288, %struct.layout_cell* %289, i32 %290)
  br label %292

292:                                              ; preds = %286, %280
  br label %354

293:                                              ; preds = %207, %202, %199
  %294 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %295 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %294, i32 0, i32 6
  %296 = load %struct.layout_cell*, %struct.layout_cell** %295, align 8
  %297 = call %struct.layout_cell* @layout_create_cell(%struct.layout_cell* %296)
  store %struct.layout_cell* %297, %struct.layout_cell** %11, align 8
  %298 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %299 = load i32, i32* %7, align 4
  %300 = call i32 @layout_make_node(%struct.layout_cell* %298, i32 %299)
  %301 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %302 = load i32, i32* %15, align 4
  %303 = load i32, i32* %16, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %18, align 4
  %306 = call i32 @layout_set_size(%struct.layout_cell* %301, i32 %302, i32 %303, i32 %304, i32 %305)
  %307 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %308 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %307, i32 0, i32 6
  %309 = load %struct.layout_cell*, %struct.layout_cell** %308, align 8
  %310 = icmp eq %struct.layout_cell* %309, null
  br i1 %310, label %311, label %317

311:                                              ; preds = %293
  %312 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %313 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %314 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %313, i32 0, i32 0
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  store %struct.layout_cell* %312, %struct.layout_cell** %316, align 8
  br label %326

317:                                              ; preds = %293
  %318 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %319 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %318, i32 0, i32 6
  %320 = load %struct.layout_cell*, %struct.layout_cell** %319, align 8
  %321 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %320, i32 0, i32 5
  %322 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %323 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %324 = load i32, i32* @entry, align 4
  %325 = call i32 @TAILQ_REPLACE(i32* %321, %struct.layout_cell* %322, %struct.layout_cell* %323, i32 %324)
  br label %326

326:                                              ; preds = %317, %311
  %327 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %328 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %329 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %328, i32 0, i32 6
  store %struct.layout_cell* %327, %struct.layout_cell** %329, align 8
  %330 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %331 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %330, i32 0, i32 5
  %332 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %333 = load i32, i32* @entry, align 4
  %334 = call i32 @TAILQ_INSERT_HEAD(i32* %331, %struct.layout_cell* %332, i32 %333)
  %335 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %336 = call %struct.layout_cell* @layout_create_cell(%struct.layout_cell* %335)
  store %struct.layout_cell* %336, %struct.layout_cell** %12, align 8
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* @SPAWN_BEFORE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %326
  %342 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %343 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %342, i32 0, i32 5
  %344 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %345 = load i32, i32* @entry, align 4
  %346 = call i32 @TAILQ_INSERT_HEAD(i32* %343, %struct.layout_cell* %344, i32 %345)
  br label %353

347:                                              ; preds = %326
  %348 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %349 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %348, i32 0, i32 5
  %350 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %351 = load i32, i32* @entry, align 4
  %352 = call i32 @TAILQ_INSERT_TAIL(i32* %349, %struct.layout_cell* %350, i32 %351)
  br label %353

353:                                              ; preds = %347, %341
  br label %354

354:                                              ; preds = %353, %292
  br label %355

355:                                              ; preds = %354, %198
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* @SPAWN_BEFORE, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  store %struct.layout_cell* %361, %struct.layout_cell** %13, align 8
  %362 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  store %struct.layout_cell* %362, %struct.layout_cell** %14, align 8
  br label %366

363:                                              ; preds = %355
  %364 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  store %struct.layout_cell* %364, %struct.layout_cell** %13, align 8
  %365 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  store %struct.layout_cell* %365, %struct.layout_cell** %14, align 8
  br label %366

366:                                              ; preds = %363, %360
  %367 = load i32, i32* %24, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %390, label %369

369:                                              ; preds = %366
  %370 = load i32, i32* %7, align 4
  %371 = icmp eq i32 %370, 129
  br i1 %371, label %372, label %390

372:                                              ; preds = %369
  %373 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %374 = load i32, i32* %19, align 4
  %375 = load i32, i32* %16, align 4
  %376 = load i32, i32* %17, align 4
  %377 = load i32, i32* %18, align 4
  %378 = call i32 @layout_set_size(%struct.layout_cell* %373, i32 %374, i32 %375, i32 %376, i32 %377)
  %379 = load %struct.layout_cell*, %struct.layout_cell** %14, align 8
  %380 = load i32, i32* %20, align 4
  %381 = load i32, i32* %16, align 4
  %382 = load i32, i32* %17, align 4
  %383 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %384 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %382, %385
  %387 = add nsw i32 %386, 1
  %388 = load i32, i32* %18, align 4
  %389 = call i32 @layout_set_size(%struct.layout_cell* %379, i32 %380, i32 %381, i32 %387, i32 %388)
  br label %415

390:                                              ; preds = %369, %366
  %391 = load i32, i32* %24, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %414, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %7, align 4
  %395 = icmp eq i32 %394, 128
  br i1 %395, label %396, label %414

396:                                              ; preds = %393
  %397 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %398 = load i32, i32* %15, align 4
  %399 = load i32, i32* %19, align 4
  %400 = load i32, i32* %17, align 4
  %401 = load i32, i32* %18, align 4
  %402 = call i32 @layout_set_size(%struct.layout_cell* %397, i32 %398, i32 %399, i32 %400, i32 %401)
  %403 = load %struct.layout_cell*, %struct.layout_cell** %14, align 8
  %404 = load i32, i32* %15, align 4
  %405 = load i32, i32* %20, align 4
  %406 = load i32, i32* %17, align 4
  %407 = load i32, i32* %18, align 4
  %408 = load %struct.layout_cell*, %struct.layout_cell** %13, align 8
  %409 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %407, %410
  %412 = add nsw i32 %411, 1
  %413 = call i32 @layout_set_size(%struct.layout_cell* %403, i32 %404, i32 %405, i32 %406, i32 %412)
  br label %414

414:                                              ; preds = %396, %393, %390
  br label %415

415:                                              ; preds = %414, %372
  %416 = load i32, i32* %25, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %432

418:                                              ; preds = %415
  %419 = load i32, i32* %24, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %418
  %422 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %423 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %422, i32 0, i32 0
  %424 = load %struct.TYPE_5__*, %struct.TYPE_5__** %423, align 8
  %425 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %426 = call i32 @layout_resize_child_cells(%struct.TYPE_5__* %424, %struct.layout_cell* %425)
  br label %427

427:                                              ; preds = %421, %418
  %428 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %429 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %428, i32 0, i32 0
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** %429, align 8
  %431 = call i32 @layout_fix_offsets(%struct.TYPE_5__* %430)
  br label %436

432:                                              ; preds = %415
  %433 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %434 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %435 = call i32 @layout_make_leaf(%struct.layout_cell* %433, %struct.window_pane* %434)
  br label %436

436:                                              ; preds = %432, %427
  %437 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  store %struct.layout_cell* %437, %struct.layout_cell** %5, align 8
  br label %438

438:                                              ; preds = %436, %162, %90, %68
  %439 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  ret %struct.layout_cell* %439
}

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @layout_add_border(%struct.TYPE_5__*, %struct.layout_cell*, i32) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @layout_set_size_check(%struct.TYPE_5__*, %struct.layout_cell*, i32, i32) #1

declare dso_local %struct.layout_cell* @layout_create_cell(%struct.layout_cell*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.layout_cell*, %struct.layout_cell*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.layout_cell*, %struct.layout_cell*, i32) #1

declare dso_local i32 @layout_resize_child_cells(%struct.TYPE_5__*, %struct.layout_cell*) #1

declare dso_local i32 @layout_set_size(%struct.layout_cell*, i32, i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.layout_cell*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.layout_cell*, i32) #1

declare dso_local i32 @layout_make_node(%struct.layout_cell*, i32) #1

declare dso_local i32 @TAILQ_REPLACE(i32*, %struct.layout_cell*, %struct.layout_cell*, i32) #1

declare dso_local i32 @layout_fix_offsets(%struct.TYPE_5__*) #1

declare dso_local i32 @layout_make_leaf(%struct.layout_cell*, %struct.window_pane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
