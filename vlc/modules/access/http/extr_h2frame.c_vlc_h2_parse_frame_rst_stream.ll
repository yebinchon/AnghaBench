; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_rst_stream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_rst_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, i64)* }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_rst_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_rst_stream(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %16 = call i32 @free(%struct.vlc_h2_frame* %15)
  %17 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %18 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %19 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %25 = call i32 @free(%struct.vlc_h2_frame* %24)
  %26 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %27 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %28 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %50

29:                                               ; preds = %20
  %30 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser* %30, i64 %31)
  store i8* %32, i8** %10, align 8
  %33 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %34 = call i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame* %33)
  %35 = call i64 @GetDWBE(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %37 = call i32 @free(%struct.vlc_h2_frame* %36)
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %50

41:                                               ; preds = %29
  %42 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %43 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (i8*, i64)*, i32 (i8*, i64)** %45, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 %46(i8* %47, i64 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %40, %23, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser*, i64) #1

declare dso_local i64 @GetDWBE(i32) #1

declare dso_local i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
