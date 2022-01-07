; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_vector_FindById.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_program_vector_FindById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_program = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.vlc_player_program** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_program* @vlc_player_program_vector_FindById(%struct.TYPE_3__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.vlc_player_program*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlc_player_program*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.vlc_player_program**, %struct.vlc_player_program*** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.vlc_player_program*, %struct.vlc_player_program** %19, i64 %20
  %22 = load %struct.vlc_player_program*, %struct.vlc_player_program** %21, align 8
  store %struct.vlc_player_program* %22, %struct.vlc_player_program** %9, align 8
  %23 = load %struct.vlc_player_program*, %struct.vlc_player_program** %9, align 8
  %24 = getelementptr inbounds %struct.vlc_player_program, %struct.vlc_player_program* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load i64*, i64** %7, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.vlc_player_program*, %struct.vlc_player_program** %9, align 8
  store %struct.vlc_player_program* %35, %struct.vlc_player_program** %4, align 8
  br label %41

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %10

40:                                               ; preds = %10
  store %struct.vlc_player_program* null, %struct.vlc_player_program** %4, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.vlc_player_program*, %struct.vlc_player_program** %4, align 8
  ret %struct.vlc_player_program* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
