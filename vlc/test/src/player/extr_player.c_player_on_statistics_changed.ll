; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_statistics_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_statistics_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_stats_t = type { i32 }
%struct.ctx = type { i32 }

@on_statistics_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.input_stats_t*, i8*)* @player_on_statistics_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_statistics_changed(i32* %0, %struct.input_stats_t* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_stats_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ctx*, align 8
  %8 = alloca %struct.input_stats_t, align 4
  store i32* %0, i32** %4, align 8
  store %struct.input_stats_t* %1, %struct.input_stats_t** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.ctx* @get_ctx(i32* %9, i8* %10)
  store %struct.ctx* %11, %struct.ctx** %7, align 8
  %12 = load %struct.input_stats_t*, %struct.input_stats_t** %5, align 8
  %13 = bitcast %struct.input_stats_t* %8 to i8*
  %14 = bitcast %struct.input_stats_t* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i32, i32* @on_statistics_changed, align 4
  %16 = getelementptr inbounds %struct.input_stats_t, %struct.input_stats_t* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VEC_PUSH(i32 %15, i32 %17)
  ret void
}

declare dso_local %struct.ctx* @get_ctx(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VEC_PUSH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
