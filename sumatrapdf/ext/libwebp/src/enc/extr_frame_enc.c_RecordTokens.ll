; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_RecordTokens.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_RecordTokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32*, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32*, i32 }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*)* @RecordTokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RecordTokens(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = call i32 @VP8IteratorNzToBytes(%struct.TYPE_14__* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %58

26:                                               ; preds = %3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @VP8InitResidual(i32 0, i32 1, i32* %38, i32* %10)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @VP8SetResidualCoeffs(i32 %42, i32* %10)
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = call i8* @VP8RecordCoeffTokens(i32 %44, i32* %10, %struct.TYPE_12__* %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 8
  store i32 %47, i32* %55, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @VP8InitResidual(i32 1, i32 0, i32* %56, i32* %10)
  br label %61

58:                                               ; preds = %3
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @VP8InitResidual(i32 0, i32 3, i32* %59, i32* %10)
  br label %61

61:                                               ; preds = %58, %26
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %116, %61
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %119

65:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %112, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %115

69:                                               ; preds = %66
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %76, %83
  store i32 %84, i32* %13, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 %89, 4
  %91 = add nsw i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @VP8SetResidualCoeffs(i32 %94, i32* %10)
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = call i8* @VP8RecordCoeffTokens(i32 %96, i32* %10, %struct.TYPE_12__* %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %99, i32* %111, align 4
  br label %112

112:                                              ; preds = %69
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %66

115:                                              ; preds = %66
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %62

119:                                              ; preds = %62
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @VP8InitResidual(i32 0, i32 2, i32* %120, i32* %10)
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %199, %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp sle i32 %123, 2
  br i1 %124, label %125, label %202

125:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %195, %125
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %198

129:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %191, %129
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %133, label %194

133:                                              ; preds = %130
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 4, %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %136, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 4, %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %143, %153
  store i32 %154, i32* %14, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %158, 2
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %8, align 4
  %163 = mul nsw i32 %162, 2
  %164 = add nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %157, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @VP8SetResidualCoeffs(i32 %167, i32* %10)
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %171 = call i8* @VP8RecordCoeffTokens(i32 %169, i32* %10, %struct.TYPE_12__* %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 4, %176
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  store i32 %172, i32* %181, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 4, %185
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %184, i64 %189
  store i32 %172, i32* %190, align 4
  br label %191

191:                                              ; preds = %133
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %130

194:                                              ; preds = %130
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %126

198:                                              ; preds = %126
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %9, align 4
  br label %122

202:                                              ; preds = %122
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %204 = call i32 @VP8IteratorBytesToNz(%struct.TYPE_14__* %203)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  ret i32 %210
}

declare dso_local i32 @VP8IteratorNzToBytes(%struct.TYPE_14__*) #1

declare dso_local i32 @VP8InitResidual(i32, i32, i32*, i32*) #1

declare dso_local i32 @VP8SetResidualCoeffs(i32, i32*) #1

declare dso_local i8* @VP8RecordCoeffTokens(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @VP8IteratorBytesToNz(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
