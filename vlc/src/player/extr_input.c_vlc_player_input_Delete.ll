; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_Delete.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_Delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_input_Delete(%struct.vlc_player_input* %0) #0 {
  %2 = alloca %struct.vlc_player_input*, align 8
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %2, align 8
  %3 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %4 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %10 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %17 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %24 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %31 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %38 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %44 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %43, i32 0, i32 4
  %45 = call i32 @vlc_vector_destroy(%struct.TYPE_2__* %44)
  %46 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %47 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %46, i32 0, i32 3
  %48 = call i32 @vlc_vector_destroy(%struct.TYPE_2__* %47)
  %49 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %50 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %49, i32 0, i32 2
  %51 = call i32 @vlc_vector_destroy(%struct.TYPE_2__* %50)
  %52 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %53 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %52, i32 0, i32 1
  %54 = call i32 @vlc_vector_destroy(%struct.TYPE_2__* %53)
  %55 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %56 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @input_Close(i32 %57)
  %59 = load %struct.vlc_player_input*, %struct.vlc_player_input** %2, align 8
  %60 = call i32 @free(%struct.vlc_player_input* %59)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_vector_destroy(%struct.TYPE_2__*) #1

declare dso_local i32 @input_Close(i32) #1

declare dso_local i32 @free(%struct.vlc_player_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
