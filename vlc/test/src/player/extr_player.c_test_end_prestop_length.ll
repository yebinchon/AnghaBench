; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_length.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_prestop_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_6__, i32, i32*, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_end_prestop_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_end_prestop_length(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %6 = load %struct.ctx*, %struct.ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ctx, %struct.ctx* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load %struct.ctx*, %struct.ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ctx, %struct.ctx* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  br label %12

12:                                               ; preds = %21, %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ctx*, %struct.ctx** %2, align 8
  %17 = getelementptr inbounds %struct.ctx, %struct.ctx* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load %struct.ctx*, %struct.ctx** %2, align 8
  %23 = getelementptr inbounds %struct.ctx, %struct.ctx* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ctx*, %struct.ctx** %2, align 8
  %26 = getelementptr inbounds %struct.ctx, %struct.ctx* %25, i32 0, i32 1
  %27 = call i32 @vlc_player_CondWait(i32* %24, i32* %26)
  br label %12

28:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ctx*, %struct.ctx** %2, align 8
  %43 = getelementptr inbounds %struct.ctx, %struct.ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.ctx*, %struct.ctx** %2, align 8
  %54 = getelementptr inbounds %struct.ctx, %struct.ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @vlc_player_GetLength(i32* %57)
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  ret void
}

declare dso_local i32 @vlc_player_CondWait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_player_GetLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
