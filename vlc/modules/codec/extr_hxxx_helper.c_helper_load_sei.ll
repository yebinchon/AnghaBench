; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_load_sei.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_load_sei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i32 }

@VLC_CODEC_HEVC = common dso_local global i64 0, align 8
@HXXX_HELPER_SEI_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hxxx_helper*, i32*, i64)* @helper_load_sei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @helper_load_sei(%struct.hxxx_helper* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.hxxx_helper*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hxxx_helper_nal*, align 8
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hxxx_helper*, %struct.hxxx_helper** %4, align 8
  %9 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VLC_CODEC_HEVC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.hxxx_helper*, %struct.hxxx_helper** %4, align 8
  %16 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HXXX_HELPER_SEI_COUNT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %44

22:                                               ; preds = %14
  %23 = load %struct.hxxx_helper*, %struct.hxxx_helper** %4, align 8
  %24 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %25, align 8
  %27 = load %struct.hxxx_helper*, %struct.hxxx_helper** %4, align 8
  %28 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %26, i64 %30
  store %struct.hxxx_helper_nal* %31, %struct.hxxx_helper_nal** %7, align 8
  %32 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %7, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @helper_dup_buf(%struct.hxxx_helper_nal* %32, i32* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %44

38:                                               ; preds = %22
  %39 = load %struct.hxxx_helper*, %struct.hxxx_helper** %4, align 8
  %40 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %38, %37, %21, %13
  ret void
}

declare dso_local i64 @helper_dup_buf(%struct.hxxx_helper_nal*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
