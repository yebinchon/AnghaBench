; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_wait_state.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_wait_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*, i32)* @wait_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_state(%struct.ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  store %struct.ctx* %0, %struct.ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ctx*, %struct.ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ctx, %struct.ctx* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  br label %10

10:                                               ; preds = %54, %2
  br label %11

11:                                               ; preds = %19, %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ctx*, %struct.ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ctx, %struct.ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.ctx*, %struct.ctx** %3, align 8
  %21 = getelementptr inbounds %struct.ctx, %struct.ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ctx*, %struct.ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %23, i32 0, i32 1
  %25 = call i32 @vlc_player_CondWait(i32 %22, i32* %24)
  br label %11

26:                                               ; preds = %11
  %27 = load %struct.ctx*, %struct.ctx** %3, align 8
  %28 = getelementptr inbounds %struct.ctx, %struct.ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %51, %26
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  %48 = load %struct.ctx*, %struct.ctx** %3, align 8
  %49 = getelementptr inbounds %struct.ctx, %struct.ctx* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  ret void

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ctx*, %struct.ctx** %3, align 8
  %59 = getelementptr inbounds %struct.ctx, %struct.ctx* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %10
}

declare dso_local i32 @vlc_player_CondWait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
