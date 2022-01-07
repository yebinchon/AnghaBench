; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_FinalizeTokenProbas.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_FinalizeTokenProbas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32****, i32****, i32 }

@NUM_TYPES = common dso_local global i32 0, align 4
@NUM_BANDS = common dso_local global i32 0, align 4
@NUM_CTX = common dso_local global i32 0, align 4
@NUM_PROBAS = common dso_local global i32 0, align 4
@VP8CoeffsUpdateProba = common dso_local global i32**** null, align 8
@VP8CoeffsProba0 = common dso_local global i32**** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @FinalizeTokenProbas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FinalizeTokenProbas(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %187, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NUM_TYPES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %190

22:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %183, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NUM_BANDS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %186

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %179, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NUM_CTX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %182

32:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %175, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @NUM_PROBAS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %178

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32****, i32***** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32***, i32**** %40, i64 %42
  %44 = load i32***, i32**** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 0
  %59 = and i32 %58, 65535
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 65535
  store i32 %62, i32* %11, align 4
  %63 = load i32****, i32***** @VP8CoeffsUpdateProba, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32***, i32**** %63, i64 %65
  %67 = load i32***, i32**** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load i32****, i32***** @VP8CoeffsProba0, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32***, i32**** %80, i64 %82
  %84 = load i32***, i32**** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32**, i32*** %84, i64 %86
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @CalcTokenProba(i32 %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @BranchCost(i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @VP8BitCost(i32 0, i32 %104)
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @BranchCost(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @VP8BitCost(i32 1, i32 %111)
  %113 = add nsw i32 %110, %112
  %114 = add nsw i32 %113, 2048
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp sgt i32 %115, %116
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @VP8BitCost(i32 %119, i32 %120)
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %37
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32****, i32***** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32***, i32**** %130, i64 %132
  %134 = load i32***, i32**** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32**, i32*** %134, i64 %136
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %127, i32* %145, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %3, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 2048
  store i32 %153, i32* %4, align 4
  br label %174

154:                                              ; preds = %37
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32****, i32***** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32***, i32**** %158, i64 %160
  %162 = load i32***, i32**** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32**, i32*** %162, i64 %164
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %155, i32* %173, align 4
  br label %174

174:                                              ; preds = %154, %126
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %33

178:                                              ; preds = %33
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %28

182:                                              ; preds = %28
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %23

186:                                              ; preds = %23
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %18

190:                                              ; preds = %18
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @CalcTokenProba(i32, i32) #1

declare dso_local i32 @BranchCost(i32, i32, i32) #1

declare dso_local i32 @VP8BitCost(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
