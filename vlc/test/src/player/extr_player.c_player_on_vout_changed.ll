; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_vout_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_vout_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32 }
%struct.report_vout = type { i32, i32, i32, i32 }

@on_vout_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i8*)* @player_on_vout_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_vout_changed(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ctx*, align 8
  %14 = alloca %struct.report_vout, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = call %struct.ctx* @get_ctx(i32* %15, i8* %16)
  store %struct.ctx* %17, %struct.ctx** %13, align 8
  %18 = getelementptr inbounds %struct.report_vout, %struct.report_vout* %14, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.report_vout, %struct.report_vout* %14, i32 0, i32 1
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.report_vout, %struct.report_vout* %14, i32 0, i32 2
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @vlc_es_id_Hold(i32* %23)
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.report_vout, %struct.report_vout* %14, i32 0, i32 3
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @vout_Hold(i32* %26)
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds %struct.report_vout, %struct.report_vout* %14, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @on_vout_changed, align 4
  %32 = bitcast %struct.report_vout* %14 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 4
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 4
  %37 = call i32 @VEC_PUSH(i32 %31, i64 %34, i64 %36)
  ret void
}

declare dso_local %struct.ctx* @get_ctx(i32*, i8*) #1

declare dso_local i32 @vlc_es_id_Hold(i32*) #1

declare dso_local i32 @vout_Hold(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VEC_PUSH(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
