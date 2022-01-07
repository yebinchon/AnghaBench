; ModuleID = '/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_emscripten.c_tick.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_emscripten.c_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@uRotId = common dso_local global i64 0, align 8
@rotDeg = common dso_local global float 0.000000e+00, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick() #0 {
  %1 = call i32 @glClearColor(float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00)
  %2 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %3 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @glClear(i32 %4)
  %6 = load i64, i64* @uRotId, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %0
  %9 = load i64, i64* @uRotId, align 8
  %10 = load float, float* @rotDeg, align 4
  %11 = call i32 @glUniform1f(i64 %9, float %10)
  %12 = load float, float* @rotDeg, align 4
  %13 = fadd float %12, 0x3FB99999A0000000
  store float %13, float* @rotDeg, align 4
  %14 = load float, float* @rotDeg, align 4
  %15 = fcmp oge float %14, 3.600000e+02
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load float, float* @rotDeg, align 4
  %18 = fsub float %17, 3.600000e+02
  store float %18, float* @rotDeg, align 4
  br label %19

19:                                               ; preds = %16, %8
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i32, i32* @GL_TRIANGLES, align 4
  %22 = load i32, i32* @GL_UNSIGNED_SHORT, align 4
  %23 = call i32 @glDrawElements(i32 %21, i32 6, i32 %22, i32 0)
  %24 = call i32 (...) @glFlush()
  ret void
}

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glUniform1f(i64, float) #1

declare dso_local i32 @glDrawElements(i32, i32, i32, i32) #1

declare dso_local i32 @glFlush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
