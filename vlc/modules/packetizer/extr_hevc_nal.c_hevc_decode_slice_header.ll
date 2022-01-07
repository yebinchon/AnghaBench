; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_decode_slice_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_decode_slice_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8* }
%struct.hxxx_bsfw_ep3b_ctx_s = type { i32 }

@hxxx_bsfw_ep3b_callbacks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @hevc_decode_slice_header(i32* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hxxx_bsfw_ep3b_ctx_s, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = call %struct.TYPE_7__* @calloc(i32 1, i32 24)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %16 = call i64 @likely(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = call i32 @hxxx_bsfw_ep3b_ctx_init(%struct.hxxx_bsfw_ep3b_ctx_s* %13)
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @bs_init_custom(i32* %12, i32* %23, i64 %24, i32* @hxxx_bsfw_ep3b_callbacks, %struct.hxxx_bsfw_ep3b_ctx_s* %13)
  br label %30

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @bs_init(i32* %12, i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = call i32 @bs_skip(i32* %12, i32 1)
  %32 = call i8* @bs_read(i32* %12, i32 6)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = call i8* @bs_read(i32* %12, i32 6)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = call i8* @bs_read(i32* %12, i32 3)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 62
  br i1 %45, label %57, label %46

46:                                               ; preds = %30
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = call i32 @hevc_parse_slice_segment_header_rbsp(i32* %12, i32 %52, i8* %53, %struct.TYPE_7__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51, %46, %30
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = call i32 @hevc_rbsp_release_slice_header(%struct.TYPE_7__* %58)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %5
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %62
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i64 @likely(%struct.TYPE_7__*) #1

declare dso_local i32 @hxxx_bsfw_ep3b_ctx_init(%struct.hxxx_bsfw_ep3b_ctx_s*) #1

declare dso_local i32 @bs_init_custom(i32*, i32*, i64, i32*, %struct.hxxx_bsfw_ep3b_ctx_s*) #1

declare dso_local i32 @bs_init(i32*, i32*, i64) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @hevc_parse_slice_segment_header_rbsp(i32*, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @hevc_rbsp_release_slice_header(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
