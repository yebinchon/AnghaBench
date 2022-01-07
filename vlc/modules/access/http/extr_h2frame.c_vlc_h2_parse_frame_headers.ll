; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_headers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32 }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@VLC_H2_HEADERS_PADDED = common dso_local global i32 0, align 4
@VLC_H2_HEADERS_PRIORITY = common dso_local global i32 0, align 4
@VLC_H2_HEADERS_END_STREAM = common dso_local global i32 0, align 4
@VLC_H2_HEADERS_END_HEADERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_headers(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %14 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %16 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %15)
  store i32* %16, i32** %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %21 = call i32 @free(%struct.vlc_h2_frame* %20)
  %22 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %23 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %24 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %111

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @VLC_H2_MAX_FRAME, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %31 = call i32 @free(%struct.vlc_h2_frame* %30)
  %32 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %33 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %34 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %111

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @VLC_H2_HEADERS_PADDED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %41, 1
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = add i32 1, %47
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43, %40
  %52 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %53 = call i32 @free(%struct.vlc_h2_frame* %52)
  %54 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %55 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %56 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %111

57:                                               ; preds = %43
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = add i32 1, %60
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %11, align 8
  br label %67

67:                                               ; preds = %57, %35
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @VLC_H2_HEADERS_PRIORITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i64, i64* %8, align 8
  %74 = icmp ult i64 %73, 5
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %77 = call i32 @free(%struct.vlc_h2_frame* %76)
  %78 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %79 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %80 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %111

81:                                               ; preds = %72
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  store i32* %83, i32** %11, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %84, 5
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %81, %67
  %87 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @VLC_H2_HEADERS_END_STREAM, align 4
  %91 = and i32 %89, %90
  %92 = call i32 @vlc_h2_parse_headers_start(%struct.vlc_h2_parser* %87, i64 %88, i32 %91)
  %93 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @vlc_h2_parse_headers_append(%struct.vlc_h2_parser* %93, i32* %94, i64 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %86
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @VLC_H2_HEADERS_END_HEADERS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %106 = call i32 @vlc_h2_parse_headers_end(%struct.vlc_h2_parser* %105)
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %104, %99, %86
  %108 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %109 = call i32 @free(%struct.vlc_h2_frame* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %75, %51, %29, %19
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

declare dso_local i32 @vlc_h2_parse_headers_start(%struct.vlc_h2_parser*, i64, i32) #1

declare dso_local i32 @vlc_h2_parse_headers_append(%struct.vlc_h2_parser*, i32*, i64) #1

declare dso_local i32 @vlc_h2_parse_headers_end(%struct.vlc_h2_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
