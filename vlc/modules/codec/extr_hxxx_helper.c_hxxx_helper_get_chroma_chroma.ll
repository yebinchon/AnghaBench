; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_chroma_chroma.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_chroma_chroma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i32*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxxx_helper_get_chroma_chroma(%struct.hxxx_helper* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hxxx_helper*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hxxx_helper_nal*, align 8
  %11 = alloca %struct.hxxx_helper_nal*, align 8
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.hxxx_helper*, %struct.hxxx_helper** %6, align 8
  %13 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %71 [
    i32 129, label %15
    i32 128, label %37
  ]

15:                                               ; preds = %4
  %16 = load %struct.hxxx_helper*, %struct.hxxx_helper** %6, align 8
  %17 = call %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper* %16)
  store %struct.hxxx_helper_nal* %17, %struct.hxxx_helper_nal** %10, align 8
  %18 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %10, align 8
  %19 = icmp eq %struct.hxxx_helper_nal* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %5, align 4
  br label %73

22:                                               ; preds = %15
  %23 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %10, align 8
  %24 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @h264_get_chroma_luma(i32 %25, i32* %26, i32* %27, i32* %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @VLC_SUCCESS, align 4
  br label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %5, align 4
  br label %73

37:                                               ; preds = %4
  %38 = load %struct.hxxx_helper*, %struct.hxxx_helper** %6, align 8
  %39 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %40, align 8
  %42 = load %struct.hxxx_helper*, %struct.hxxx_helper** %6, align 8
  %43 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %41, i64 %45
  store %struct.hxxx_helper_nal* %46, %struct.hxxx_helper_nal** %11, align 8
  %47 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %11, align 8
  %48 = icmp eq %struct.hxxx_helper_nal* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %37
  %50 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %11, align 8
  %51 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %37
  %55 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %55, i32* %5, align 4
  br label %73

56:                                               ; preds = %49
  %57 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %11, align 8
  %58 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @hevc_get_chroma_luma(i32* %59, i32* %60, i32* %61, i32* %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @VLC_SUCCESS, align 4
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @VLC_EGENERIC, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %5, align 4
  br label %73

71:                                               ; preds = %4
  %72 = call i32 (...) @vlc_assert_unreachable()
  br label %73

73:                                               ; preds = %20, %35, %54, %69, %71
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper*) #1

declare dso_local i32 @h264_get_chroma_luma(i32, i32*, i32*, i32*) #1

declare dso_local i32 @hevc_get_chroma_luma(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
