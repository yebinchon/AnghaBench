; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_stb.c_bst_test.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_stb.c_bst_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"stb_bst 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"stb_bst 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"stb_bst 5\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"stb_bst 6\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"stb_bst 3\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"stb_bst 4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bst_test() #0 {
  %1 = alloca %struct.TYPE_23__*, align 8
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca [500 x i32], align 16
  %4 = alloca [500 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %1, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %258, %0
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %261

11:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 500
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = call i32 (...) @stb_rand()
  %17 = and i32 %16, 268435455
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %12

24:                                               ; preds = %12
  %25 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %26 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 2000)
  %28 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %29 = call i32 @stb_intcmp(i32 0)
  %30 = call i32 @qsort(i32* %28, i32 500, i32 4, i32 %29)
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %47, %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 500
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %31

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 500
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %261

56:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %106, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 500
  br i1 %59, label %60, label %109

60:                                               ; preds = %57
  %61 = call %struct.TYPE_23__* @malloc(i32 4)
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %70 = call %struct.TYPE_23__* @btest_insert(%struct.TYPE_23__* %68, %struct.TYPE_23__* %69)
  store %struct.TYPE_23__* %70, %struct.TYPE_23__** %1, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %85, %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_23__* @btest_find(%struct.TYPE_23__* %76, i32 %80)
  %82 = icmp ne %struct.TYPE_23__* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i32 @c(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %71

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %102, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 500
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_23__* @btest_find(%struct.TYPE_23__* %93, i32 %97)
  %99 = icmp eq %struct.TYPE_23__* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @c(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %89

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %57

109:                                              ; preds = %57
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %111 = call %struct.TYPE_23__* @btest_first(%struct.TYPE_23__* %110)
  store %struct.TYPE_23__* %111, %struct.TYPE_23__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %119, %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 500
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %118 = call %struct.TYPE_23__* @btest_next(%struct.TYPE_23__* %116, %struct.TYPE_23__* %117)
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %2, align 8
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %112

122:                                              ; preds = %112
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %124 = icmp eq %struct.TYPE_23__* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @c(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %128 = call %struct.TYPE_23__* @btest_last(%struct.TYPE_23__* %127)
  store %struct.TYPE_23__* %128, %struct.TYPE_23__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %136, %122
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %130, 500
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %135 = call %struct.TYPE_23__* @btest_prev(%struct.TYPE_23__* %133, %struct.TYPE_23__* %134)
  store %struct.TYPE_23__* %135, %struct.TYPE_23__** %2, align 8
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %129

139:                                              ; preds = %129
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %141 = icmp eq %struct.TYPE_23__* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @c(i32 %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %144 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %145 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %146 = call i32 @memcpy(i32* %144, i32* %145, i32 2000)
  %147 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %148 = call i32 @stb_intcmp(i32 0)
  %149 = call i32 @qsort(i32* %147, i32 500, i32 4, i32 %148)
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %151 = call %struct.TYPE_23__* @btest_first(%struct.TYPE_23__* %150)
  store %struct.TYPE_23__* %151, %struct.TYPE_23__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %169, %139
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %153, 500
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %158, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %168 = call %struct.TYPE_23__* @btest_next(%struct.TYPE_23__* %166, %struct.TYPE_23__* %167)
  store %struct.TYPE_23__* %168, %struct.TYPE_23__** %2, align 8
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %152

172:                                              ; preds = %152
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %174 = icmp eq %struct.TYPE_23__* %173, null
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load i32, i32* %7, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %181 = call i32 @stb_reverse(i32* %180, i32 500, i32 4)
  br label %190

182:                                              ; preds = %172
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %187 = call i32 (...) @stb_rand()
  %188 = call i32 @stb_shuffle(i32* %186, i32 500, i32 4, i32 %187)
  br label %189

189:                                              ; preds = %185, %182
  br label %190

190:                                              ; preds = %189, %179
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %254, %190
  %192 = load i32, i32* %5, align 4
  %193 = icmp slt i32 %192, 500
  br i1 %193, label %194, label %257

194:                                              ; preds = %191
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call %struct.TYPE_23__* @btest_find(%struct.TYPE_23__* %195, i32 %199)
  store %struct.TYPE_23__* %200, %struct.TYPE_23__** %2, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %202 = icmp ne %struct.TYPE_23__* %201, null
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %207 = call %struct.TYPE_23__* @btest_remove(%struct.TYPE_23__* %205, %struct.TYPE_23__* %206)
  store %struct.TYPE_23__* %207, %struct.TYPE_23__** %1, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call %struct.TYPE_23__* @btest_find(%struct.TYPE_23__* %208, i32 %212)
  %214 = icmp eq %struct.TYPE_23__* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @c(i32 %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %231, %194
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp sle i32 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call %struct.TYPE_23__* @btest_find(%struct.TYPE_23__* %222, i32 %226)
  %228 = icmp eq %struct.TYPE_23__* %227, null
  %229 = zext i1 %228 to i32
  %230 = call i32 @c(i32 %229, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %231

231:                                              ; preds = %221
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %217

234:                                              ; preds = %217
  br label %235

235:                                              ; preds = %248, %234
  %236 = load i32, i32* %6, align 4
  %237 = icmp slt i32 %236, 500
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call %struct.TYPE_23__* @btest_find(%struct.TYPE_23__* %239, i32 %243)
  %245 = icmp ne %struct.TYPE_23__* %244, null
  %246 = zext i1 %245 to i32
  %247 = call i32 @c(i32 %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %248

248:                                              ; preds = %238
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %6, align 4
  br label %235

251:                                              ; preds = %235
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %253 = call i32 @free(%struct.TYPE_23__* %252)
  br label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %5, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %5, align 4
  br label %191

257:                                              ; preds = %191
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %8

261:                                              ; preds = %53, %8
  ret void
}

declare dso_local i32 @stb_rand(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @stb_intcmp(i32) #1

declare dso_local %struct.TYPE_23__* @malloc(i32) #1

declare dso_local %struct.TYPE_23__* @btest_insert(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @c(i32, i8*) #1

declare dso_local %struct.TYPE_23__* @btest_find(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @btest_first(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @btest_next(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @btest_last(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @btest_prev(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_reverse(i32*, i32, i32) #1

declare dso_local i32 @stb_shuffle(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @btest_remove(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
