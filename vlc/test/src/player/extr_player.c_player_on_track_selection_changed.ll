; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_track_selection_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_track_selection_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32 }
%struct.report_track_selection = type { i32*, i32* }

@on_track_selection_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*)* @player_on_track_selection_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_track_selection_changed(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ctx*, align 8
  %10 = alloca %struct.report_track_selection, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.ctx* @get_ctx(i32* %11, i8* %12)
  store %struct.ctx* %13, %struct.ctx** %9, align 8
  %14 = getelementptr inbounds %struct.report_track_selection, %struct.report_track_selection* %10, i32 0, i32 0
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @vlc_es_id_Hold(i32* %18)
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32* [ %19, %17 ], [ null, %20 ]
  store i32* %22, i32** %14, align 8
  %23 = getelementptr inbounds %struct.report_track_selection, %struct.report_track_selection* %10, i32 0, i32 1
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @vlc_es_id_Hold(i32* %27)
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32* [ %28, %26 ], [ null, %29 ]
  store i32* %31, i32** %23, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %struct.report_track_selection, %struct.report_track_selection* %10, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = icmp eq i32 %36, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.report_track_selection, %struct.report_track_selection* %10, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = icmp eq i32 %50, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* @on_track_selection_changed, align 4
  %61 = bitcast %struct.report_track_selection* %10 to { i32*, i32* }*
  %62 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %61, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @VEC_PUSH(i32 %60, i32* %63, i32* %65)
  ret void
}

declare dso_local %struct.ctx* @get_ctx(i32*, i8*) #1

declare dso_local i32* @vlc_es_id_Hold(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VEC_PUSH(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
