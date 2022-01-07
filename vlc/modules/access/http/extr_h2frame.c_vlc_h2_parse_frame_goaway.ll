; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_goaway.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_goaway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64, i64)* }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_goaway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_goaway(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %14 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %19 = call i32 @free(%struct.vlc_h2_frame* %18)
  %20 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %21 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %22 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @VLC_H2_MAX_FRAME, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %23
  %31 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %32 = call i32 @free(%struct.vlc_h2_frame* %31)
  %33 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %34 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %35 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %26
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @GetDWBE(i32* %37)
  %39 = and i32 %38, 2147483647
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = call i32 @GetDWBE(i32* %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %46 = call i32 @free(%struct.vlc_h2_frame* %45)
  %47 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %48 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %50, align 8
  %52 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %53 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 %51(i32 %54, i64 %55, i64 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %36, %30, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @GetDWBE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
