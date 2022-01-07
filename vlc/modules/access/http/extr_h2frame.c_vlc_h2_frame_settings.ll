; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_settings.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }

@VLC_H2_MAX_HEADER_TABLE = common dso_local global i64 0, align 8
@VLC_H2_DEFAULT_MAX_HEADER_TABLE = common dso_local global i64 0, align 8
@VLC_H2_INIT_WINDOW = common dso_local global i64 0, align 8
@VLC_H2_DEFAULT_INIT_WINDOW = common dso_local global i64 0, align 8
@VLC_H2_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_DEFAULT_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SETTINGS = common dso_local global i32 0, align 4
@VLC_H2_SETTING_ENABLE_PUSH = common dso_local global i32 0, align 4
@VLC_H2_MAX_HEADER_LIST = common dso_local global i64 0, align 8
@VLC_H2_MAX_STREAMS = common dso_local global i64 0, align 8
@VLC_H2_SETTING_HEADER_TABLE_SIZE = common dso_local global i32 0, align 4
@VLC_H2_SETTING_INITIAL_WINDOW_SIZE = common dso_local global i32 0, align 4
@VLC_H2_SETTING_MAX_CONCURRENT_STREAMS = common dso_local global i32 0, align 4
@VLC_H2_SETTING_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@VLC_H2_SETTING_MAX_HEADER_LIST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_h2_frame* @vlc_h2_frame_settings() #0 {
  %1 = alloca %struct.vlc_h2_frame*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlc_h2_frame*, align 8
  %4 = alloca i32*, align 8
  %5 = load i64, i64* @VLC_H2_MAX_HEADER_TABLE, align 8
  %6 = load i64, i64* @VLC_H2_DEFAULT_MAX_HEADER_TABLE, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = add nsw i32 %8, 1
  %10 = load i64, i64* @VLC_H2_INIT_WINDOW, align 8
  %11 = load i64, i64* @VLC_H2_DEFAULT_INIT_WINDOW, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = add nsw i32 %9, %13
  %15 = load i64, i64* @VLC_H2_MAX_FRAME, align 8
  %16 = load i64, i64* @VLC_H2_DEFAULT_MAX_FRAME, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %14, %18
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @VLC_H2_FRAME_SETTINGS, align 4
  %21 = load i32, i32* %2, align 4
  %22 = mul i32 %21, 6
  %23 = call %struct.vlc_h2_frame* @vlc_h2_frame_alloc(i32 %20, i32 0, i32 0, i32 %22)
  store %struct.vlc_h2_frame* %23, %struct.vlc_h2_frame** %3, align 8
  %24 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %25 = icmp eq %struct.vlc_h2_frame* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %0
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %1, align 8
  br label %42

30:                                               ; preds = %0
  %31 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %32 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %31)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @VLC_H2_SETTING_ENABLE_PUSH, align 4
  %35 = call i32 @SetWBE(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = call i32 @SetDWBE(i32* %37, i64 0)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32* %40, i32** %4, align 8
  %41 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  store %struct.vlc_h2_frame* %41, %struct.vlc_h2_frame** %1, align 8
  br label %42

42:                                               ; preds = %30, %29
  %43 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %1, align 8
  ret %struct.vlc_h2_frame* %43
}

declare dso_local %struct.vlc_h2_frame* @vlc_h2_frame_alloc(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @SetWBE(i32*, i32) #1

declare dso_local i32 @SetDWBE(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
