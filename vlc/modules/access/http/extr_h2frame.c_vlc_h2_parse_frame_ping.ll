; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_ping.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@VLC_H2_PING_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_ping(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %15 = call i32 @free(%struct.vlc_h2_frame* %14)
  %16 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %17 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %18 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 8
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %24 = call i32 @free(%struct.vlc_h2_frame* %23)
  %25 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %26 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %27 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %19
  %29 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %30 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %29)
  %31 = load i32, i32* @VLC_H2_PING_ACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %36 = call i32 @free(%struct.vlc_h2_frame* %35)
  store i32 0, i32* %5, align 4
  br label %53

37:                                               ; preds = %28
  %38 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %39 = call i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame* %38)
  %40 = call i32 @memcpy(i32* %10, i32 %39, i32 8)
  %41 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %42 = call i32 @free(%struct.vlc_h2_frame* %41)
  %43 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %44 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %49 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 %47(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %37, %34, %22, %13
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
