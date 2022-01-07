; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_program = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_program* @vlc_player_program_New(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_player_program*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vlc_player_program*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call %struct.vlc_player_program* @malloc(i32 16)
  store %struct.vlc_player_program* %7, %struct.vlc_player_program** %6, align 8
  %8 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  %9 = icmp ne %struct.vlc_player_program* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.vlc_player_program* null, %struct.vlc_player_program** %3, align 8
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @vlc_player_program_DupTitle(i32 %12, i8* %13)
  %15 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  %16 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  %18 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  %23 = call i32 @free(%struct.vlc_player_program* %22)
  store %struct.vlc_player_program* null, %struct.vlc_player_program** %3, align 8
  br label %33

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  %27 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  %29 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %28, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  %31 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.vlc_player_program*, %struct.vlc_player_program** %6, align 8
  store %struct.vlc_player_program* %32, %struct.vlc_player_program** %3, align 8
  br label %33

33:                                               ; preds = %24, %21, %10
  %34 = load %struct.vlc_player_program*, %struct.vlc_player_program** %3, align 8
  ret %struct.vlc_player_program* %34
}

declare dso_local %struct.vlc_player_program* @malloc(i32) #1

declare dso_local i32 @vlc_player_program_DupTitle(i32, i8*) #1

declare dso_local i32 @free(%struct.vlc_player_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
