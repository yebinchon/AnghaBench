; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_window_update.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_window_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i8*, i64)*, i32 (i32, i64)* }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_window_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_window_update(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %16 = call i32 @free(%struct.vlc_h2_frame* %15)
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %21 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %22 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %81

23:                                               ; preds = %14
  %24 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %27 = call i32 @vlc_h2_stream_error(%struct.vlc_h2_parser* %24, i64 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %81

28:                                               ; preds = %4
  %29 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %30 = call i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame* %29)
  %31 = call i32 @GetDWBE(i32 %30)
  %32 = and i32 %31, 2147483647
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %35 = call i32 @free(%struct.vlc_h2_frame* %34)
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %43 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %44 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %81

45:                                               ; preds = %38
  %46 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %49 = call i32 @vlc_h2_stream_error(%struct.vlc_h2_parser* %46, i64 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %81

50:                                               ; preds = %28
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %55 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (i32, i64)*, i32 (i32, i64)** %57, align 8
  %59 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %60 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 %58(i32 %61, i64 %62)
  br label %80

64:                                               ; preds = %50
  %65 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser* %65, i64 %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %72 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (i8*, i64)*, i32 (i8*, i64)** %74, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 %75(i8* %76, i64 %77)
  br label %79

79:                                               ; preds = %70, %64
  br label %80

80:                                               ; preds = %79, %53
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %45, %41, %23, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_stream_error(%struct.vlc_h2_parser*, i64, i32) #1

declare dso_local i32 @GetDWBE(i32) #1

declare dso_local i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
