; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_BuildVertexShader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_BuildVertexShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (i32, i32, i8**, i32*)*, i32 (i32)* }
%struct.TYPE_5__ = type { i32 }

@BuildVertexShader.template = internal global i8* getelementptr inbounds ([395 x i8], [395 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [395 x i8] c"#version %u\0Avarying vec2 TexCoord0;\0Aattribute vec4 MultiTexCoord0;\0A%s%sattribute vec3 VertexPosition;\0Auniform mat4 OrientationMatrix;\0Auniform mat4 ProjectionMatrix;\0Auniform mat4 ZoomMatrix;\0Auniform mat4 ViewMatrix;\0Avoid main() {\0A TexCoord0 = vec4(OrientationMatrix * MultiTexCoord0).st;\0A%s%s gl_Position = ProjectionMatrix * ZoomMatrix * ViewMatrix\0A               * vec4(VertexPosition, 1.0);\0A}\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"varying vec2 TexCoord1;\0Aattribute vec4 MultiTexCoord1;\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [59 x i8] c" TexCoord1 = vec4(OrientationMatrix * MultiTexCoord1).st;\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"varying vec2 TexCoord2;\0Aattribute vec4 MultiTexCoord2;\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c" TexCoord2 = vec4(OrientationMatrix * MultiTexCoord2).st;\0A\00", align 1
@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"\0A=== Vertex shader for fourcc: %4.4s ===\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @BuildVertexShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildVertexShader(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 1
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ugt i32 %16, 1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ugt i32 %20, 2
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 2
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** @BuildVertexShader.template, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @asprintf(i8** %10, i8* %28, i32 %31, i8* %32, i8* %33, i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

39:                                               ; preds = %2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %46 = call i32 %44(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32 (i32, i32, i8**, i32*)*, i32 (i32, i32, i8**, i32*)** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 %51(i32 %52, i32 1, i8** %10, i32* null)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %39
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = bitcast i32* %64 to i8*
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @msg_Dbg(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %58, %39
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 %73(i32 %74)
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %68, %38
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
