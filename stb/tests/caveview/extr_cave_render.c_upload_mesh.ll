; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_upload_mesh.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_upload_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GL_ARRAY_BUFFER_ARB = common dso_local global i32 0, align 4
@GL_STATIC_DRAW_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_BUFFER_ARB = common dso_local global i32 0, align 4
@GL_RGBA8UI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upload_mesh(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = call i32 @glGenBuffersARB(i32 1, i32* %8)
  %10 = load i32, i32* @GL_ARRAY_BUFFER_ARB, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @glBindBufferARB(i32 %10, i32 %13)
  %15 = load i32, i32* @GL_ARRAY_BUFFER_ARB, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @GL_STATIC_DRAW_ARB, align 4
  %25 = call i32 @glBufferDataARB(i32 %15, i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* @GL_ARRAY_BUFFER_ARB, align 4
  %27 = call i32 @glBindBufferARB(i32 %26, i32 0)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @glGenBuffersARB(i32 1, i32* %29)
  %31 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @glBindBufferARB(i32 %31, i32 %34)
  %36 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @GL_STATIC_DRAW_ARB, align 4
  %45 = call i32 @glBufferDataARB(i32 %36, i32 %42, i32* %43, i32 %44)
  %46 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %47 = call i32 @glBindBufferARB(i32 %46, i32 0)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = call i32 @glGenTextures(i32 1, i32* %49)
  %51 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @glBindTexture(i32 %51, i32 %54)
  %56 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %57 = load i32, i32* @GL_RGBA8UI, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @glTexBufferARB(i32 %56, i32 %57, i32 %60)
  %62 = load i32, i32* @GL_TEXTURE_BUFFER_ARB, align 4
  %63 = call i32 @glBindTexture(i32 %62, i32 0)
  ret void
}

declare dso_local i32 @glGenBuffersARB(i32, i32*) #1

declare dso_local i32 @glBindBufferARB(i32, i32) #1

declare dso_local i32 @glBufferDataARB(i32, i32, i32*, i32) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexBufferARB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
