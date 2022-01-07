; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_data.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i8*, %struct.vlc_h2_frame*)*, i32 (i8*)*, i32 (i32, i64*)* }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@VLC_H2_DATA_PADDED = common dso_local global i32 0, align 4
@VLC_H2_FLOW_CONTROL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_STREAM_CLOSED = common dso_local global i32 0, align 4
@VLC_H2_DATA_END_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_data(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %15 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %17 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %22 = call i32 @free(%struct.vlc_h2_frame* %21)
  %23 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %24 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %25 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %132

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @VLC_H2_MAX_FRAME, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %32 = call i32 @free(%struct.vlc_h2_frame* %31)
  %33 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %36 = call i32 @vlc_h2_stream_error(%struct.vlc_h2_parser* %33, i64 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %132

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @VLC_H2_DATA_PADDED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %43, 1
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = add i32 1, %49
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45, %42
  %54 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %55 = call i32 @free(%struct.vlc_h2_frame* %54)
  %56 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %59 = call i32 @vlc_h2_stream_error(%struct.vlc_h2_parser* %56, i64 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %132

60:                                               ; preds = %45
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = add i32 1, %63
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %60, %37
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %71 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %76 = call i32 @free(%struct.vlc_h2_frame* %75)
  %77 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %78 = load i32, i32* @VLC_H2_FLOW_CONTROL_ERROR, align 4
  %79 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %132

80:                                               ; preds = %68
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %83 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %87 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32 (i32, i64*)*, i32 (i32, i64*)** %89, align 8
  %91 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %92 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %95 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %94, i32 0, i32 0
  %96 = call i32 %90(i32 %93, i64* %95)
  %97 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser* %97, i64 %98)
  store i8* %99, i8** %12, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %80
  %103 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %104 = call i32 @free(%struct.vlc_h2_frame* %103)
  %105 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* @VLC_H2_STREAM_CLOSED, align 4
  %108 = call i32 @vlc_h2_stream_error(%struct.vlc_h2_parser* %105, i64 %106, i32 %107)
  store i32 %108, i32* %5, align 4
  br label %132

109:                                              ; preds = %80
  %110 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %111 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32 (i8*, %struct.vlc_h2_frame*)*, i32 (i8*, %struct.vlc_h2_frame*)** %113, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %117 = call i32 %114(i8* %115, %struct.vlc_h2_frame* %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @VLC_H2_DATA_END_STREAM, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %109
  %123 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %124 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32 (i8*)*, i32 (i8*)** %126, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 %127(i8* %128)
  br label %130

130:                                              ; preds = %122, %109
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %102, %74, %53, %30, %20
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_stream_error(%struct.vlc_h2_parser*, i64, i32) #1

declare dso_local i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
