; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hevc_helper_set_extra.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hevc_helper_set_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hxxx_helper*, i8*, i64)* @hevc_helper_set_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_helper_set_extra(%struct.hxxx_helper* %0, i8* %1, i64 %2) #0 {
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
  %11 = call i64 @hevc_ishvcC(i8* %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @hevc_getNALLengthSize(i8* %14)
  %16 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %17 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %19 = call i32 @helper_nal_length_valid(%struct.hxxx_helper* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %13
  %24 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %25 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @helper_process_hvcC_hevc(%struct.hxxx_helper* %26, i8* %27, i64 %28)
  store i32 %29, i32* %4, align 4
  br label %51

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @hxxx_extra_isannexb(i8* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %37 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %36, i32 0, i32 0
  store i32 4, i32* %37, align 4
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @VLC_SUCCESS, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @hevc_helper_parse_nal(%struct.hxxx_helper* %43, i8* %44, i64 %45, i32 0, i32* %8)
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %41, %40 ], [ %46, %42 ]
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %30
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %47, %23, %21
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @hevc_ishvcC(i8*, i64) #1

declare dso_local i32 @hevc_getNALLengthSize(i8*) #1

declare dso_local i32 @helper_nal_length_valid(%struct.hxxx_helper*) #1

declare dso_local i32 @helper_process_hvcC_hevc(%struct.hxxx_helper*, i8*, i64) #1

declare dso_local i64 @hxxx_extra_isannexb(i8*, i64) #1

declare dso_local i32 @hevc_helper_parse_nal(%struct.hxxx_helper*, i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
