; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_v.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64*, i64 }

@PARALLEL_COLS_53 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64*, i64, i64)* @opj_idwt53_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_idwt53_v(%struct.TYPE_5__* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %4
  %32 = load i64, i64* %10, align 8
  %33 = icmp sgt i64 %32, 1
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @PARALLEL_COLS_53, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2(i64* %41, i64 %42, i64 %43, i64* %44, i64 %45)
  br label %193

47:                                               ; preds = %34, %31
  %48 = load i64, i64* %10, align 8
  %49 = icmp sgt i64 %48, 1
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @opj_idwt3_v_cas0(i64* %58, i64 %59, i64 %60, i64* %61, i64 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %11, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %6, align 8
  br label %51

69:                                               ; preds = %51
  br label %193

70:                                               ; preds = %47
  br label %193

71:                                               ; preds = %4
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  store i64 0, i64* %12, align 8
  br label %75

75:                                               ; preds = %84, %74
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = sdiv i64 %82, 2
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %12, align 8
  %87 = load i64*, i64** %6, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %6, align 8
  br label %75

89:                                               ; preds = %75
  br label %193

90:                                               ; preds = %71
  %91 = load i64, i64* %10, align 8
  %92 = icmp eq i64 %91, 2
  br i1 %92, label %93, label %153

93:                                               ; preds = %90
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  store i64* %96, i64** %14, align 8
  store i64 0, i64* %13, align 8
  br label %97

97:                                               ; preds = %147, %93
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %152

101:                                              ; preds = %97
  %102 = load i64*, i64** %6, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = mul nsw i64 %103, %104
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  store i64* %106, i64** %16, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  store i64* %108, i64** %17, align 8
  %109 = load i64*, i64** %17, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %16, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  %116 = ashr i64 %115, 1
  %117 = sub nsw i64 %111, %116
  %118 = load i64*, i64** %14, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  store i64 %117, i64* %119, align 8
  %120 = load i64*, i64** %16, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %14, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load i64*, i64** %14, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  store i64 %126, i64* %128, align 8
  store i64 0, i64* %15, align 8
  br label %129

129:                                              ; preds = %143, %101
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i64*, i64** %14, align 8
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %6, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %7, align 8
  %141 = mul nsw i64 %139, %140
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  store i64 %137, i64* %142, align 8
  br label %143

143:                                              ; preds = %133
  %144 = load i64, i64* %15, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %15, align 8
  br label %129

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %13, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %13, align 8
  %150 = load i64*, i64** %6, align 8
  %151 = getelementptr inbounds i64, i64* %150, i32 1
  store i64* %151, i64** %6, align 8
  br label %97

152:                                              ; preds = %97
  br label %193

153:                                              ; preds = %90
  %154 = load i64, i64* %10, align 8
  %155 = icmp sgt i64 %154, 2
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @PARALLEL_COLS_53, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load i64*, i64** %6, align 8
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @opj_idwt53_v_cas1_mcols_SSE2_OR_AVX2(i64* %163, i64 %164, i64 %165, i64* %166, i64 %167)
  br label %193

169:                                              ; preds = %156, %153
  %170 = load i64, i64* %10, align 8
  %171 = icmp sgt i64 %170, 2
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  store i64 0, i64* %18, align 8
  br label %173

173:                                              ; preds = %186, %172
  %174 = load i64, i64* %18, align 8
  %175 = load i64, i64* %8, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load i64*, i64** %6, align 8
  %184 = load i64, i64* %7, align 8
  %185 = call i32 @opj_idwt3_v_cas1(i64* %180, i64 %181, i64 %182, i64* %183, i64 %184)
  br label %186

186:                                              ; preds = %177
  %187 = load i64, i64* %18, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %18, align 8
  %189 = load i64*, i64** %6, align 8
  %190 = getelementptr inbounds i64, i64* %189, i32 1
  store i64* %190, i64** %6, align 8
  br label %173

191:                                              ; preds = %173
  br label %193

192:                                              ; preds = %169
  br label %193

193:                                              ; preds = %38, %69, %89, %152, %160, %191, %192, %70
  ret void
}

declare dso_local i32 @opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2(i64*, i64, i64, i64*, i64) #1

declare dso_local i32 @opj_idwt3_v_cas0(i64*, i64, i64, i64*, i64) #1

declare dso_local i32 @opj_idwt53_v_cas1_mcols_SSE2_OR_AVX2(i64*, i64, i64, i64*, i64) #1

declare dso_local i32 @opj_idwt3_v_cas1(i64*, i64, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
