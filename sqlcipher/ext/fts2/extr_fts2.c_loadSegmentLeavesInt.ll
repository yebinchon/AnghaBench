; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadSegmentLeavesInt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadSegmentLeavesInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i8*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_20__*, i8*, i32, i32, %struct.TYPE_21__*)* @loadSegmentLeavesInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadSegmentLeavesInt(i32* %0, %struct.TYPE_20__* %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_21__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @SQLITE_OK, align 4
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %195, %6
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = call i32 @leavesReaderAtEnd(%struct.TYPE_20__* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  br i1 %40, label %41, label %199

41:                                               ; preds = %39
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @leafReaderTermCmp(i32* %43, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %199

51:                                               ; preds = %41
  %52 = load i32, i32* %17, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %194

54:                                               ; preds = %51
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = call i8* @leavesReaderData(%struct.TYPE_20__* %55)
  store i8* %56, i8** %18, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = call i32 @leavesReaderDataBytes(%struct.TYPE_20__* %57)
  store i32 %58, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %59

59:                                               ; preds = %73, %54
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 0, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %19, align 4
  br label %59

76:                                               ; preds = %71, %59
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 20
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 24
  %90 = trunc i64 %89 to i32
  %91 = call %struct.TYPE_21__* @sqlite3_malloc(i32 %90)
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %21, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %93 = icmp eq %struct.TYPE_21__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %95, i32* %16, align 4
  br label %199

96:                                               ; preds = %84
  %97 = load i32, i32* %14, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %101 = icmp ne %struct.TYPE_21__* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 24
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(%struct.TYPE_21__* %104, %struct.TYPE_21__* %105, i32 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %112 = call i32 @sqlite3_free(%struct.TYPE_21__* %111)
  br label %113

113:                                              ; preds = %99, %96
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %13, align 8
  br label %115

115:                                              ; preds = %113, %80
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i64 %118
  %120 = call i32 @dataBufferInit(%struct.TYPE_21__* %119, i32 0)
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %115, %76
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 0
  br label %135

135:                                              ; preds = %127, %123
  %136 = phi i1 [ false, %123 ], [ %134, %127 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32, i32* %19, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i64 0
  %144 = load i8*, i8** %18, align 8
  %145 = load i32, i32* %20, align 4
  %146 = call i32 @dataBufferReplace(%struct.TYPE_21__* %143, i8* %144, i32 %145)
  br label %193

147:                                              ; preds = %135
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i64 %150
  store %struct.TYPE_21__* %151, %struct.TYPE_21__** %22, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i64 0
  store %struct.TYPE_21__* %153, %struct.TYPE_21__** %23, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %156 = call i32 @dataBufferSwap(%struct.TYPE_21__* %154, %struct.TYPE_21__* %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = load i32, i32* %20, align 4
  %160 = call i32 @docListAccumulateUnion(%struct.TYPE_21__* %157, i8* %158, i32 %159)
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 1
  store %struct.TYPE_21__* %162, %struct.TYPE_21__** %23, align 8
  br label %163

163:                                              ; preds = %189, %147
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %166 = icmp ult %struct.TYPE_21__* %164, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %163
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @docListAccumulateUnion(%struct.TYPE_21__* %168, i8* %171, i32 %174)
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %178, 1024
  br i1 %179, label %180, label %183

180:                                              ; preds = %167
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %182 = call i32 @dataBufferReset(%struct.TYPE_21__* %181)
  br label %188

183:                                              ; preds = %167
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %185 = call i32 @dataBufferDestroy(%struct.TYPE_21__* %184)
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %187 = call i32 @dataBufferInit(%struct.TYPE_21__* %186, i32 0)
  br label %188

188:                                              ; preds = %183, %180
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 1
  store %struct.TYPE_21__* %191, %struct.TYPE_21__** %23, align 8
  br label %163

192:                                              ; preds = %163
  br label %193

193:                                              ; preds = %192, %141
  br label %194

194:                                              ; preds = %193, %51
  br label %195

195:                                              ; preds = %194
  %196 = load i32*, i32** %7, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %198 = call i32 @leavesReaderStep(i32* %196, %struct.TYPE_20__* %197)
  store i32 %198, i32* %16, align 4
  br label %30

199:                                              ; preds = %94, %50, %39
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* @SQLITE_OK, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %252

203:                                              ; preds = %199
  %204 = load i32, i32* %14, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %252

206:                                              ; preds = %203
  store i32 0, i32* %24, align 4
  br label %207

207:                                              ; preds = %248, %206
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %14, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %251

211:                                              ; preds = %207
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %213 = load i32, i32* %24, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %247

219:                                              ; preds = %211
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %227 = load i32, i32* %24, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i64 %228
  %230 = call i32 @dataBufferSwap(%struct.TYPE_21__* %225, %struct.TYPE_21__* %229)
  br label %246

231:                                              ; preds = %219
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %234 = load i32, i32* %24, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %240 = load i32, i32* %24, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @docListAccumulateUnion(%struct.TYPE_21__* %232, i8* %238, i32 %244)
  br label %246

246:                                              ; preds = %231, %224
  br label %247

247:                                              ; preds = %246, %211
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %24, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %24, align 4
  br label %207

251:                                              ; preds = %207
  br label %252

252:                                              ; preds = %251, %203, %199
  br label %253

253:                                              ; preds = %257, %252
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %14, align 4
  %256 = icmp ne i32 %254, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i64 %260
  %262 = call i32 @dataBufferDestroy(%struct.TYPE_21__* %261)
  br label %253

263:                                              ; preds = %253
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %265 = icmp ne %struct.TYPE_21__* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %268 = call i32 @sqlite3_free(%struct.TYPE_21__* %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* %16, align 4
  ret i32 %270
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @leavesReaderAtEnd(%struct.TYPE_20__*) #1

declare dso_local i32 @leafReaderTermCmp(i32*, i8*, i32, i32) #1

declare dso_local i8* @leavesReaderData(%struct.TYPE_20__*) #1

declare dso_local i32 @leavesReaderDataBytes(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_21__*) #1

declare dso_local i32 @dataBufferInit(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dataBufferReplace(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @dataBufferSwap(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @docListAccumulateUnion(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @dataBufferReset(%struct.TYPE_21__*) #1

declare dso_local i32 @dataBufferDestroy(%struct.TYPE_21__*) #1

declare dso_local i32 @leavesReaderStep(i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
