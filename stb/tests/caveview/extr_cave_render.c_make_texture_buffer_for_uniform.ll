; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_make_texture_buffer_for_uniform.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_make_texture_buffer_for_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@main_prog = common dso_local global i32 0, align 4
@STBVOX_UNIFORM_color_table = common dso_local global i32 0, align 4
@unibuf = common dso_local global i32* null, align 8
@GL_ARRAY_BUFFER_ARB = common dso_local global i32 0, align 4
@GL_STATIC_DRAW_ARB = common dso_local global i32 0, align 4
@unitex = common dso_local global i32* null, align 8
@GL_TEXTURE_BUFFER_ARB = common dso_local global i32 0, align 4
@GL_RG32F = common dso_local global i32 0, align 4
@GL_RGB32F = common dso_local global i32 0, align 4
@GL_RGBA32F = common dso_local global i32 0, align 4
@GL_TEXTURE0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_texture_buffer_for_uniform(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @stbvox_get_uniform_info(%struct.TYPE_3__* %9, i32 %10)
  %12 = load i32, i32* @main_prog, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @stbgl_find_uniform(i32 %12, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @STBVOX_UNIFORM_color_table, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to float*
  %25 = getelementptr inbounds float, float* %24, i64 255
  store float 2.000000e+00, float* %25, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32*, i32** @unibuf, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @glGenBuffersARB(i32 1, i32* %30)
  %32 = load i32, i32* @GL_ARRAY_BUFFER_ARB, align 4
  %33 = load i32*, i32** @unibuf, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @glBindBufferARB(i32 %32, i32 %37)
  %39 = load i32, i32* @GL_ARRAY_BUFFER_ARB, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @GL_STATIC_DRAW_ARB, align 4
  %51 = call i32 @glBufferDataARB(i32 %39, i32 %46, i64 %49, i32 %50)
  %52 = load i32, i32* @GL_ARRAY_BUFFER_ARB, align 4
  %53 = call i32 @glBindBufferARB(i32 %52, i32 0)
  %54 = load i32*, i32** @unitex, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @glGenTextures(i32 1, i32* %57)
  %59 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %60 = load i32*, i32** @unitex, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @glBindTexture(i32 %59, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %75 [
    i32 130, label %69
    i32 129, label %71
    i32 128, label %73
  ]

69:                                               ; preds = %26
  %70 = load i32, i32* @GL_RG32F, align 4
  store i32 %70, i32* %5, align 4
  br label %77

71:                                               ; preds = %26
  %72 = load i32, i32* @GL_RGB32F, align 4
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %26
  %74 = load i32, i32* @GL_RGBA32F, align 4
  store i32 %74, i32* %5, align 4
  br label %77

75:                                               ; preds = %26
  %76 = call i32 @assert(i32 0)
  br label %77

77:                                               ; preds = %75, %73, %71, %69
  %78 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** @unibuf, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @glTexBufferARB(i32 %78, i32 %79, i32 %84)
  %86 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %87 = call i32 @glBindTexture(i32 %86, i32 0)
  %88 = load i64, i64* @GL_TEXTURE0, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = call i32 @glActiveTextureARB(i64 %91)
  %93 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %94 = load i32*, i32** @unitex, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @glBindTexture(i32 %93, i32 %98)
  %100 = load i64, i64* @GL_TEXTURE0, align 8
  %101 = call i32 @glActiveTextureARB(i64 %100)
  %102 = load i32, i32* @main_prog, align 4
  %103 = call i32 @stbglUseProgram(i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @stbglUniform1i(i32 %104, i32 %105)
  ret void
}

declare dso_local i32 @stbvox_get_uniform_info(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @stbgl_find_uniform(i32, i32) #1

declare dso_local i32 @glGenBuffersARB(i32, i32*) #1

declare dso_local i32 @glBindBufferARB(i32, i32) #1

declare dso_local i32 @glBufferDataARB(i32, i32, i64, i32) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @glTexBufferARB(i32, i32, i32) #1

declare dso_local i32 @glActiveTextureARB(i64) #1

declare dso_local i32 @stbglUseProgram(i32) #1

declare dso_local i32 @stbglUniform1i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
