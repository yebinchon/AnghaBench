; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_filter_enable_disable.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_filter_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_demux_private = type { i32 }

@DEMUX_FILTER_ENABLE = common dso_local global i32 0, align 4
@DEMUX_FILTER_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @demux_filter_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_filter_enable_disable(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_demux_private*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.vlc_demux_private* @vlc_stream_Private(i32* %9)
  store %struct.vlc_demux_private* %10, %struct.vlc_demux_private** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.vlc_demux_private*, %struct.vlc_demux_private** %8, align 8
  %15 = getelementptr inbounds %struct.vlc_demux_private, %struct.vlc_demux_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @module_get_name(i32 %16, i32 0)
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i32 %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load %struct.vlc_demux_private*, %struct.vlc_demux_private** %8, align 8
  %23 = getelementptr inbounds %struct.vlc_demux_private, %struct.vlc_demux_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @module_get_name(i32 %24, i32 1)
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21, %13
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @DEMUX_FILTER_ENABLE, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @DEMUX_FILTER_DISABLE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @demux_Control(i32* %30, i32 %38)
  store i32 1, i32* %4, align 4
  br label %41

40:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.vlc_demux_private* @vlc_stream_Private(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @module_get_name(i32, i32) #1

declare dso_local i32 @demux_Control(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
