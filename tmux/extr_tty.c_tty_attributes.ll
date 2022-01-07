; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_attributes.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, %struct.grid_cell, %struct.grid_cell }
%struct.grid_cell = type { i64, i64, i64, i64 }
%struct.window_pane = type { i32, i64 }

@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@TTYC_SETAB = common dso_local global i32 0, align 4
@GRID_ATTR_REVERSE = common dso_local global i32 0, align 4
@GRID_ATTR_BRIGHT = common dso_local global i32 0, align 4
@TTYC_BOLD = common dso_local global i32 0, align 4
@GRID_ATTR_DIM = common dso_local global i32 0, align 4
@TTYC_DIM = common dso_local global i32 0, align 4
@GRID_ATTR_ITALICS = common dso_local global i32 0, align 4
@GRID_ATTR_ALL_UNDERSCORE = common dso_local global i32 0, align 4
@GRID_ATTR_UNDERSCORE = common dso_local global i32 0, align 4
@TTYC_SMULX = common dso_local global i32 0, align 4
@TTYC_SMUL = common dso_local global i32 0, align 4
@GRID_ATTR_UNDERSCORE_2 = common dso_local global i32 0, align 4
@GRID_ATTR_UNDERSCORE_3 = common dso_local global i32 0, align 4
@GRID_ATTR_UNDERSCORE_4 = common dso_local global i32 0, align 4
@GRID_ATTR_UNDERSCORE_5 = common dso_local global i32 0, align 4
@GRID_ATTR_BLINK = common dso_local global i32 0, align 4
@TTYC_BLINK = common dso_local global i32 0, align 4
@TTYC_REV = common dso_local global i32 0, align 4
@TTYC_SMSO = common dso_local global i32 0, align 4
@GRID_ATTR_HIDDEN = common dso_local global i32 0, align 4
@TTYC_INVIS = common dso_local global i32 0, align 4
@GRID_ATTR_STRIKETHROUGH = common dso_local global i32 0, align 4
@TTYC_SMXX = common dso_local global i32 0, align 4
@GRID_ATTR_OVERLINE = common dso_local global i32 0, align 4
@TTYC_SMOL = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4
@TTYC_SMACS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_attributes(%struct.tty* %0, %struct.grid_cell* %1, %struct.window_pane* %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca %struct.grid_cell*, align 8
  %8 = alloca %struct.grid_cell, align 8
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  store %struct.window_pane* %2, %struct.window_pane** %6, align 8
  %10 = load %struct.tty*, %struct.tty** %4, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 3
  store %struct.grid_cell* %11, %struct.grid_cell** %7, align 8
  %12 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %13 = icmp ne %struct.window_pane* %12, null
  br i1 %13, label %14, label %68

14:                                               ; preds = %3
  %15 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %16 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.tty*, %struct.tty** %4, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %14
  %24 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %25 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PANE_STYLECHANGED, align 4
  %28 = and i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %23
  %32 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %33 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tty*, %struct.tty** %4, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %42 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tty*, %struct.tty** %4, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %40
  %50 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %51 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tty*, %struct.tty** %4, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %60 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tty*, %struct.tty** %4, align 8
  %63 = getelementptr inbounds %struct.tty, %struct.tty* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %352

68:                                               ; preds = %58, %49, %40, %31, %23, %14, %3
  %69 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %70 = icmp ne %struct.window_pane* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %73 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ %75, %71 ], [ -1, %76 ]
  %79 = load %struct.tty*, %struct.tty** %4, align 8
  %80 = getelementptr inbounds %struct.tty, %struct.tty* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tty*, %struct.tty** %4, align 8
  %82 = getelementptr inbounds %struct.tty, %struct.tty* %81, i32 0, i32 2
  %83 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %84 = call i32 @memcpy(%struct.grid_cell* %82, %struct.grid_cell* %83, i32 32)
  %85 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %86 = call i32 @memcpy(%struct.grid_cell* %8, %struct.grid_cell* %85, i32 32)
  %87 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %88 = icmp ne %struct.window_pane* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %91 = call i32 @tty_default_colours(%struct.grid_cell* %8, %struct.window_pane* %90)
  br label %92

92:                                               ; preds = %89, %77
  %93 = load %struct.tty*, %struct.tty** %4, align 8
  %94 = getelementptr inbounds %struct.tty, %struct.tty* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @TTYC_SETAB, align 4
  %97 = call i64 @tty_term_has(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %140, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %103 = sext i32 %102 to i64
  %104 = and i64 %101, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 7
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @COLOUR_DEFAULT(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %117 = xor i32 %116, -1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, %118
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %115, %110, %106
  br label %139

123:                                              ; preds = %99
  %124 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @COLOUR_DEFAULT(i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %134
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %132, %127, %123
  br label %139

139:                                              ; preds = %138, %122
  br label %140

140:                                              ; preds = %139, %92
  %141 = load %struct.tty*, %struct.tty** %4, align 8
  %142 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %143 = call i32 @tty_check_fg(%struct.tty* %141, %struct.window_pane* %142, %struct.grid_cell* %8)
  %144 = load %struct.tty*, %struct.tty** %4, align 8
  %145 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %146 = call i32 @tty_check_bg(%struct.tty* %144, %struct.window_pane* %145, %struct.grid_cell* %8)
  %147 = load %struct.tty*, %struct.tty** %4, align 8
  %148 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %149 = call i32 @tty_check_us(%struct.tty* %147, %struct.window_pane* %148, %struct.grid_cell* %8)
  %150 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %151 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = xor i64 %154, -1
  %156 = and i64 %152, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %140
  %159 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %160 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165, %140
  %170 = load %struct.tty*, %struct.tty** %4, align 8
  %171 = call i32 @tty_reset(%struct.tty* %170)
  br label %172

172:                                              ; preds = %169, %165, %158
  %173 = load %struct.tty*, %struct.tty** %4, align 8
  %174 = call i32 @tty_colours(%struct.tty* %173, %struct.grid_cell* %8)
  %175 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %178 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = xor i64 %179, -1
  %181 = and i64 %176, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %9, align 4
  %183 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %186 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %172
  %192 = load %struct.tty*, %struct.tty** %4, align 8
  %193 = load i32, i32* @TTYC_BOLD, align 4
  %194 = call i32 @tty_putcode(%struct.tty* %192, i32 %193)
  br label %195

195:                                              ; preds = %191, %172
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @GRID_ATTR_DIM, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.tty*, %struct.tty** %4, align 8
  %202 = load i32, i32* @TTYC_DIM, align 4
  %203 = call i32 @tty_putcode(%struct.tty* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %195
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @GRID_ATTR_ITALICS, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.tty*, %struct.tty** %4, align 8
  %211 = call i32 @tty_set_italics(%struct.tty* %210)
  br label %212

212:                                              ; preds = %209, %204
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @GRID_ATTR_ALL_UNDERSCORE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %274

217:                                              ; preds = %212
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @GRID_ATTR_UNDERSCORE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %217
  %223 = load %struct.tty*, %struct.tty** %4, align 8
  %224 = getelementptr inbounds %struct.tty, %struct.tty* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @TTYC_SMULX, align 4
  %227 = call i64 @tty_term_has(i32 %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %222, %217
  %230 = load %struct.tty*, %struct.tty** %4, align 8
  %231 = load i32, i32* @TTYC_SMUL, align 4
  %232 = call i32 @tty_putcode(%struct.tty* %230, i32 %231)
  br label %273

233:                                              ; preds = %222
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @GRID_ATTR_UNDERSCORE_2, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load %struct.tty*, %struct.tty** %4, align 8
  %240 = load i32, i32* @TTYC_SMULX, align 4
  %241 = call i32 @tty_putcode1(%struct.tty* %239, i32 %240, i32 2)
  br label %272

242:                                              ; preds = %233
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @GRID_ATTR_UNDERSCORE_3, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = load %struct.tty*, %struct.tty** %4, align 8
  %249 = load i32, i32* @TTYC_SMULX, align 4
  %250 = call i32 @tty_putcode1(%struct.tty* %248, i32 %249, i32 3)
  br label %271

251:                                              ; preds = %242
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @GRID_ATTR_UNDERSCORE_4, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = load %struct.tty*, %struct.tty** %4, align 8
  %258 = load i32, i32* @TTYC_SMULX, align 4
  %259 = call i32 @tty_putcode1(%struct.tty* %257, i32 %258, i32 4)
  br label %270

260:                                              ; preds = %251
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @GRID_ATTR_UNDERSCORE_5, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = load %struct.tty*, %struct.tty** %4, align 8
  %267 = load i32, i32* @TTYC_SMULX, align 4
  %268 = call i32 @tty_putcode1(%struct.tty* %266, i32 %267, i32 5)
  br label %269

269:                                              ; preds = %265, %260
  br label %270

270:                                              ; preds = %269, %256
  br label %271

271:                                              ; preds = %270, %247
  br label %272

272:                                              ; preds = %271, %238
  br label %273

273:                                              ; preds = %272, %229
  br label %274

274:                                              ; preds = %273, %212
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* @GRID_ATTR_BLINK, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load %struct.tty*, %struct.tty** %4, align 8
  %281 = load i32, i32* @TTYC_BLINK, align 4
  %282 = call i32 @tty_putcode(%struct.tty* %280, i32 %281)
  br label %283

283:                                              ; preds = %279, %274
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %312

288:                                              ; preds = %283
  %289 = load %struct.tty*, %struct.tty** %4, align 8
  %290 = getelementptr inbounds %struct.tty, %struct.tty* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @TTYC_REV, align 4
  %293 = call i64 @tty_term_has(i32 %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %288
  %296 = load %struct.tty*, %struct.tty** %4, align 8
  %297 = load i32, i32* @TTYC_REV, align 4
  %298 = call i32 @tty_putcode(%struct.tty* %296, i32 %297)
  br label %311

299:                                              ; preds = %288
  %300 = load %struct.tty*, %struct.tty** %4, align 8
  %301 = getelementptr inbounds %struct.tty, %struct.tty* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @TTYC_SMSO, align 4
  %304 = call i64 @tty_term_has(i32 %302, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %299
  %307 = load %struct.tty*, %struct.tty** %4, align 8
  %308 = load i32, i32* @TTYC_SMSO, align 4
  %309 = call i32 @tty_putcode(%struct.tty* %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %299
  br label %311

311:                                              ; preds = %310, %295
  br label %312

312:                                              ; preds = %311, %283
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* @GRID_ATTR_HIDDEN, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %312
  %318 = load %struct.tty*, %struct.tty** %4, align 8
  %319 = load i32, i32* @TTYC_INVIS, align 4
  %320 = call i32 @tty_putcode(%struct.tty* %318, i32 %319)
  br label %321

321:                                              ; preds = %317, %312
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* @GRID_ATTR_STRIKETHROUGH, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load %struct.tty*, %struct.tty** %4, align 8
  %328 = load i32, i32* @TTYC_SMXX, align 4
  %329 = call i32 @tty_putcode(%struct.tty* %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %321
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* @GRID_ATTR_OVERLINE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %330
  %336 = load %struct.tty*, %struct.tty** %4, align 8
  %337 = load i32, i32* @TTYC_SMOL, align 4
  %338 = call i32 @tty_putcode(%struct.tty* %336, i32 %337)
  br label %339

339:                                              ; preds = %335, %330
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %339
  %345 = load %struct.tty*, %struct.tty** %4, align 8
  %346 = call i64 @tty_acs_needed(%struct.tty* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %344
  %349 = load %struct.tty*, %struct.tty** %4, align 8
  %350 = load i32, i32* @TTYC_SMACS, align 4
  %351 = call i32 @tty_putcode(%struct.tty* %349, i32 %350)
  br label %352

352:                                              ; preds = %67, %348, %344, %339
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, %struct.grid_cell*, i32) #1

declare dso_local i32 @tty_default_colours(%struct.grid_cell*, %struct.window_pane*) #1

declare dso_local i64 @tty_term_has(i32, i32) #1

declare dso_local i32 @COLOUR_DEFAULT(i64) #1

declare dso_local i32 @tty_check_fg(%struct.tty*, %struct.window_pane*, %struct.grid_cell*) #1

declare dso_local i32 @tty_check_bg(%struct.tty*, %struct.window_pane*, %struct.grid_cell*) #1

declare dso_local i32 @tty_check_us(%struct.tty*, %struct.window_pane*, %struct.grid_cell*) #1

declare dso_local i32 @tty_reset(%struct.tty*) #1

declare dso_local i32 @tty_colours(%struct.tty*, %struct.grid_cell*) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i32 @tty_set_italics(%struct.tty*) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i32) #1

declare dso_local i64 @tty_acs_needed(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
