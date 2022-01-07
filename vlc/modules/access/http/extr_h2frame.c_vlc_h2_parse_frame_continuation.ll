; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_continuation.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@VLC_H2_CONTINUATION_END_HEADERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_continuation(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %13 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %12)
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %19 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16, %4
  %24 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %25 = call i32 @free(%struct.vlc_h2_frame* %24)
  %26 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %27 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %28 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %58

29:                                               ; preds = %16
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @VLC_H2_MAX_FRAME, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %35 = call i32 @free(%struct.vlc_h2_frame* %34)
  %36 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %37 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %38 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %58

39:                                               ; preds = %29
  %40 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @vlc_h2_parse_headers_append(%struct.vlc_h2_parser* %40, i32* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %48 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %47)
  %49 = load i32, i32* @VLC_H2_CONTINUATION_END_HEADERS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %54 = call i32 @vlc_h2_parse_headers_end(%struct.vlc_h2_parser* %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %46, %39
  %56 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %57 = call i32 @free(%struct.vlc_h2_frame* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %33, %23
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_parse_headers_append(%struct.vlc_h2_parser*, i32*, i64) #1

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_headers_end(%struct.vlc_h2_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
