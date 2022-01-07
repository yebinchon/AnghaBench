; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_GenTextures.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_GenTextures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, i32*, i32*, i32*)*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32*)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, double)*, i32 (i32, i32)*, i32 (i32, i32*)* }

@GL_TEXTURE_PRIORITY = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV_MODE = common dso_local global i32 0, align 4
@GL_MODULATE = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* @GenTextures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GenTextures(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i32 (i32, i32*)*, i32 (i32, i32*)** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 %16(i32 %19, i32* %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %106, %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %109

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %33(i32 %36, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32 (i32, i32, double)*, i32 (i32, i32, double)** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GL_TEXTURE_PRIORITY, align 4
  %52 = call i32 %47(i32 %50, i32 %51, double 1.000000e+00)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %56, align 8
  %58 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %59 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %60 = load i32, i32* @GL_MODULATE, align 4
  %61 = call i32 %57(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %71 = load i32, i32* @GL_LINEAR, align 4
  %72 = call i32 %66(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %82 = load i32, i32* @GL_LINEAR, align 4
  %83 = call i32 %77(i32 %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %93 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %94 = call i32 %88(i32 %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %104 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %105 = call i32 %99(i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %28
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %22

109:                                              ; preds = %22
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* %112, null
  br i1 %113, label %114, label %147

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*)** %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 %117(%struct.TYPE_6__* %118, i32* %119, i32* %120, i32* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @VLC_SUCCESS, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %114
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32 (i32, i32*)*, i32 (i32, i32*)** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 %131(i32 %134, i32* %135)
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i32 @memset(i32* %137, i32 0, i32 %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %5, align 4
  br label %149

146:                                              ; preds = %114
  br label %147

147:                                              ; preds = %146, %109
  %148 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %126
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
