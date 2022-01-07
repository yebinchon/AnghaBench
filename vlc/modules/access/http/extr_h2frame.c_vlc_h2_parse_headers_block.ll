; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_headers_block.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_headers_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_FRAME_CONTINUATION = common dso_local global i64 0, align 8
@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)* @vlc_h2_parse_headers_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_headers_block(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %11 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %18 = call i64 @vlc_h2_frame_type(%struct.vlc_h2_frame* %17)
  %19 = load i64, i64* @VLC_H2_FRAME_CONTINUATION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %23 = call i32 @free(%struct.vlc_h2_frame* %22)
  %24 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %25 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %26 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %4
  %28 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %29 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @vlc_h2_parse_frame_continuation(%struct.vlc_h2_parser* %28, %struct.vlc_h2_frame* %29, i64 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_h2_frame_type(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_parse_frame_continuation(%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
