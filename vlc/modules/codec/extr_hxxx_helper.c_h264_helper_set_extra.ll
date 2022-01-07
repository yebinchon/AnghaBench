; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_h264_helper_set_extra.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_h264_helper_set_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"nal_length_size is too small\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hxxx_helper*, i8*, i64)* @h264_helper_set_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_helper_set_extra(%struct.hxxx_helper* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hxxx_helper*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i64 @h264_isavcC(i8* %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 3
  %19 = add nsw i32 %18, 1
  %20 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %21 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %23 = call i32 @helper_nal_length_valid(%struct.hxxx_helper* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %4, align 4
  br label %71

27:                                               ; preds = %13
  %28 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %29 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %31 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %27
  %35 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %36 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %41 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @msg_Dbg(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %34, %27
  %46 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @helper_process_avcC_h264(%struct.hxxx_helper* %46, i8* %47, i64 %48)
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %3
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @hxxx_extra_isannexb(i8* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %57 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %56, i32 0, i32 0
  store i32 4, i32* %57, align 4
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @h264_helper_parse_nal(%struct.hxxx_helper* %63, i8* %64, i64 %65, i32 0, i32* %8)
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi i32 [ %61, %60 ], [ %66, %62 ]
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %50
  %70 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %67, %45, %39, %25
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @h264_isavcC(i8*, i64) #1

declare dso_local i32 @helper_nal_length_valid(%struct.hxxx_helper*) #1

declare dso_local i32 @msg_Dbg(i32, i8*) #1

declare dso_local i32 @helper_process_avcC_h264(%struct.hxxx_helper*, i8*, i64) #1

declare dso_local i64 @hxxx_extra_isannexb(i8*, i64) #1

declare dso_local i32 @h264_helper_parse_nal(%struct.hxxx_helper*, i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
