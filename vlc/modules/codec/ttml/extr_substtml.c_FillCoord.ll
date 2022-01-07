; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FillCoord.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FillCoord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i64 }

@TTML_UNIT_PERCENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, i64, i32, float*, i32*)* @FillCoord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillCoord(float %0, i64 %1, i32 %2, float* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = bitcast %struct.TYPE_3__* %6 to { float, i64 }*
  %11 = getelementptr inbounds { float, i64 }, { float, i64 }* %10, i32 0, i32 0
  store float %0, float* %11, align 8
  %12 = getelementptr inbounds { float, i64 }, { float, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  store i32* %4, i32** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %14 = load float, float* %13, align 8
  %15 = load float*, float** %8, align 8
  store float %14, float* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TTML_UNIT_PERCENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load float*, float** %8, align 8
  %22 = load float, float* %21, align 4
  %23 = fpext float %22 to double
  %24 = fdiv double %23, 1.000000e+02
  %25 = fptrunc double %24 to float
  store float %25, float* %21, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %36

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
