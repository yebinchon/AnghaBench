; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_draw_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture = type { i64, i64, i64, i32, i64, i32, i32 }

@GL_ONE = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_image(%struct.texture* %0, float %1, float %2) #0 {
  %4 = alloca %struct.texture*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.texture* %0, %struct.texture** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load i32, i32* @GL_ONE, align 4
  %8 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %9 = call i32 @glBlendFunc(i32 %7, i32 %8)
  %10 = load i32, i32* @GL_BLEND, align 4
  %11 = call i32 @glEnable(i32 %10)
  %12 = load i32, i32* @GL_TEXTURE_2D, align 4
  %13 = load %struct.texture*, %struct.texture** %4, align 8
  %14 = getelementptr inbounds %struct.texture, %struct.texture* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @glBindTexture(i32 %12, i32 %15)
  %17 = load i32, i32* @GL_TEXTURE_2D, align 4
  %18 = call i32 @glEnable(i32 %17)
  %19 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %20 = call i32 @glBegin(i32 %19)
  %21 = call i32 @glColor4f(i32 1, i32 1, i32 1, i32 1)
  %22 = load %struct.texture*, %struct.texture** %4, align 8
  %23 = getelementptr inbounds %struct.texture, %struct.texture* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @glTexCoord2f(i32 0, i32 %24)
  %26 = load float, float* %5, align 4
  %27 = load %struct.texture*, %struct.texture** %4, align 8
  %28 = getelementptr inbounds %struct.texture, %struct.texture* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to float
  %31 = fadd float %26, %30
  %32 = fptosi float %31 to i64
  %33 = load float, float* %6, align 4
  %34 = load %struct.texture*, %struct.texture** %4, align 8
  %35 = getelementptr inbounds %struct.texture, %struct.texture* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to float
  %38 = fadd float %33, %37
  %39 = load %struct.texture*, %struct.texture** %4, align 8
  %40 = getelementptr inbounds %struct.texture, %struct.texture* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to float
  %43 = fadd float %38, %42
  %44 = fptosi float %43 to i64
  %45 = call i32 @glVertex2f(i64 %32, i64 %44)
  %46 = call i32 @glTexCoord2f(i32 0, i32 0)
  %47 = load float, float* %5, align 4
  %48 = load %struct.texture*, %struct.texture** %4, align 8
  %49 = getelementptr inbounds %struct.texture, %struct.texture* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to float
  %52 = fadd float %47, %51
  %53 = fptosi float %52 to i64
  %54 = load float, float* %6, align 4
  %55 = load %struct.texture*, %struct.texture** %4, align 8
  %56 = getelementptr inbounds %struct.texture, %struct.texture* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to float
  %59 = fadd float %54, %58
  %60 = fptosi float %59 to i64
  %61 = call i32 @glVertex2f(i64 %53, i64 %60)
  %62 = load %struct.texture*, %struct.texture** %4, align 8
  %63 = getelementptr inbounds %struct.texture, %struct.texture* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.texture*, %struct.texture** %4, align 8
  %66 = getelementptr inbounds %struct.texture, %struct.texture* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @glTexCoord2f(i32 %64, i32 %67)
  %69 = load float, float* %5, align 4
  %70 = load %struct.texture*, %struct.texture** %4, align 8
  %71 = getelementptr inbounds %struct.texture, %struct.texture* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to float
  %74 = fadd float %69, %73
  %75 = load %struct.texture*, %struct.texture** %4, align 8
  %76 = getelementptr inbounds %struct.texture, %struct.texture* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to float
  %79 = fadd float %74, %78
  %80 = fptosi float %79 to i64
  %81 = load float, float* %6, align 4
  %82 = load %struct.texture*, %struct.texture** %4, align 8
  %83 = getelementptr inbounds %struct.texture, %struct.texture* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to float
  %86 = fadd float %81, %85
  %87 = load %struct.texture*, %struct.texture** %4, align 8
  %88 = getelementptr inbounds %struct.texture, %struct.texture* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to float
  %91 = fadd float %86, %90
  %92 = fptosi float %91 to i64
  %93 = call i32 @glVertex2f(i64 %80, i64 %92)
  %94 = load %struct.texture*, %struct.texture** %4, align 8
  %95 = getelementptr inbounds %struct.texture, %struct.texture* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @glTexCoord2f(i32 %96, i32 0)
  %98 = load float, float* %5, align 4
  %99 = load %struct.texture*, %struct.texture** %4, align 8
  %100 = getelementptr inbounds %struct.texture, %struct.texture* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = sitofp i64 %101 to float
  %103 = fadd float %98, %102
  %104 = load %struct.texture*, %struct.texture** %4, align 8
  %105 = getelementptr inbounds %struct.texture, %struct.texture* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sitofp i64 %106 to float
  %108 = fadd float %103, %107
  %109 = fptosi float %108 to i64
  %110 = load float, float* %6, align 4
  %111 = load %struct.texture*, %struct.texture** %4, align 8
  %112 = getelementptr inbounds %struct.texture, %struct.texture* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to float
  %115 = fadd float %110, %114
  %116 = fptosi float %115 to i64
  %117 = call i32 @glVertex2f(i64 %109, i64 %116)
  %118 = call i32 (...) @glEnd()
  %119 = load i32, i32* @GL_TEXTURE_2D, align 4
  %120 = call i32 @glDisable(i32 %119)
  %121 = load i32, i32* @GL_BLEND, align 4
  %122 = call i32 @glDisable(i32 %121)
  ret void
}

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @glTexCoord2f(i32, i32) #1

declare dso_local i32 @glVertex2f(i64, i64) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
