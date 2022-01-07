; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_cat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }

@MM_concat = common dso_local global i32 0, align 4
@LJ_ERR_OPCAT = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@lj_cont_cat = common dso_local global i32 0, align 4
@STRFMT_MAXBUF_NUM = common dso_local global i64 0, align 8
@LJ_MAX_STR = common dso_local global i64 0, align 8
@LJ_ERR_STROV = common dso_local global i32 0, align 4
@STRFMT_G14 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_meta_cat(%struct.TYPE_20__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %18, %3
  br label %22

22:                                               ; preds = %233, %21
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @tvisstr(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @tvisnumber(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 -1
  %33 = call i64 @tvisstr(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %121, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  %38 = call i64 @tvisnumber(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %121, label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -1
  %44 = load i32, i32* @MM_concat, align 4
  %45 = call i32* @lj_meta_lookup(%struct.TYPE_20__* %41, i32* %43, i32 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @tvisnil(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %40
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @MM_concat, align 4
  %53 = call i32* @lj_meta_lookup(%struct.TYPE_20__* %50, i32* %51, i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @tvisnil(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %49
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -1
  %60 = call i64 @tvisstr(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 -1
  %65 = call i64 @tvisnumber(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 -1
  %74 = load i32, i32* @LJ_ERR_OPCAT, align 4
  %75 = call i32 @lj_err_optype(%struct.TYPE_20__* %71, i32* %73, i32 %74)
  store i32* null, i32** %4, align 8
  br label %263

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76, %40
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @LJ_FR2, align 4
  %81 = mul nsw i32 2, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @copyTV(%struct.TYPE_20__* %78, i32* %84, i32* %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @LJ_FR2, align 4
  %90 = mul nsw i32 2, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 -1
  %96 = call i32 @copyTV(%struct.TYPE_20__* %87, i32* %93, i32* %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @LJ_FR2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @copyTV(%struct.TYPE_20__* %97, i32* %101, i32* %102)
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 -1
  %106 = load i32, i32* @lj_cont_cat, align 4
  %107 = call i32 @setcont(i32* %105, i32 %106)
  %108 = load i32, i32* @LJ_FR2, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %77
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @setnilV(i32* %111)
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = call i32 @setnilV(i32* %114)
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32* %117, i32** %6, align 8
  br label %118

118:                                              ; preds = %110, %77
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32* %120, i32** %4, align 8
  br label %263

121:                                              ; preds = %35, %30
  %122 = load i32*, i32** %6, align 8
  store i32* %122, i32** %11, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i64 @tvisstr(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32*, i32** %11, align 8
  %128 = call %struct.TYPE_21__* @strV(i32* %127)
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  br label %133

131:                                              ; preds = %121
  %132 = load i64, i64* @STRFMT_MAXBUF_NUM, align 8
  br label %133

133:                                              ; preds = %131, %126
  %134 = phi i64 [ %130, %126 ], [ %132, %131 ]
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %168, %133
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 -1
  store i32* %137, i32** %11, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i64 @tvisstr(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i32*, i32** %11, align 8
  %143 = call %struct.TYPE_21__* @strV(i32* %142)
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  br label %148

146:                                              ; preds = %135
  %147 = load i64, i64* @STRFMT_MAXBUF_NUM, align 8
  br label %148

148:                                              ; preds = %146, %141
  %149 = phi i64 [ %145, %141 ], [ %147, %146 ]
  %150 = load i64, i64* %12, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %12, align 8
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %7, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load i32*, i32** %11, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 -1
  %159 = call i64 @tvisstr(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i32*, i32** %11, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 -1
  %164 = call i64 @tvisnumber(i32* %163)
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i1 [ true, %156 ], [ %165, %161 ]
  br label %168

168:                                              ; preds = %166, %152
  %169 = phi i1 [ false, %152 ], [ %167, %166 ]
  br i1 %169, label %135, label %170

170:                                              ; preds = %168
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* @LJ_MAX_STR, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = load i32, i32* @LJ_ERR_STROV, align 4
  %177 = call i32 @lj_err_msg(%struct.TYPE_20__* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %170
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %180 = call i32* @lj_buf_tmp_(%struct.TYPE_20__* %179)
  store i32* %180, i32** %13, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @lj_buf_more(i32* %181, i64 %182)
  %184 = load i32*, i32** %6, align 8
  store i32* %184, i32** %10, align 8
  %185 = load i32*, i32** %11, align 8
  store i32* %185, i32** %6, align 8
  br label %186

186:                                              ; preds = %222, %178
  %187 = load i32*, i32** %11, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = icmp ule i32* %187, %188
  br i1 %189, label %190, label %225

190:                                              ; preds = %186
  %191 = load i32*, i32** %11, align 8
  %192 = call i64 @tvisstr(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load i32*, i32** %11, align 8
  %196 = call %struct.TYPE_21__* @strV(i32* %195)
  store %struct.TYPE_21__* %196, %struct.TYPE_21__** %14, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %15, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %202 = call i32 @strdata(%struct.TYPE_21__* %201)
  %203 = load i64, i64* %15, align 8
  %204 = call i32 @lj_buf_putmem(i32* %200, i32 %202, i64 %203)
  br label %221

205:                                              ; preds = %190
  %206 = load i32*, i32** %11, align 8
  %207 = call i64 @tvisint(i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i32*, i32** %13, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @intV(i32* %211)
  %213 = call i32 @lj_strfmt_putint(i32* %210, i32 %212)
  br label %220

214:                                              ; preds = %205
  %215 = load i32*, i32** %13, align 8
  %216 = load i32, i32* @STRFMT_G14, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @numV(i32* %217)
  %219 = call i32 @lj_strfmt_putfnum(i32* %215, i32 %216, i32 %218)
  br label %220

220:                                              ; preds = %214, %209
  br label %221

221:                                              ; preds = %220, %194
  br label %222

222:                                              ; preds = %221
  %223 = load i32*, i32** %11, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %11, align 8
  br label %186

225:                                              ; preds = %186
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %229 = load i32*, i32** %13, align 8
  %230 = call i32 @lj_buf_str(%struct.TYPE_20__* %228, i32* %229)
  %231 = call i32 @setstrV(%struct.TYPE_20__* %226, i32* %227, i32 %230)
  br label %232

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %7, align 4
  %235 = icmp sge i32 %234, 1
  br i1 %235, label %22, label %236

236:                                              ; preds = %233
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %238 = call %struct.TYPE_18__* @G(%struct.TYPE_20__* %237)
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %243 = call %struct.TYPE_18__* @G(%struct.TYPE_20__* %242)
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp sge i64 %241, %246
  %248 = zext i1 %247 to i32
  %249 = call i64 @LJ_UNLIKELY(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %236
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %256 = call i32 @curr_topL(%struct.TYPE_20__* %255)
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %254, %251
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %261 = call i32 @lj_gc_step(%struct.TYPE_20__* %260)
  br label %262

262:                                              ; preds = %259, %236
  store i32* null, i32** %4, align 8
  br label %263

263:                                              ; preds = %262, %118, %70
  %264 = load i32*, i32** %4, align 8
  ret i32* %264
}

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i64 @tvisnumber(i32*) #1

declare dso_local i32* @lj_meta_lookup(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32 @lj_err_optype(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @copyTV(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @setcont(i32*, i32) #1

declare dso_local i32 @setnilV(i32*) #1

declare dso_local %struct.TYPE_21__* @strV(i32*) #1

declare dso_local i32 @lj_err_msg(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @lj_buf_tmp_(%struct.TYPE_20__*) #1

declare dso_local i32 @lj_buf_more(i32*, i64) #1

declare dso_local i32 @lj_buf_putmem(i32*, i32, i64) #1

declare dso_local i32 @strdata(%struct.TYPE_21__*) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i32 @lj_strfmt_putint(i32*, i32) #1

declare dso_local i32 @intV(i32*) #1

declare dso_local i32 @lj_strfmt_putfnum(i32*, i32, i32) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i32 @setstrV(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @lj_buf_str(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local %struct.TYPE_18__* @G(%struct.TYPE_20__*) #1

declare dso_local i32 @curr_topL(%struct.TYPE_20__*) #1

declare dso_local i32 @lj_gc_step(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
