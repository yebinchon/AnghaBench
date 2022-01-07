; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindActions.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindActions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, i32, i32, i32, %struct.rule*, %struct.state**, i32, %struct.TYPE_6__*, i64, %struct.symbol** }
%struct.rule = type { i32, i64, %struct.rule* }
%struct.state = type { %struct.action*, %struct.config* }
%struct.action = type { i64, i64, %struct.TYPE_8__, %struct.action* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.config = type { i64, %struct.TYPE_5__*, i32, %struct.config* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.symbol* }
%struct.symbol = type { i32 }

@REDUCE = common dso_local global i64 0, align 8
@ACCEPT = common dso_local global i64 0, align 8
@LEMON_FALSE = common dso_local global i64 0, align 8
@LEMON_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"This rule can not be reduced.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindActions(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.config*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.rule*, align 8
  %9 = alloca %struct.action*, align 8
  %10 = alloca %struct.action*, align 8
  %11 = alloca %struct.action*, align 8
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %83, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.lemon*, %struct.lemon** %2, align 8
  %15 = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %86

18:                                               ; preds = %12
  %19 = load %struct.lemon*, %struct.lemon** %2, align 8
  %20 = getelementptr inbounds %struct.lemon, %struct.lemon* %19, i32 0, i32 5
  %21 = load %struct.state**, %struct.state*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.state*, %struct.state** %21, i64 %23
  %25 = load %struct.state*, %struct.state** %24, align 8
  store %struct.state* %25, %struct.state** %6, align 8
  %26 = load %struct.state*, %struct.state** %6, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 1
  %28 = load %struct.config*, %struct.config** %27, align 8
  store %struct.config* %28, %struct.config** %5, align 8
  br label %29

29:                                               ; preds = %78, %18
  %30 = load %struct.config*, %struct.config** %5, align 8
  %31 = icmp ne %struct.config* %30, null
  br i1 %31, label %32, label %82

32:                                               ; preds = %29
  %33 = load %struct.config*, %struct.config** %5, align 8
  %34 = getelementptr inbounds %struct.config, %struct.config* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.config*, %struct.config** %5, align 8
  %39 = getelementptr inbounds %struct.config, %struct.config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.lemon*, %struct.lemon** %2, align 8
  %46 = getelementptr inbounds %struct.lemon, %struct.lemon* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load %struct.config*, %struct.config** %5, align 8
  %51 = getelementptr inbounds %struct.config, %struct.config* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @SetFind(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.state*, %struct.state** %6, align 8
  %58 = getelementptr inbounds %struct.state, %struct.state* %57, i32 0, i32 0
  %59 = load i64, i64* @REDUCE, align 8
  %60 = load %struct.lemon*, %struct.lemon** %2, align 8
  %61 = getelementptr inbounds %struct.lemon, %struct.lemon* %60, i32 0, i32 9
  %62 = load %struct.symbol**, %struct.symbol*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.symbol*, %struct.symbol** %62, i64 %64
  %66 = load %struct.symbol*, %struct.symbol** %65, align 8
  %67 = load %struct.config*, %struct.config** %5, align 8
  %68 = getelementptr inbounds %struct.config, %struct.config* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = bitcast %struct.TYPE_5__* %69 to i8*
  %71 = call i32 @Action_add(%struct.action** %58, i64 %59, %struct.symbol* %66, i8* %70)
  br label %72

72:                                               ; preds = %56, %49
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %43

76:                                               ; preds = %43
  br label %77

77:                                               ; preds = %76, %32
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.config*, %struct.config** %5, align 8
  %80 = getelementptr inbounds %struct.config, %struct.config* %79, i32 0, i32 3
  %81 = load %struct.config*, %struct.config** %80, align 8
  store %struct.config* %81, %struct.config** %5, align 8
  br label %29

82:                                               ; preds = %29
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %12

86:                                               ; preds = %12
  %87 = load %struct.lemon*, %struct.lemon** %2, align 8
  %88 = getelementptr inbounds %struct.lemon, %struct.lemon* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load %struct.lemon*, %struct.lemon** %2, align 8
  %93 = getelementptr inbounds %struct.lemon, %struct.lemon* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = call %struct.symbol* @Symbol_find(i64 %94)
  store %struct.symbol* %95, %struct.symbol** %7, align 8
  %96 = load %struct.symbol*, %struct.symbol** %7, align 8
  %97 = icmp eq %struct.symbol* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.lemon*, %struct.lemon** %2, align 8
  %100 = getelementptr inbounds %struct.lemon, %struct.lemon* %99, i32 0, i32 7
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.symbol*, %struct.symbol** %102, align 8
  store %struct.symbol* %103, %struct.symbol** %7, align 8
  br label %104

104:                                              ; preds = %98, %91
  br label %111

105:                                              ; preds = %86
  %106 = load %struct.lemon*, %struct.lemon** %2, align 8
  %107 = getelementptr inbounds %struct.lemon, %struct.lemon* %106, i32 0, i32 7
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.symbol*, %struct.symbol** %109, align 8
  store %struct.symbol* %110, %struct.symbol** %7, align 8
  br label %111

111:                                              ; preds = %105, %104
  %112 = load %struct.lemon*, %struct.lemon** %2, align 8
  %113 = getelementptr inbounds %struct.lemon, %struct.lemon* %112, i32 0, i32 5
  %114 = load %struct.state**, %struct.state*** %113, align 8
  %115 = getelementptr inbounds %struct.state*, %struct.state** %114, i64 0
  %116 = load %struct.state*, %struct.state** %115, align 8
  %117 = getelementptr inbounds %struct.state, %struct.state* %116, i32 0, i32 0
  %118 = load i64, i64* @ACCEPT, align 8
  %119 = load %struct.symbol*, %struct.symbol** %7, align 8
  %120 = call i32 @Action_add(%struct.action** %117, i64 %118, %struct.symbol* %119, i8* null)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %191, %111
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.lemon*, %struct.lemon** %2, align 8
  %124 = getelementptr inbounds %struct.lemon, %struct.lemon* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %194

127:                                              ; preds = %121
  %128 = load %struct.lemon*, %struct.lemon** %2, align 8
  %129 = getelementptr inbounds %struct.lemon, %struct.lemon* %128, i32 0, i32 5
  %130 = load %struct.state**, %struct.state*** %129, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.state*, %struct.state** %130, i64 %132
  %134 = load %struct.state*, %struct.state** %133, align 8
  store %struct.state* %134, %struct.state** %6, align 8
  %135 = load %struct.state*, %struct.state** %6, align 8
  %136 = getelementptr inbounds %struct.state, %struct.state* %135, i32 0, i32 0
  %137 = load %struct.action*, %struct.action** %136, align 8
  %138 = call %struct.action* @Action_sort(%struct.action* %137)
  %139 = load %struct.state*, %struct.state** %6, align 8
  %140 = getelementptr inbounds %struct.state, %struct.state* %139, i32 0, i32 0
  store %struct.action* %138, %struct.action** %140, align 8
  %141 = load %struct.state*, %struct.state** %6, align 8
  %142 = getelementptr inbounds %struct.state, %struct.state* %141, i32 0, i32 0
  %143 = load %struct.action*, %struct.action** %142, align 8
  store %struct.action* %143, %struct.action** %9, align 8
  br label %144

144:                                              ; preds = %186, %127
  %145 = load %struct.action*, %struct.action** %9, align 8
  %146 = icmp ne %struct.action* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.action*, %struct.action** %9, align 8
  %149 = getelementptr inbounds %struct.action, %struct.action* %148, i32 0, i32 3
  %150 = load %struct.action*, %struct.action** %149, align 8
  %151 = icmp ne %struct.action* %150, null
  br label %152

152:                                              ; preds = %147, %144
  %153 = phi i1 [ false, %144 ], [ %151, %147 ]
  br i1 %153, label %154, label %190

154:                                              ; preds = %152
  %155 = load %struct.action*, %struct.action** %9, align 8
  %156 = getelementptr inbounds %struct.action, %struct.action* %155, i32 0, i32 3
  %157 = load %struct.action*, %struct.action** %156, align 8
  store %struct.action* %157, %struct.action** %10, align 8
  br label %158

158:                                              ; preds = %181, %154
  %159 = load %struct.action*, %struct.action** %10, align 8
  %160 = icmp ne %struct.action* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.action*, %struct.action** %10, align 8
  %163 = getelementptr inbounds %struct.action, %struct.action* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.action*, %struct.action** %9, align 8
  %166 = getelementptr inbounds %struct.action, %struct.action* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %164, %167
  br label %169

169:                                              ; preds = %161, %158
  %170 = phi i1 [ false, %158 ], [ %168, %161 ]
  br i1 %170, label %171, label %185

171:                                              ; preds = %169
  %172 = load %struct.action*, %struct.action** %9, align 8
  %173 = load %struct.action*, %struct.action** %10, align 8
  %174 = call i64 @resolve_conflict(%struct.action* %172, %struct.action* %173)
  %175 = load %struct.lemon*, %struct.lemon** %2, align 8
  %176 = getelementptr inbounds %struct.lemon, %struct.lemon* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %174
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 8
  br label %181

181:                                              ; preds = %171
  %182 = load %struct.action*, %struct.action** %10, align 8
  %183 = getelementptr inbounds %struct.action, %struct.action* %182, i32 0, i32 3
  %184 = load %struct.action*, %struct.action** %183, align 8
  store %struct.action* %184, %struct.action** %10, align 8
  br label %158

185:                                              ; preds = %169
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.action*, %struct.action** %9, align 8
  %188 = getelementptr inbounds %struct.action, %struct.action* %187, i32 0, i32 3
  %189 = load %struct.action*, %struct.action** %188, align 8
  store %struct.action* %189, %struct.action** %9, align 8
  br label %144

190:                                              ; preds = %152
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %3, align 4
  br label %121

194:                                              ; preds = %121
  %195 = load %struct.lemon*, %struct.lemon** %2, align 8
  %196 = getelementptr inbounds %struct.lemon, %struct.lemon* %195, i32 0, i32 4
  %197 = load %struct.rule*, %struct.rule** %196, align 8
  store %struct.rule* %197, %struct.rule** %8, align 8
  br label %198

198:                                              ; preds = %205, %194
  %199 = load %struct.rule*, %struct.rule** %8, align 8
  %200 = icmp ne %struct.rule* %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i64, i64* @LEMON_FALSE, align 8
  %203 = load %struct.rule*, %struct.rule** %8, align 8
  %204 = getelementptr inbounds %struct.rule, %struct.rule* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201
  %206 = load %struct.rule*, %struct.rule** %8, align 8
  %207 = getelementptr inbounds %struct.rule, %struct.rule* %206, i32 0, i32 2
  %208 = load %struct.rule*, %struct.rule** %207, align 8
  store %struct.rule* %208, %struct.rule** %8, align 8
  br label %198

209:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %248, %209
  %211 = load i32, i32* %3, align 4
  %212 = load %struct.lemon*, %struct.lemon** %2, align 8
  %213 = getelementptr inbounds %struct.lemon, %struct.lemon* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %251

216:                                              ; preds = %210
  %217 = load %struct.lemon*, %struct.lemon** %2, align 8
  %218 = getelementptr inbounds %struct.lemon, %struct.lemon* %217, i32 0, i32 5
  %219 = load %struct.state**, %struct.state*** %218, align 8
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.state*, %struct.state** %219, i64 %221
  %223 = load %struct.state*, %struct.state** %222, align 8
  %224 = getelementptr inbounds %struct.state, %struct.state* %223, i32 0, i32 0
  %225 = load %struct.action*, %struct.action** %224, align 8
  store %struct.action* %225, %struct.action** %11, align 8
  br label %226

226:                                              ; preds = %243, %216
  %227 = load %struct.action*, %struct.action** %11, align 8
  %228 = icmp ne %struct.action* %227, null
  br i1 %228, label %229, label %247

229:                                              ; preds = %226
  %230 = load %struct.action*, %struct.action** %11, align 8
  %231 = getelementptr inbounds %struct.action, %struct.action* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @REDUCE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %229
  %236 = load i32, i32* @LEMON_TRUE, align 4
  %237 = load %struct.action*, %struct.action** %11, align 8
  %238 = getelementptr inbounds %struct.action, %struct.action* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  store i32 %236, i32* %241, align 4
  br label %242

242:                                              ; preds = %235, %229
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.action*, %struct.action** %11, align 8
  %245 = getelementptr inbounds %struct.action, %struct.action* %244, i32 0, i32 3
  %246 = load %struct.action*, %struct.action** %245, align 8
  store %struct.action* %246, %struct.action** %11, align 8
  br label %226

247:                                              ; preds = %226
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %3, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %3, align 4
  br label %210

251:                                              ; preds = %210
  %252 = load %struct.lemon*, %struct.lemon** %2, align 8
  %253 = getelementptr inbounds %struct.lemon, %struct.lemon* %252, i32 0, i32 4
  %254 = load %struct.rule*, %struct.rule** %253, align 8
  store %struct.rule* %254, %struct.rule** %8, align 8
  br label %255

255:                                              ; preds = %276, %251
  %256 = load %struct.rule*, %struct.rule** %8, align 8
  %257 = icmp ne %struct.rule* %256, null
  br i1 %257, label %258, label %280

258:                                              ; preds = %255
  %259 = load %struct.rule*, %struct.rule** %8, align 8
  %260 = getelementptr inbounds %struct.rule, %struct.rule* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %276

264:                                              ; preds = %258
  %265 = load %struct.lemon*, %struct.lemon** %2, align 8
  %266 = getelementptr inbounds %struct.lemon, %struct.lemon* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.rule*, %struct.rule** %8, align 8
  %269 = getelementptr inbounds %struct.rule, %struct.rule* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @ErrorMsg(i32 %267, i32 %270, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %272 = load %struct.lemon*, %struct.lemon** %2, align 8
  %273 = getelementptr inbounds %struct.lemon, %struct.lemon* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %264, %263
  %277 = load %struct.rule*, %struct.rule** %8, align 8
  %278 = getelementptr inbounds %struct.rule, %struct.rule* %277, i32 0, i32 2
  %279 = load %struct.rule*, %struct.rule** %278, align 8
  store %struct.rule* %279, %struct.rule** %8, align 8
  br label %255

280:                                              ; preds = %255
  ret void
}

declare dso_local i64 @SetFind(i32, i32) #1

declare dso_local i32 @Action_add(%struct.action**, i64, %struct.symbol*, i8*) #1

declare dso_local %struct.symbol* @Symbol_find(i64) #1

declare dso_local %struct.action* @Action_sort(%struct.action*) #1

declare dso_local i64 @resolve_conflict(%struct.action*, %struct.action*) #1

declare dso_local i32 @ErrorMsg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
