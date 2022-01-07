; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_init_blocksize.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_init_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float**, float**, float**, float**, i32** }

@VORBIS_outofmem = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @init_blocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_blocksize(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i64 @setup_malloc(%struct.TYPE_5__* %17, i32 %21)
  %23 = inttoptr i64 %22 to float*
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load float**, float*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float*, float** %26, i64 %28
  store float* %23, float** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i64 @setup_malloc(%struct.TYPE_5__* %30, i32 %34)
  %36 = inttoptr i64 %35 to float*
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load float**, float*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float*, float** %39, i64 %41
  store float* %36, float** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @setup_malloc(%struct.TYPE_5__* %43, i32 %47)
  %49 = inttoptr i64 %48 to float*
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load float**, float*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float*, float** %52, i64 %54
  store float* %49, float** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load float**, float*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float*, float** %58, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = icmp ne float* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load float**, float*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float*, float** %67, i64 %69
  %71 = load float*, float** %70, align 8
  %72 = icmp ne float* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load float**, float*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float*, float** %76, i64 %78
  %80 = load float*, float** %79, align 8
  %81 = icmp ne float* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %73, %64, %3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = load i32, i32* @VORBIS_outofmem, align 4
  %85 = call i32 @error(%struct.TYPE_5__* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %181

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load float**, float*** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float*, float** %90, i64 %92
  %94 = load float*, float** %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load float**, float*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float*, float** %97, i64 %99
  %101 = load float*, float** %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load float**, float*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float*, float** %104, i64 %106
  %108 = load float*, float** %107, align 8
  %109 = call i32 @compute_twiddle_factors(i32 %87, float* %94, float* %101, float* %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = trunc i64 %113 to i32
  %115 = call i64 @setup_malloc(%struct.TYPE_5__* %110, i32 %114)
  %116 = inttoptr i64 %115 to float*
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load float**, float*** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float*, float** %119, i64 %121
  store float* %116, float** %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load float**, float*** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float*, float** %125, i64 %127
  %129 = load float*, float** %128, align 8
  %130 = icmp ne float* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %86
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = load i32, i32* @VORBIS_outofmem, align 4
  %134 = call i32 @error(%struct.TYPE_5__* %132, i32 %133)
  store i32 %134, i32* %4, align 4
  br label %181

135:                                              ; preds = %86
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load float**, float*** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float*, float** %139, i64 %141
  %143 = load float*, float** %142, align 8
  %144 = call i32 @compute_window(i32 %136, float* %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 4, %147
  %149 = trunc i64 %148 to i32
  %150 = call i64 @setup_malloc(%struct.TYPE_5__* %145, i32 %149)
  %151 = inttoptr i64 %150 to i32*
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  store i32* %151, i32** %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %135
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = load i32, i32* @VORBIS_outofmem, align 4
  %169 = call i32 @error(%struct.TYPE_5__* %167, i32 %168)
  store i32 %169, i32* %4, align 4
  br label %181

170:                                              ; preds = %135
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 4
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @compute_bitreverse(i32 %171, i32* %178)
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %170, %166, %131, %82
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i64 @setup_malloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @error(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @compute_twiddle_factors(i32, float*, float*, float*) #1

declare dso_local i32 @compute_window(i32, float*) #1

declare dso_local i32 @compute_bitreverse(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
