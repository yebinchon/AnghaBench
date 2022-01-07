; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_tab.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@Insstart_blank_vcol = common dso_local global i64 0, align 8
@MAXCOL = common dso_local global i64 0, align 8
@curwin = common dso_local global %struct.TYPE_12__* null, align 8
@Insstart = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TAB = common dso_local global i8 0, align 1
@ABBR_OFF = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@curbuf = common dso_local global %struct.TYPE_11__* null, align 8
@p_sta = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@did_ai = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@State = common dso_local global i32 0, align 4
@REPLACE_FLAG = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@p_cpo = common dso_local global i32 0, align 4
@CPO_LISTWM = common dso_local global i32 0, align 4
@VREPLACE_FLAG = common dso_local global i32 0, align 4
@can_cindent = common dso_local global i32 0, align 4
@can_si = common dso_local global i32 0, align 4
@can_si_back = common dso_local global i32 0, align 4
@did_si = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ins_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ins_tab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i64, i64* @Insstart_blank_vcol, align 8
  %14 = load i64, i64* @MAXCOL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 0), align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 (...) @get_nolist_virtcol()
  %25 = sext i32 %24 to i64
  store i64 %25, i64* @Insstart_blank_vcol, align 8
  br label %26

26:                                               ; preds = %23, %16, %0
  %27 = load i8, i8* @TAB, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @ABBR_OFF, align 1
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = call i64 @echeck_abbr(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %1, align 4
  br label %333

37:                                               ; preds = %26
  %38 = call i32 @inindent(i32 0)
  store i32 %38, i32* %2, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* @p_sta, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %54 = call i64 @get_sw_value(%struct.TYPE_11__* %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %49, %46, %43
  %57 = call i64 (...) @get_sts_value()
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %1, align 4
  br label %333

61:                                               ; preds = %56, %49, %37
  %62 = call i64 (...) @stop_arrow()
  %63 = load i64, i64* @FAIL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %1, align 4
  br label %333

67:                                               ; preds = %61
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* @did_ai, align 4
  %69 = call i32 @AppendToRedobuff(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %70 = load i64, i64* @p_sta, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* %2, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %77 = call i64 @get_sw_value(%struct.TYPE_11__* %76)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %93

79:                                               ; preds = %72, %67
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = call i64 (...) @get_sts_value()
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %79
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %84
  br label %93

93:                                               ; preds = %92, %75
  %94 = call i32 (...) @get_nolist_virtcol()
  %95 = load i32, i32* %4, align 4
  %96 = srem i32 %94, %95
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %4, align 4
  %99 = call i32 @ins_char(i8 signext 32)
  br label %100

100:                                              ; preds = %113, %93
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %4, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = call i32 @ins_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @State, align 4
  %107 = load i32, i32* @REPLACE_FLAG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @NUL, align 4
  %112 = call i32 @replace_push(i32 %111)
  br label %113

113:                                              ; preds = %110, %104
  br label %100

114:                                              ; preds = %100
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curbuf, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %331, label %119

119:                                              ; preds = %114
  %120 = call i64 (...) @get_sts_value()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* @p_sta, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %331

125:                                              ; preds = %122
  %126 = load i32, i32* %2, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %331

128:                                              ; preds = %125, %119
  store i32 -1, i32* %10, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %11, align 4
  %132 = call i8* (...) @ml_get_cursor()
  store i8* %132, i8** %5, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store %struct.TYPE_10__* %134, %struct.TYPE_10__** %7, align 8
  %135 = load i32, i32* @p_cpo, align 4
  %136 = load i32, i32* @CPO_LISTWM, align 4
  %137 = call i32* @vim_strchr(i32 %135, i32 %136)
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = load i32, i32* @FALSE, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %139, %128
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = bitcast %struct.TYPE_10__* %6 to i8*
  %147 = bitcast %struct.TYPE_10__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 16, i1 false)
  br label %148

148:                                              ; preds = %160, %143
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 -1
  %155 = load i8, i8* %154, align 1
  %156 = call i64 @vim_iswhite(i8 signext %155)
  %157 = icmp ne i64 %156, 0
  br label %158

158:                                              ; preds = %152, %148
  %159 = phi i1 [ false, %148 ], [ %157, %152 ]
  br i1 %159, label %160, label %166

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 -1
  store i8* %165, i8** %5, align 8
  br label %148

166:                                              ; preds = %158
  %167 = load i32, i32* @State, align 4
  %168 = load i32, i32* @REPLACE_FLAG, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 0), align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %182, %184
  %186 = load i8*, i8** %5, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %5, align 8
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %189, i32* %190, align 8
  br label %191

191:                                              ; preds = %181, %176, %171, %166
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %193 = call i32 @getvcol(%struct.TYPE_12__* %192, %struct.TYPE_10__* %6, i64* %9, i32* null, i32* null)
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %196 = call i32 @getvcol(%struct.TYPE_12__* %194, %struct.TYPE_10__* %195, i64* %8, i32* null, i32* null)
  br label %197

197:                                              ; preds = %241, %191
  %198 = load i8*, i8** %5, align 8
  %199 = load i8, i8* %198, align 1
  %200 = call i64 @vim_iswhite(i8 signext %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %251

202:                                              ; preds = %197
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @lbr_chartabsize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %203)
  store i32 %204, i32* %3, align 4
  %205 = load i64, i64* %9, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %205, %207
  %209 = load i64, i64* %8, align 8
  %210 = icmp sgt i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  br label %251

212:                                              ; preds = %202
  %213 = load i8*, i8** %5, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = load i8, i8* @TAB, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %215, %217
  br i1 %218, label %219, label %241

219:                                              ; preds = %212
  %220 = load i8, i8* @TAB, align 1
  %221 = load i8*, i8** %5, align 8
  store i8 %220, i8* %221, align 1
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %10, align 4
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 0), align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Insstart, i32 0, i32 1), align 8
  br label %239

239:                                              ; preds = %236, %231, %224
  br label %240

240:                                              ; preds = %239, %219
  br label %241

241:                                              ; preds = %240, %212
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  %245 = load i8*, i8** %5, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %5, align 8
  %247 = load i32, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %9, align 8
  %250 = add nsw i64 %249, %248
  store i64 %250, i64* %9, align 8
  br label %197

251:                                              ; preds = %211, %197
  %252 = load i32, i32* %10, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %327

254:                                              ; preds = %251
  store i32 0, i32* %12, align 4
  br label %255

255:                                              ; preds = %266, %254
  %256 = load i64, i64* %9, align 8
  %257 = load i64, i64* %8, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %255
  %260 = load i8*, i8** %5, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 32
  br label %264

264:                                              ; preds = %259, %255
  %265 = phi i1 [ false, %255 ], [ %263, %259 ]
  br i1 %265, label %266, label %277

266:                                              ; preds = %264
  %267 = load i8*, i8** %5, align 8
  %268 = load i64, i64* %9, align 8
  %269 = call i32 @lbr_chartabsize(i8* %267, i64 %268)
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* %9, align 8
  %272 = add nsw i64 %271, %270
  store i64 %272, i64* %9, align 8
  %273 = load i8*, i8** %5, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %5, align 8
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %255

277:                                              ; preds = %264
  %278 = load i64, i64* %9, align 8
  %279 = load i64, i64* %8, align 8
  %280 = icmp sgt i64 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = load i8*, i8** %5, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 -1
  store i8* %283, i8** %5, align 8
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %12, align 4
  br label %286

286:                                              ; preds = %281, %277
  %287 = load i32, i32* %12, align 4
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, %287
  store i32 %290, i32* %288, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = sub nsw i32 %293, %295
  store i32 %296, i32* %3, align 4
  %297 = load i32, i32* %3, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %321

299:                                              ; preds = %286
  %300 = load i8*, i8** %5, align 8
  %301 = load i8*, i8** %5, align 8
  %302 = load i32, i32* %3, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = call i32 @STRMOVE(i8* %300, i8* %304)
  %306 = load i32, i32* @State, align 4
  %307 = load i32, i32* @REPLACE_FLAG, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %299
  %311 = load i32, i32* %3, align 4
  store i32 %311, i32* %4, align 4
  br label %312

312:                                              ; preds = %316, %310
  %313 = load i32, i32* %4, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %4, align 4
  %315 = icmp sge i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %312
  %317 = load i32, i32* %12, align 4
  %318 = call i32 @replace_join(i32 %317)
  br label %312

319:                                              ; preds = %312
  br label %320

320:                                              ; preds = %319, %299
  br label %321

321:                                              ; preds = %320, %286
  %322 = load i32, i32* %3, align 4
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = sub nsw i32 %325, %322
  store i32 %326, i32* %324, align 8
  br label %327

327:                                              ; preds = %321, %251
  %328 = load i32, i32* %11, align 4
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curwin, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  br label %331

331:                                              ; preds = %327, %125, %122, %114
  %332 = load i32, i32* @FALSE, align 4
  store i32 %332, i32* %1, align 4
  br label %333

333:                                              ; preds = %331, %65, %59, %35
  %334 = load i32, i32* %1, align 4
  ret i32 %334
}

declare dso_local i32 @get_nolist_virtcol(...) #1

declare dso_local i64 @echeck_abbr(i8 signext) #1

declare dso_local i32 @inindent(i32) #1

declare dso_local i64 @get_sw_value(%struct.TYPE_11__*) #1

declare dso_local i64 @get_sts_value(...) #1

declare dso_local i64 @stop_arrow(...) #1

declare dso_local i32 @AppendToRedobuff(i8*) #1

declare dso_local i32 @ins_char(i8 signext) #1

declare dso_local i32 @ins_str(i8*) #1

declare dso_local i32 @replace_push(i32) #1

declare dso_local i8* @ml_get_cursor(...) #1

declare dso_local i32* @vim_strchr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vim_iswhite(i8 signext) #1

declare dso_local i32 @getvcol(%struct.TYPE_12__*, %struct.TYPE_10__*, i64*, i32*, i32*) #1

declare dso_local i32 @lbr_chartabsize(i8*, i64) #1

declare dso_local i32 @STRMOVE(i8*, i8*) #1

declare dso_local i32 @replace_join(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
