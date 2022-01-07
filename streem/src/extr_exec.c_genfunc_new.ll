; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_genfunc_new.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_genfunc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_genfunc = type { i32, i32*, i32 }

@STRM_PTR_GENFUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strm_genfunc* (i32*, i32)* @genfunc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strm_genfunc* @genfunc_new(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.strm_genfunc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strm_genfunc*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.strm_genfunc* @malloc(i32 24)
  store %struct.strm_genfunc* %7, %struct.strm_genfunc** %6, align 8
  %8 = load %struct.strm_genfunc*, %struct.strm_genfunc** %6, align 8
  %9 = icmp ne %struct.strm_genfunc* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.strm_genfunc* null, %struct.strm_genfunc** %3, align 8
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @STRM_PTR_GENFUNC, align 4
  %13 = load %struct.strm_genfunc*, %struct.strm_genfunc** %6, align 8
  %14 = getelementptr inbounds %struct.strm_genfunc, %struct.strm_genfunc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.strm_genfunc*, %struct.strm_genfunc** %6, align 8
  %17 = getelementptr inbounds %struct.strm_genfunc, %struct.strm_genfunc* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.strm_genfunc*, %struct.strm_genfunc** %6, align 8
  %20 = getelementptr inbounds %struct.strm_genfunc, %struct.strm_genfunc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.strm_genfunc*, %struct.strm_genfunc** %6, align 8
  store %struct.strm_genfunc* %21, %struct.strm_genfunc** %3, align 8
  br label %22

22:                                               ; preds = %11, %10
  %23 = load %struct.strm_genfunc*, %struct.strm_genfunc** %3, align 8
  ret %struct.strm_genfunc* %23
}

declare dso_local %struct.strm_genfunc* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
