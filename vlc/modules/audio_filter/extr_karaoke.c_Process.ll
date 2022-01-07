; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_karaoke.c_Process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_karaoke.c_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, %struct.TYPE_4__*)* @Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @Process(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store float 0x3FE6A09E60000000, float* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to float*
  store float* %12, float** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %6, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = fsub float %22, %25
  %27 = fmul float %26, 0x3FE6A09E60000000
  store float %27, float* %8, align 4
  %28 = load float, float* %8, align 4
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i32 1
  store float* %30, float** %6, align 8
  store float %28, float* %29, align 4
  %31 = load float, float* %8, align 4
  %32 = load float*, float** %6, align 8
  %33 = getelementptr inbounds float, float* %32, i32 1
  store float* %33, float** %6, align 8
  store float %31, float* %32, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %7, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
