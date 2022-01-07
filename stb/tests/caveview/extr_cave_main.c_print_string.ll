; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_print_string.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_string.buffer = internal global [99999 x i8] zeroinitializer, align 16
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, i8*, float, float, float)* @print_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_string(float %0, float %1, i8* %2, float %3, float %4, float %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store i8* %2, i8** %9, align 8
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %14 = load float, float* %7, align 4
  %15 = load float, float* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @stb_easy_font_print(float %14, float %15, i8* %16, i32* null, i8* getelementptr inbounds ([99999 x i8], [99999 x i8]* @print_string.buffer, i64 0, i64 0), i32 99999)
  store i32 %17, i32* %13, align 4
  %18 = load float, float* %10, align 4
  %19 = load float, float* %11, align 4
  %20 = load float, float* %12, align 4
  %21 = call i32 @glColor3f(float %18, float %19, float %20)
  %22 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %23 = call i32 @glEnableClientState(i32 %22)
  %24 = load i32, i32* @GL_FLOAT, align 4
  %25 = call i32 @glVertexPointer(i32 2, i32 %24, i32 16, i8* getelementptr inbounds ([99999 x i8], [99999 x i8]* @print_string.buffer, i64 0, i64 0))
  %26 = load i32, i32* @GL_QUADS, align 4
  %27 = load i32, i32* %13, align 4
  %28 = mul nsw i32 %27, 4
  %29 = call i32 @glDrawArrays(i32 %26, i32 0, i32 %28)
  %30 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %31 = call i32 @glDisableClientState(i32 %30)
  ret void
}

declare dso_local i32 @stb_easy_font_print(float, float, i8*, i32*, i8*, i32) #1

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, i8*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @glDisableClientState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
