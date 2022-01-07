; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_settings.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32, i32, i32)* }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@VLC_H2_SETTINGS_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_settings(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %13 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %12)
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %18 = call i32 @free(%struct.vlc_h2_frame* %17)
  %19 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %20 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %21 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %90

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = urem i64 %23, 6
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @VLC_H2_MAX_FRAME, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %22
  %31 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %32 = call i32 @free(%struct.vlc_h2_frame* %31)
  %33 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %34 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %35 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %90

36:                                               ; preds = %26
  %37 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %38 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %37)
  %39 = load i32, i32* @VLC_H2_SETTINGS_ACK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %44 = call i32 @free(%struct.vlc_h2_frame* %43)
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %49 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %50 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %90

51:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %90

52:                                               ; preds = %36
  %53 = load i32*, i32** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %11, align 8
  br label %56

56:                                               ; preds = %75, %52
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ult i32* %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %62 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %67 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @GetWBE(i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = call i32 @GetDWBE(i32* %72)
  %74 = call i32 %65(i32 %68, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %60
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  store i32* %77, i32** %10, align 8
  br label %56

78:                                               ; preds = %56
  %79 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %80 = call i32 @free(%struct.vlc_h2_frame* %79)
  %81 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %82 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %87 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %85(i32 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %78, %51, %47, %30, %16
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i32 @GetDWBE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
