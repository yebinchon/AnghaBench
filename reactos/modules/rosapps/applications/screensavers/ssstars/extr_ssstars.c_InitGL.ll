; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_ssstars.c_InitGL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_ssstars.c_InitGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { float, float, float, float, float }
%struct.TYPE_5__ = type { i32, i32, i32 }

@STAR_RED = common dso_local global i32 0, align 4
@STAR_GREEN = common dso_local global i32 0, align 4
@STAR_BLUE = common dso_local global i32 0, align 4
@STAR_TAIL = common dso_local global i32 0, align 4
@Settings = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GL_SMOOTH = common dso_local global i32 0, align 4
@GL_FLAT = common dso_local global i32 0, align 4
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_AMBIENT_AND_DIFFUSE = common dso_local global i32 0, align 4
@GL_COLOR_MATERIAL = common dso_local global i32 0, align 4
@GL_LIGHT0 = common dso_local global i32 0, align 4
@GL_CONSTANT_ATTENUATION = common dso_local global i32 0, align 4
@GL_LINEAR_ATTENUATION = common dso_local global i32 0, align 4
@GL_QUADRATIC_ATTENUATION = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@MAX_STARS = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global float 0.000000e+00, align 4
@FIELD_WIDTH = common dso_local global float 0.000000e+00, align 4
@FIELD_HEIGHT = common dso_local global float 0.000000e+00, align 4
@FIELD_DEPTH = common dso_local global float 0.000000e+00, align 4
@FAR_PLANE = common dso_local global float 0.000000e+00, align 4
@Vertex = common dso_local global %struct.TYPE_6__* null, align 8
@glStarTex = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_PERSPECTIVE_CORRECTION_HINT = common dso_local global i32 0, align 4
@GL_FASTEST = common dso_local global i32 0, align 4
@GL_NICEST = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @InitGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitGL(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @STAR_RED, align 4
  %9 = load i32, i32* @STAR_GREEN, align 4
  %10 = load i32, i32* @STAR_BLUE, align 4
  %11 = load i32, i32* @STAR_TAIL, align 4
  %12 = call i32 @glClearColor(i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Settings, i32 0, i32 2), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @GL_SMOOTH, align 4
  %17 = call i32 @glShadeModel(i32 %16)
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @GL_FLAT, align 4
  %20 = call i32 @glShadeModel(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %23 = load i32, i32* @GL_FILL, align 4
  %24 = call i32 @glPolygonMode(i32 %22, i32 %23)
  %25 = load i32, i32* @GL_DEPTH_TEST, align 4
  %26 = call i32 @glDisable(i32 %25)
  %27 = load i32, i32* @GL_LIGHTING, align 4
  %28 = call i32 @glEnable(i32 %27)
  %29 = load i32, i32* @GL_FRONT, align 4
  %30 = load i32, i32* @GL_TRUE, align 4
  %31 = call i32 @glLightModeli(i32 %29, i32 %30)
  %32 = load i32, i32* @GL_FRONT, align 4
  %33 = load i32, i32* @GL_AMBIENT_AND_DIFFUSE, align 4
  %34 = call i32 @glColorMaterial(i32 %32, i32 %33)
  %35 = load i32, i32* @GL_COLOR_MATERIAL, align 4
  %36 = call i32 @glEnable(i32 %35)
  %37 = load i32, i32* @GL_LIGHT0, align 4
  %38 = call i32 @glEnable(i32 %37)
  %39 = load i32, i32* @GL_LIGHT0, align 4
  %40 = load i32, i32* @GL_CONSTANT_ATTENUATION, align 4
  %41 = call i32 @glLightf(i32 %39, i32 %40, float 0x3F847AE140000000)
  %42 = load i32, i32* @GL_LIGHT0, align 4
  %43 = load i32, i32* @GL_LINEAR_ATTENUATION, align 4
  %44 = call i32 @glLightf(i32 %42, i32 %43, float 0x3F847AE140000000)
  %45 = load i32, i32* @GL_LIGHT0, align 4
  %46 = load i32, i32* @GL_QUADRATIC_ATTENUATION, align 4
  %47 = call i32 @glLightf(i32 %45, i32 %46, float 0x3F747AE140000000)
  %48 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %49 = call i32 @glClear(i32 %48)
  %50 = call i32 @time(i32* null)
  %51 = call i32 @srand(i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %113, %21
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MAX_STARS, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %52
  %57 = call i64 (...) @rand()
  %58 = sitofp i64 %57 to float
  %59 = load float, float* @RAND_MAX, align 4
  %60 = fdiv float %58, %59
  %61 = fsub float %60, 5.000000e-01
  %62 = load float, float* @FIELD_WIDTH, align 4
  %63 = fmul float %61, %62
  store float %63, float* %5, align 4
  %64 = call i64 (...) @rand()
  %65 = sitofp i64 %64 to float
  %66 = load float, float* @RAND_MAX, align 4
  %67 = fdiv float %65, %66
  %68 = fsub float %67, 5.000000e-01
  %69 = load float, float* @FIELD_HEIGHT, align 4
  %70 = fmul float %68, %69
  store float %70, float* %6, align 4
  %71 = call i64 (...) @rand()
  %72 = sitofp i64 %71 to float
  %73 = load float, float* @RAND_MAX, align 4
  %74 = fdiv float %72, %73
  %75 = load float, float* @FIELD_DEPTH, align 4
  %76 = fmul float %74, %75
  %77 = load float, float* @FAR_PLANE, align 4
  %78 = fadd float %76, %77
  store float %78, float* %7, align 4
  %79 = load float, float* %5, align 4
  %80 = fadd float -1.000000e+00, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vertex, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store float %80, float* %85, align 4
  %86 = load float, float* %6, align 4
  %87 = fadd float -1.000000e+00, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vertex, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store float %87, float* %92, align 4
  %93 = load float, float* %5, align 4
  %94 = fadd float 1.000000e+00, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vertex, align 8
  %96 = load i32, i32* %4, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store float %94, float* %99, align 4
  %100 = load float, float* %6, align 4
  %101 = fadd float 1.000000e+00, %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vertex, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store float %101, float* %106, align 4
  %107 = load float, float* %7, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vertex, align 8
  %109 = load i32, i32* %4, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store float %107, float* %112, align 4
  br label %113

113:                                              ; preds = %56
  %114 = load i32, i32* %4, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %52

116:                                              ; preds = %52
  %117 = call i32 @glGenTextures(i32 1, i32* @glStarTex)
  %118 = load i32, i32* @GL_TEXTURE_2D, align 4
  %119 = load i32, i32* @glStarTex, align 4
  %120 = call i32 @glBindTexture(i32 %118, i32 %119)
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Settings, i32 0, i32 1), align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load i32, i32* @GL_TEXTURE_2D, align 4
  %125 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %126 = load i32, i32* @GL_LINEAR, align 4
  %127 = call i32 @glTexParameteri(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* @GL_TEXTURE_2D, align 4
  %129 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %130 = load i32, i32* @GL_LINEAR, align 4
  %131 = call i32 @glTexParameteri(i32 %128, i32 %129, i32 %130)
  br label %141

132:                                              ; preds = %116
  %133 = load i32, i32* @GL_TEXTURE_2D, align 4
  %134 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %135 = load i32, i32* @GL_NEAREST, align 4
  %136 = call i32 @glTexParameteri(i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* @GL_TEXTURE_2D, align 4
  %138 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %139 = load i32, i32* @GL_NEAREST, align 4
  %140 = call i32 @glTexParameteri(i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %132, %123
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @GetObject(i32 %142, i32 12, %struct.TYPE_5__* %3)
  %144 = load i32, i32* @GL_TEXTURE_2D, align 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @GL_RGBA, align 4
  %150 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @gluBuild2DMipmaps(i32 %144, i32 4, i32 %146, i32 %148, i32 %149, i32 %150, i32 %152)
  %154 = load i32, i32* @GL_TEXTURE_2D, align 4
  %155 = call i32 @glDisable(i32 %154)
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Settings, i32 0, i32 0), align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %141
  %159 = load i32, i32* @GL_PERSPECTIVE_CORRECTION_HINT, align 4
  %160 = load i32, i32* @GL_FASTEST, align 4
  %161 = call i32 @glHint(i32 %159, i32 %160)
  br label %166

162:                                              ; preds = %141
  %163 = load i32, i32* @GL_PERSPECTIVE_CORRECTION_HINT, align 4
  %164 = load i32, i32* @GL_NICEST, align 4
  %165 = call i32 @glHint(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* @GL_BLEND, align 4
  %168 = call i32 @glEnable(i32 %167)
  ret void
}

declare dso_local i32 @glClearColor(i32, i32, i32, i32) #1

declare dso_local i32 @glShadeModel(i32) #1

declare dso_local i32 @glPolygonMode(i32, i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glLightModeli(i32, i32) #1

declare dso_local i32 @glColorMaterial(i32, i32) #1

declare dso_local i32 @glLightf(i32, i32, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @GetObject(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gluBuild2DMipmaps(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glHint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
