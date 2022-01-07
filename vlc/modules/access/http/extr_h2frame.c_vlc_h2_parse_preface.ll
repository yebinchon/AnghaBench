; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_preface.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_preface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32 }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_DEFAULT_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SETTINGS = common dso_local global i64 0, align 8
@VLC_H2_SETTINGS_ACK = common dso_local global i32 0, align 4
@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@vlc_h2_parse_generic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)* @vlc_h2_parse_preface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_preface(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @VLC_H2_DEFAULT_MAX_FRAME, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %15 = call i64 @vlc_h2_frame_type(%struct.vlc_h2_frame* %14)
  %16 = load i64, i64* @VLC_H2_FRAME_SETTINGS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %20 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %19)
  %21 = load i32, i32* @VLC_H2_SETTINGS_ACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %13, %4
  %25 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %26 = call i32 @free(%struct.vlc_h2_frame* %25)
  %27 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %28 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %29 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %18
  %31 = load i32, i32* @vlc_h2_parse_generic, align 4
  %32 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %33 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %35 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @vlc_h2_parse_frame_settings(%struct.vlc_h2_parser* %34, %struct.vlc_h2_frame* %35, i64 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %24
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @vlc_h2_frame_type(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_parse_frame_settings(%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
