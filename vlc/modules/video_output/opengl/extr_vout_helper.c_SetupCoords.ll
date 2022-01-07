; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_SetupCoords.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_SetupCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i32, i32*, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 (i32, i32, i32*, i32)*, i32 (i32, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, float, float, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, float*, float*, float*, float*)* @SetupCoords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupCoords(%struct.TYPE_11__* %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %82 [
    i32 128, label %23
    i32 129, label %36
    i32 130, label %49
  ]

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load float*, float** %8, align 8
  %32 = load float*, float** %9, align 8
  %33 = load float*, float** %10, align 8
  %34 = load float*, float** %11, align 8
  %35 = call i32 @BuildRectangle(i32 %30, i32** %12, i32** %13, i32* %15, i32** %14, i32* %16, float* %31, float* %32, float* %33, float* %34)
  store i32 %35, i32* %17, align 4
  br label %84

36:                                               ; preds = %5
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load float*, float** %8, align 8
  %45 = load float*, float** %9, align 8
  %46 = load float*, float** %10, align 8
  %47 = load float*, float** %11, align 8
  %48 = call i32 @BuildSphere(i32 %43, i32** %12, i32** %13, i32* %15, i32** %14, i32* %16, float* %44, float* %45, float* %46, float* %47)
  store i32 %48, i32* %17, align 4
  br label %84

49:                                               ; preds = %5
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = sitofp i64 %60 to float
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = fdiv float %61, %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = sitofp i64 %70 to float
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load float, float* %74, align 8
  %76 = fdiv float %71, %75
  %77 = load float*, float** %8, align 8
  %78 = load float*, float** %9, align 8
  %79 = load float*, float** %10, align 8
  %80 = load float*, float** %11, align 8
  %81 = call i32 @BuildCube(i32 %56, float %66, float %76, i32** %12, i32** %13, i32* %15, i32** %14, i32* %16, float* %77, float* %78, float* %79, float* %80)
  store i32 %81, i32* %17, align 4
  br label %84

82:                                               ; preds = %5
  %83 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %82, %49, %36, %23
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @VLC_SUCCESS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %6, align 4
  br label %191

90:                                               ; preds = %84
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %134, %90
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ult i32 %92, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %91
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32 (i32, i32)*, i32 (i32, i32)** %104, align 8
  %106 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %105(i32 %106, i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %117, align 8
  %119 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %120 = load i32, i32* %15, align 4
  %121 = mul i32 %120, 2
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %15, align 4
  %128 = mul i32 %126, %127
  %129 = mul i32 %128, 2
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  %132 = load i32, i32* @GL_STATIC_DRAW, align 4
  %133 = call i32 %118(i32 %119, i32 %124, i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %101
  %135 = load i32, i32* %18, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %18, align 4
  br label %91

137:                                              ; preds = %91
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32 (i32, i32)*, i32 (i32, i32)** %140, align 8
  %142 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 %141(i32 %142, i32 %145)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %149, align 8
  %151 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %152 = load i32, i32* %15, align 4
  %153 = mul i32 %152, 3
  %154 = zext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* @GL_STATIC_DRAW, align 4
  %159 = call i32 %150(i32 %151, i32 %156, i32* %157, i32 %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32 (i32, i32)*, i32 (i32, i32)** %162, align 8
  %164 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %163(i32 %164, i32 %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %171, align 8
  %173 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %174 = load i32, i32* %16, align 4
  %175 = zext i32 %174 to i64
  %176 = mul i64 %175, 4
  %177 = trunc i64 %176 to i32
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* @GL_STATIC_DRAW, align 4
  %180 = call i32 %172(i32 %173, i32 %177, i32* %178, i32 %179)
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @free(i32* %181)
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @free(i32* %183)
  %185 = load i32*, i32** %14, align 8
  %186 = call i32 @free(i32* %185)
  %187 = load i32, i32* %16, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %137, %88
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @BuildRectangle(i32, i32**, i32**, i32*, i32**, i32*, float*, float*, float*, float*) #1

declare dso_local i32 @BuildSphere(i32, i32**, i32**, i32*, i32**, i32*, float*, float*, float*, float*) #1

declare dso_local i32 @BuildCube(i32, float, float, i32**, i32**, i32*, i32**, i32*, float*, float*, float*, float*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
