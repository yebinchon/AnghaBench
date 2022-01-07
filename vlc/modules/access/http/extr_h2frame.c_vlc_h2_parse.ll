; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)* }
%struct.vlc_h2_frame = type opaque
%struct.vlc_h2_frame.0 = type { %struct.vlc_h2_frame.0* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_h2_parse(%struct.vlc_h2_parser* %0, %struct.vlc_h2_frame.0* %1) #0 {
  %3 = alloca %struct.vlc_h2_parser*, align 8
  %4 = alloca %struct.vlc_h2_frame.0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_frame.0*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %3, align 8
  store %struct.vlc_h2_frame.0* %1, %struct.vlc_h2_frame.0** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %4, align 8
  %11 = icmp ne %struct.vlc_h2_frame.0* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %4, align 8
  %14 = getelementptr inbounds %struct.vlc_h2_frame.0, %struct.vlc_h2_frame.0* %13, i32 0, i32 0
  %15 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %14, align 8
  store %struct.vlc_h2_frame.0* %15, %struct.vlc_h2_frame.0** %6, align 8
  %16 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %4, align 8
  %17 = call i64 @vlc_h2_frame_length(%struct.vlc_h2_frame.0* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %4, align 8
  %19 = call i32 @vlc_h2_frame_id(%struct.vlc_h2_frame.0* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %4, align 8
  %21 = getelementptr inbounds %struct.vlc_h2_frame.0, %struct.vlc_h2_frame.0* %20, i32 0, i32 0
  store %struct.vlc_h2_frame.0* null, %struct.vlc_h2_frame.0** %21, align 8
  %22 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %23 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %22, i32 0, i32 0
  %24 = load i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)*, i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)** %23, align 8
  %25 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %26 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %4, align 8
  %27 = bitcast %struct.vlc_h2_frame.0* %26 to %struct.vlc_h2_frame*
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %24(%struct.vlc_h2_parser* %25, %struct.vlc_h2_frame* %27, i64 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %12
  %34 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %35 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %34, i32 0, i32 0
  store i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)* bitcast (i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame.0*, i64, i32)* @vlc_h2_parse_failed to i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)*), i32 (%struct.vlc_h2_parser*, %struct.vlc_h2_frame*, i64, i32)** %35, align 8
  br label %36

36:                                               ; preds = %33, %12
  %37 = load %struct.vlc_h2_frame.0*, %struct.vlc_h2_frame.0** %6, align 8
  store %struct.vlc_h2_frame.0* %37, %struct.vlc_h2_frame.0** %4, align 8
  br label %9

38:                                               ; preds = %9
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @vlc_h2_frame_length(%struct.vlc_h2_frame.0*) #1

declare dso_local i32 @vlc_h2_frame_id(%struct.vlc_h2_frame.0*) #1

declare dso_local i32 @vlc_h2_parse_failed(%struct.vlc_h2_parser*, %struct.vlc_h2_frame.0*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
