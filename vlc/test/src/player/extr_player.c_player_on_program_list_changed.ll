; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_program_list_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_on_program_list_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_program = type { i32 }
%struct.ctx = type { i32 }
%struct.report_program_list = type { i32, i32 }

@on_program_list_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.vlc_player_program*, i8*)* @player_on_program_list_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_program_list_changed(i32* %0, i32 %1, %struct.vlc_player_program* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_player_program*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ctx*, align 8
  %10 = alloca %struct.report_program_list, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vlc_player_program* %2, %struct.vlc_player_program** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.ctx* @get_ctx(i32* %11, i8* %12)
  store %struct.ctx* %13, %struct.ctx** %9, align 8
  %14 = getelementptr inbounds %struct.report_program_list, %struct.report_program_list* %10, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.report_program_list, %struct.report_program_list* %10, i32 0, i32 1
  %17 = load %struct.vlc_player_program*, %struct.vlc_player_program** %7, align 8
  %18 = call i32 @vlc_player_program_Dup(%struct.vlc_player_program* %17)
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.report_program_list, %struct.report_program_list* %10, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @on_program_list_changed, align 4
  %23 = bitcast %struct.report_program_list* %10 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = call i32 @VEC_PUSH(i32 %22, i64 %24)
  ret void
}

declare dso_local %struct.ctx* @get_ctx(i32*, i8*) #1

declare dso_local i32 @vlc_player_program_Dup(%struct.vlc_player_program*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VEC_PUSH(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
