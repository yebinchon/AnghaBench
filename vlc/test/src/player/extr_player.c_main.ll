; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ctx, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @test_init()
  %4 = call i32 @ctx_init(%struct.ctx* %2, i32 0)
  %5 = call i32 @test_no_outputs(%struct.ctx* %2)
  %6 = call i32 @ctx_destroy(%struct.ctx* %2)
  %7 = call i32 @ctx_init(%struct.ctx* %2, i32 1)
  %8 = call i32 @test_outputs(%struct.ctx* %2)
  %9 = call i32 @test_set_current_media(%struct.ctx* %2)
  %10 = call i32 @test_next_media(%struct.ctx* %2)
  %11 = call i32 @test_seeks(%struct.ctx* %2)
  %12 = call i32 @test_pause(%struct.ctx* %2)
  %13 = call i32 @test_capabilities_pause(%struct.ctx* %2)
  %14 = call i32 @test_capabilities_seek(%struct.ctx* %2)
  %15 = call i32 @test_error(%struct.ctx* %2)
  %16 = call i32 @test_unknown_uri(%struct.ctx* %2)
  %17 = call i32 @test_titles(%struct.ctx* %2, i32 1)
  %18 = call i32 @test_titles(%struct.ctx* %2, i32 0)
  %19 = call i32 @test_tracks(%struct.ctx* %2, i32 1)
  %20 = call i32 @test_tracks(%struct.ctx* %2, i32 0)
  %21 = call i32 @test_programs(%struct.ctx* %2)
  %22 = call i32 @test_timers(%struct.ctx* %2)
  %23 = getelementptr inbounds %struct.ctx, %struct.ctx* %2, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VLC_OBJECT(i32 %26)
  %28 = call i32 @test_delete_while_playback(i32 %27, i32 1)
  %29 = getelementptr inbounds %struct.ctx, %struct.ctx* %2, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VLC_OBJECT(i32 %32)
  %34 = call i32 @test_delete_while_playback(i32 %33, i32 0)
  %35 = call i32 @ctx_destroy(%struct.ctx* %2)
  ret i32 0
}

declare dso_local i32 @test_init(...) #1

declare dso_local i32 @ctx_init(%struct.ctx*, i32) #1

declare dso_local i32 @test_no_outputs(%struct.ctx*) #1

declare dso_local i32 @ctx_destroy(%struct.ctx*) #1

declare dso_local i32 @test_outputs(%struct.ctx*) #1

declare dso_local i32 @test_set_current_media(%struct.ctx*) #1

declare dso_local i32 @test_next_media(%struct.ctx*) #1

declare dso_local i32 @test_seeks(%struct.ctx*) #1

declare dso_local i32 @test_pause(%struct.ctx*) #1

declare dso_local i32 @test_capabilities_pause(%struct.ctx*) #1

declare dso_local i32 @test_capabilities_seek(%struct.ctx*) #1

declare dso_local i32 @test_error(%struct.ctx*) #1

declare dso_local i32 @test_unknown_uri(%struct.ctx*) #1

declare dso_local i32 @test_titles(%struct.ctx*, i32) #1

declare dso_local i32 @test_tracks(%struct.ctx*, i32) #1

declare dso_local i32 @test_programs(%struct.ctx*) #1

declare dso_local i32 @test_timers(%struct.ctx*) #1

declare dso_local i32 @test_delete_while_playback(i32, i32) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
