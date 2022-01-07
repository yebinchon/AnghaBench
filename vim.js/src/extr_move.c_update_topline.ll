; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_move.c_update_topline.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_move.c_update_topline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_13__* null, align 8
@VALID_TOPLINE = common dso_local global i32 0, align 4
@NOT_VALID = common dso_local global i32 0, align 4
@VALID_BOTLINE = common dso_local global i32 0, align 4
@VALID_BOTLINE_AP = common dso_local global i32 0, align 4
@p_so = common dso_local global i64 0, align 8
@curbuf = common dso_local global %struct.TYPE_14__* null, align 8
@dollar_vcol = common dso_local global i32 0, align 4
@VALID = common dso_local global i32 0, align 4
@mouse_dragging = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_topline() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @screen_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  br label %272

14:                                               ; preds = %0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %16 = call i32 @check_cursor_moved(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VALID_TOPLINE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %272

24:                                               ; preds = %14
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = call i64 (...) @bufempty()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @NOT_VALID, align 4
  %37 = call i32 @redraw_later(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  store i64 1, i64* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  store i32 2, i32* %42, align 4
  %43 = load i32, i32* @VALID_BOTLINE, align 4
  %44 = load i32, i32* @VALID_BOTLINE_AP, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %114

50:                                               ; preds = %24
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 1
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %5, align 4
  br label %73

67:                                               ; preds = %55
  %68 = call i64 (...) @check_top_offset()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %72, %65
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 2
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 2, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %77
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @p_so, align 8
  %91 = add nsw i64 %89, %90
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %91, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %2, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @scroll_cursor_halfway(i32 %103)
  br label %110

105:                                              ; preds = %86
  %106 = call i32 (...) @scrolljump_value()
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i32 @scroll_cursor_top(i32 %106, i32 %107)
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %105, %102
  br label %113

111:                                              ; preds = %74
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %110
  br label %114

114:                                              ; preds = %113, %38
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %235

117:                                              ; preds = %114
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @VALID_BOTLINE_AP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %117
  %125 = call i32 (...) @validate_botline()
  br label %126

126:                                              ; preds = %124, %117
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** @curbuf, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %130, %134
  br i1 %135, label %136, label %234

136:                                              ; preds = %126
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %202

145:                                              ; preds = %136
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* @p_so, align 8
  %156 = sub nsw i64 %154, %155
  %157 = icmp sge i64 %150, %156
  br i1 %157, label %158, label %199

158:                                              ; preds = %145
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %3, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i64 %166, i64* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %189, %158
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %171, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %3, align 4
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* @p_so, align 8
  %187 = icmp sge i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  br label %191

189:                                              ; preds = %177
  %190 = call i32 @botline_forw(%struct.TYPE_12__* %7)
  br label %169

191:                                              ; preds = %188, %169
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @p_so, align 8
  %195 = icmp sge i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %196, %191
  br label %201

199:                                              ; preds = %145
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %199, %198
  br label %202

202:                                              ; preds = %201, %136
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %233

205:                                              ; preds = %202
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %209, %212
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* @p_so, align 8
  %217 = add nsw i64 %215, %216
  store i64 %217, i64* %1, align 8
  %218 = load i64, i64* %1, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = icmp sle i64 %218, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %205
  %226 = call i32 (...) @scrolljump_value()
  %227 = load i32, i32* @FALSE, align 4
  %228 = call i32 @scroll_cursor_bot(i32 %226, i32 %227)
  br label %232

229:                                              ; preds = %205
  %230 = load i32, i32* @FALSE, align 4
  %231 = call i32 @scroll_cursor_halfway(i32 %230)
  br label %232

232:                                              ; preds = %229, %225
  br label %233

233:                                              ; preds = %232, %202
  br label %234

234:                                              ; preds = %233, %126
  br label %235

235:                                              ; preds = %234, %114
  %236 = load i32, i32* @VALID_TOPLINE, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %4, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %272

246:                                              ; preds = %235
  store i32 -1, i32* @dollar_vcol, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 7
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 7
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* @NOT_VALID, align 4
  %255 = call i32 @redraw_later(i32 %254)
  br label %259

256:                                              ; preds = %246
  %257 = load i32, i32* @VALID, align 4
  %258 = call i32 @redraw_later(i32 %257)
  br label %259

259:                                              ; preds = %256, %251
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curwin, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %264, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %259
  %270 = call i32 (...) @validate_cursor()
  br label %271

271:                                              ; preds = %269, %259
  br label %272

272:                                              ; preds = %13, %23, %271, %235
  ret void
}

declare dso_local i32 @screen_valid(i32) #1

declare dso_local i32 @check_cursor_moved(%struct.TYPE_13__*) #1

declare dso_local i64 @bufempty(...) #1

declare dso_local i32 @redraw_later(i32) #1

declare dso_local i64 @check_top_offset(...) #1

declare dso_local i32 @scroll_cursor_halfway(i32) #1

declare dso_local i32 @scroll_cursor_top(i32, i32) #1

declare dso_local i32 @scrolljump_value(...) #1

declare dso_local i32 @validate_botline(...) #1

declare dso_local i32 @botline_forw(%struct.TYPE_12__*) #1

declare dso_local i32 @scroll_cursor_bot(i32, i32) #1

declare dso_local i32 @validate_cursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
