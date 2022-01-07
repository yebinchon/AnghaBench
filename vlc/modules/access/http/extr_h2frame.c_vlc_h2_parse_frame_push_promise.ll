; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_push_promise.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_frame_push_promise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32 }
%struct.vlc_h2_frame = type { i32 }

@VLC_H2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@VLC_H2_MAX_FRAME = common dso_local global i64 0, align 8
@VLC_H2_FRAME_SIZE_ERROR = common dso_local global i32 0, align 4
@VLC_H2_PUSH_PROMISE_PADDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i64)* @vlc_h2_parse_frame_push_promise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_frame_push_promise(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_parser*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %6, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %13 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %15 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %14)
  store i32* %15, i32** %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %20 = call i32 @free(%struct.vlc_h2_frame* %19)
  %21 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %22 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %23 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %72

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @VLC_H2_MAX_FRAME, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %30 = call i32 @free(%struct.vlc_h2_frame* %29)
  %31 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %32 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %33 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %72

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @VLC_H2_PUSH_PROMISE_PADDED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %40, 1
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = add i32 1, %46
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42, %39
  %51 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %52 = call i32 @free(%struct.vlc_h2_frame* %51)
  %53 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %54 = load i32, i32* @VLC_H2_FRAME_SIZE_ERROR, align 4
  %55 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %72

56:                                               ; preds = %42
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %11, align 8
  br label %66

66:                                               ; preds = %56, %34
  %67 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %68 = call i32 @free(%struct.vlc_h2_frame* %67)
  %69 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %6, align 8
  %70 = load i32, i32* @VLC_H2_PROTOCOL_ERROR, align 4
  %71 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %50, %28, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
