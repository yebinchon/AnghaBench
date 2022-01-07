; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_destructor_AddInput.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_destructor_AddInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.vlc_player_input = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.vlc_player_input*)* @vlc_player_destructor_AddInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_destructor_AddInput(%struct.TYPE_9__* %0, %struct.vlc_player_input* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.vlc_player_input*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.vlc_player_input* %1, %struct.vlc_player_input** %4, align 8
  %5 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %6 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %11 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %16 = call i32 @vlc_list_HasInput(i32* %14, %struct.vlc_player_input* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %25 = call i32 @vlc_list_HasInput(i32* %23, %struct.vlc_player_input* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %31 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @vlc_list_append(i32* %31, i32* %34)
  br label %61

36:                                               ; preds = %2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %41 = call i32 @vlc_list_HasInput(i32* %39, %struct.vlc_player_input* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %50 = call i32 @vlc_list_HasInput(i32* %48, %struct.vlc_player_input* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %56 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @vlc_list_append(i32* %56, i32* %59)
  br label %61

61:                                               ; preds = %36, %9
  %62 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %63 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @vlc_cond_signal(i32* %66)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_list_HasInput(i32*, %struct.vlc_player_input*) #1

declare dso_local i32 @vlc_list_append(i32*, i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
