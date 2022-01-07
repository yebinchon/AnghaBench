; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_separation.c_fz_separation_equivalent.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_separation.c_fz_separation_equivalent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i64*, i32** }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot return equivalent in this colorspace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_separation_equivalent(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, float* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* @FZ_MAX_COLORS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca float, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %143, label %30

30:                                               ; preds = %7
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @fz_colorspace_n(i32* %31, i32* %32)
  switch i32 %33, label %138 [
    i32 3, label %34
    i32 4, label %86
  ]

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %43, 2.550000e+02
  %45 = load float*, float** %12, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  store float %44, float* %46, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %56, 2.550000e+02
  %58 = load float*, float** %12, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  store float %57, float* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %69, 2.550000e+02
  %71 = load float*, float** %12, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  store float %70, float* %72, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 24
  %81 = and i32 %80, 255
  %82 = sitofp i32 %81 to float
  %83 = fdiv float %82, 2.550000e+02
  %84 = load float*, float** %12, align 8
  %85 = getelementptr inbounds float, float* %84, i64 3
  store float %83, float* %85, align 4
  store i32 1, i32* %17, align 4
  br label %178

86:                                               ; preds = %30
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 255
  %95 = sitofp i32 %94 to float
  %96 = fdiv float %95, 2.550000e+02
  %97 = load float*, float** %12, align 8
  %98 = getelementptr inbounds float, float* %97, i64 0
  store float %96, float* %98, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = sitofp i32 %107 to float
  %109 = fdiv float %108, 2.550000e+02
  %110 = load float*, float** %12, align 8
  %111 = getelementptr inbounds float, float* %110, i64 1
  store float %109, float* %111, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = sitofp i32 %120 to float
  %122 = fdiv float %121, 2.550000e+02
  %123 = load float*, float** %12, align 8
  %124 = getelementptr inbounds float, float* %123, i64 2
  store float %122, float* %124, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 24
  %133 = and i32 %132, 255
  %134 = sitofp i32 %133 to float
  %135 = fdiv float %134, 2.550000e+02
  %136 = load float*, float** %12, align 8
  %137 = getelementptr inbounds float, float* %136, i64 3
  store float %135, float* %137, align 4
  store i32 1, i32* %17, align 4
  br label %178

138:                                              ; preds = %30
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %141 = call i32 @fz_throw(i32* %139, i32 %140, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142, %7
  %144 = load i32*, i32** %8, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @fz_colorspace_n(i32* %144, i32* %151)
  %153 = sext i32 %152 to i64
  %154 = mul i64 4, %153
  %155 = trunc i64 %154 to i32
  %156 = call i32 @memset(float* %21, i32 0, i32 %155)
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds float, float* %21, i64 %163
  store float 1.000000e+00, float* %164, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load float*, float** %12, align 8
  %175 = load i32*, i32** %13, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @fz_convert_color(i32* %165, i32* %172, float* %21, i32* %173, float* %174, i32* %175, i32 %176)
  store i32 0, i32* %17, align 4
  br label %178

178:                                              ; preds = %143, %86, %34
  %179 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %17, align 4
  switch i32 %180, label %182 [
    i32 0, label %181
    i32 1, label %181
  ]

181:                                              ; preds = %178, %178
  ret void

182:                                              ; preds = %178
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #2

declare dso_local i32 @fz_throw(i32*, i32, i8*) #2

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @fz_convert_color(i32*, i32*, float*, i32*, float*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
