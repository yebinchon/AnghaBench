; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_set_extra.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_set_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32, i8*, i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@helper_process_block_h264_avcc = common dso_local global i8* null, align 8
@helper_process_block_xvcc2annexb = common dso_local global i8* null, align 8
@helper_process_block_h264_annexb2avcc = common dso_local global i8* null, align 8
@helper_process_block_h264_annexb = common dso_local global i8* null, align 8
@helper_process_block_hevc_hvcc = common dso_local global i8* null, align 8
@helper_process_block_hevc_annexb2hvcc = common dso_local global i8* null, align 8
@helper_process_block_hevc_annexb = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxxx_helper_set_extra(%struct.hxxx_helper* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hxxx_helper*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %10 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %22 [
    i32 129, label %12
    i32 128, label %17
  ]

12:                                               ; preds = %3
  %13 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @h264_helper_set_extra(%struct.hxxx_helper* %13, i8* %14, i64 %15)
  store i32 %16, i32* %8, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @hevc_helper_set_extra(%struct.hxxx_helper* %18, i8* %19, i64 %20)
  store i32 %21, i32* %8, align 4
  br label %24

22:                                               ; preds = %3
  %23 = call i32 (...) @vlc_assert_unreachable()
  br label %24

24:                                               ; preds = %22, %17, %12
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @VLC_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %106

30:                                               ; preds = %24
  %31 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %32 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %102 [
    i32 129, label %34
    i32 128, label %68
  ]

34:                                               ; preds = %30
  %35 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %36 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %41 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8*, i8** @helper_process_block_h264_avcc, align 8
  %46 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %47 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load i8*, i8** @helper_process_block_xvcc2annexb, align 8
  %50 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %51 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %67

53:                                               ; preds = %34
  %54 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %55 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** @helper_process_block_h264_annexb2avcc, align 8
  %60 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %61 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %66

62:                                               ; preds = %53
  %63 = load i8*, i8** @helper_process_block_h264_annexb, align 8
  %64 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %65 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %52
  br label %104

68:                                               ; preds = %30
  %69 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %70 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %75 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i8*, i8** @helper_process_block_hevc_hvcc, align 8
  %80 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %81 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %86

82:                                               ; preds = %73
  %83 = load i8*, i8** @helper_process_block_xvcc2annexb, align 8
  %84 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %85 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %101

87:                                               ; preds = %68
  %88 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %89 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i8*, i8** @helper_process_block_hevc_annexb2hvcc, align 8
  %94 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %95 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %100

96:                                               ; preds = %87
  %97 = load i8*, i8** @helper_process_block_hevc_annexb, align 8
  %98 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %99 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %86
  br label %104

102:                                              ; preds = %30
  %103 = call i32 (...) @vlc_assert_unreachable()
  br label %104

104:                                              ; preds = %102, %101, %67
  %105 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %28
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @h264_helper_set_extra(%struct.hxxx_helper*, i8*, i64) #1

declare dso_local i32 @hevc_helper_set_extra(%struct.hxxx_helper*, i8*, i64) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
