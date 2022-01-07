; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_buffering.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_buffering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_end_prestop_buffering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_end_prestop_buffering(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %4 = load %struct.ctx*, %struct.ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ctx, %struct.ctx* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = call float @VEC_LAST(%struct.TYPE_5__* %13)
  %15 = fcmp une float %14, 1.000000e+00
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ true, %7 ], [ %15, %12 ]
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = load %struct.ctx*, %struct.ctx** %2, align 8
  %20 = getelementptr inbounds %struct.ctx, %struct.ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ctx*, %struct.ctx** %2, align 8
  %23 = getelementptr inbounds %struct.ctx, %struct.ctx* %22, i32 0, i32 0
  %24 = call i32 @vlc_player_CondWait(i32 %21, i32* %23)
  br label %7

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 2
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = fcmp oeq float %36, 0.000000e+00
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  ret void
}

declare dso_local float @VEC_LAST(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_player_CondWait(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
