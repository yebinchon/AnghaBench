; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_rate.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { float, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_end_prestop_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_end_prestop_rate(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %4 = load %struct.ctx*, %struct.ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ctx, %struct.ctx* %4, i32 0, i32 0
  %6 = load float, float* %5, align 8
  %7 = fcmp une float %6, 1.000000e+00
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load %struct.ctx*, %struct.ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ctx, %struct.ctx* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  br label %12

12:                                               ; preds = %17, %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.ctx*, %struct.ctx** %2, align 8
  %19 = getelementptr inbounds %struct.ctx, %struct.ctx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ctx*, %struct.ctx** %2, align 8
  %22 = getelementptr inbounds %struct.ctx, %struct.ctx* %21, i32 0, i32 1
  %23 = call i32 @vlc_player_CondWait(i32 %20, i32* %22)
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = call float @VEC_LAST(%struct.TYPE_5__* %31)
  %33 = load %struct.ctx*, %struct.ctx** %2, align 8
  %34 = getelementptr inbounds %struct.ctx, %struct.ctx* %33, i32 0, i32 0
  %35 = load float, float* %34, align 8
  %36 = fcmp oeq float %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @vlc_player_CondWait(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local float @VEC_LAST(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
