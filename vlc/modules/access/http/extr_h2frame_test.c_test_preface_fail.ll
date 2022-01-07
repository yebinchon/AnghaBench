; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_test_preface_fail.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_test_preface_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32 }

@CTX = common dso_local global i32 0, align 4
@vlc_h2_frame_test_callbacks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_preface_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_preface_fail() #0 {
  %1 = alloca %struct.vlc_h2_parser*, align 8
  %2 = load i32, i32* @CTX, align 4
  %3 = call %struct.vlc_h2_parser* @vlc_h2_parse_init(i32 %2, i32* @vlc_h2_frame_test_callbacks)
  store %struct.vlc_h2_parser* %3, %struct.vlc_h2_parser** %1, align 8
  %4 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %1, align 8
  %5 = icmp ne %struct.vlc_h2_parser* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %1, align 8
  %9 = call i32 (...) @ping()
  %10 = call i32 (...) @ping()
  %11 = call i64 @test_raw_seq(%struct.vlc_h2_parser* %8, i32 %9, i32 %10, i32* null)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %1, align 8
  %16 = call i32 @vlc_h2_parse_destroy(%struct.vlc_h2_parser* %15)
  ret void
}

declare dso_local %struct.vlc_h2_parser* @vlc_h2_parse_init(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_raw_seq(%struct.vlc_h2_parser*, i32, i32, i32*) #1

declare dso_local i32 @ping(...) #1

declare dso_local i32 @vlc_h2_parse_destroy(%struct.vlc_h2_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
