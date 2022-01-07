; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_stream_data.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { %struct.vlc_h2_frame* }
%struct.vlc_h2_stream = type { i64, i32, %struct.vlc_h2_frame**, i32, i32, i64 }

@VLC_H2_STREAM_CLOSED = common dso_local global i32 0, align 4
@VLC_H2_FLOW_CONTROL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vlc_h2_frame*)* @vlc_h2_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_stream_data(i8* %0, %struct.vlc_h2_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_h2_frame*, align 8
  %6 = alloca %struct.vlc_h2_stream*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vlc_h2_frame* %1, %struct.vlc_h2_frame** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vlc_h2_stream*
  store %struct.vlc_h2_stream* %9, %struct.vlc_h2_stream** %6, align 8
  %10 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %11 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %16 = call i32 @free(%struct.vlc_h2_frame* %15)
  %17 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %18 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %21 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VLC_H2_STREAM_CLOSED, align 4
  %24 = call i32 @vlc_h2_stream_error(i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %27 = call i32 @vlc_h2_frame_data_get(%struct.vlc_h2_frame* %26, i64* %7)
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %30 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %35 = call i32 @free(%struct.vlc_h2_frame* %34)
  %36 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %37 = load i32, i32* @VLC_H2_FLOW_CONTROL_ERROR, align 4
  %38 = call i32 @vlc_h2_stream_fatal(%struct.vlc_h2_stream* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %25
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %42 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %46 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %47 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %46, i32 0, i32 2
  %48 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %47, align 8
  store %struct.vlc_h2_frame* %45, %struct.vlc_h2_frame** %48, align 8
  %49 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %50 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %49, i32 0, i32 0
  %51 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %52 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %51, i32 0, i32 2
  store %struct.vlc_h2_frame** %50, %struct.vlc_h2_frame*** %52, align 8
  %53 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %6, align 8
  %54 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %53, i32 0, i32 1
  %55 = call i32 @vlc_cond_signal(i32* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %39, %33, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_stream_error(i32, i32, i32) #1

declare dso_local i32 @vlc_h2_frame_data_get(%struct.vlc_h2_frame*, i64*) #1

declare dso_local i32 @vlc_h2_stream_fatal(%struct.vlc_h2_stream*, i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
