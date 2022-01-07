; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_EncoderAnalyze.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_EncoderAnalyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32*, i32 }

@CRUNCH_CONFIGS_MAX = common dso_local global i32 0, align 4
@kPalette = common dso_local global i32 0, align 4
@kSpatialSubGreen = common dso_local global i32 0, align 4
@kNumEntropyIx = common dso_local global i32 0, align 4
@CRUNCH_CONFIGS_LZ77_MAX = common dso_local global i32 0, align 4
@kLZ77Standard = common dso_local global i32 0, align 4
@kLZ77RLE = common dso_local global i32 0, align 4
@kLZ77Box = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*)* @EncoderAnalyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncoderAnalyze(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32, i32* @CRUNCH_CONFIGS_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %10, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br label %50

50:                                               ; preds = %45, %4
  %51 = phi i1 [ false, %4 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 @AnalyzeAndCreatePalette(%struct.TYPE_8__* %54, i32 %55, i32 %58, i32* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GetHistoBits(i32 %62, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @GetTransformBits(i32 %73, i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %50
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @kPalette, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @kSpatialSubGreen, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  store i32 1, i32* %18, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 1, i32* %94, align 4
  br label %176

95:                                               ; preds = %50
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sle i32 %103, 16
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 2, i32 1
  store i32 %108, i32* %18, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @AnalyzeEntropy(i32* %111, i32 %112, i32 %113, i32 %116, i32 %117, i32 %120, i32 %123, i32* %19, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %226

128:                                              ; preds = %105
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, 6
  br i1 %130, label %131, label %169

131:                                              ; preds = %128
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 100
  br i1 %135, label %136, label %169

136:                                              ; preds = %131
  %137 = load i32*, i32** %8, align 8
  store i32 0, i32* %137, align 4
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %165, %136
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @kNumEntropyIx, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @kPalette, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %146, %142
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @CRUNCH_CONFIGS_MAX, align 4
  %153 = icmp slt i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 %156, i32* %163, align 8
  br label %164

164:                                              ; preds = %149, %146
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %138

168:                                              ; preds = %138
  br label %175

169:                                              ; preds = %131, %128
  %170 = load i32*, i32** %8, align 8
  store i32 1, i32* %170, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  br label %175

175:                                              ; preds = %169, %168
  br label %176

176:                                              ; preds = %175, %89
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* @CRUNCH_CONFIGS_LZ77_MAX, align 4
  %179 = icmp sle i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  store i32 0, i32* %16, align 4
  br label %182

182:                                              ; preds = %222, %176
  %183 = load i32, i32* %16, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %225

187:                                              ; preds = %182
  store i32 0, i32* %20, align 4
  br label %188

188:                                              ; preds = %212, %187
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %188
  %193 = load i32, i32* %20, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* @kLZ77Standard, align 4
  %197 = load i32, i32* @kLZ77RLE, align 4
  %198 = or i32 %196, %197
  br label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @kLZ77Box, align 4
  br label %201

201:                                              ; preds = %199, %195
  %202 = phi i32 [ %198, %195 ], [ %200, %199 ]
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %202, i32* %211, align 4
  br label %212

212:                                              ; preds = %201
  %213 = load i32, i32* %20, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %20, align 4
  br label %188

215:                                              ; preds = %188
  %216 = load i32, i32* %18, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 2
  store i32 %216, i32* %221, align 8
  br label %222

222:                                              ; preds = %215
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %16, align 4
  br label %182

225:                                              ; preds = %182
  store i32 1, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %127
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @AnalyzeAndCreatePalette(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @GetHistoBits(i32, i32, i32, i32) #1

declare dso_local i32 @GetTransformBits(i32, i32) #1

declare dso_local i32 @AnalyzeEntropy(i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
