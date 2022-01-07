; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_sample_hint8.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_sample_hint8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32* }

@MP4_Box_data_sample_hint_t = common dso_local global i32 0, align 4
@MP4_FreeBox_sample_hint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @MP4_ReadBox_sample_hint8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_sample_hint8(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load i32, i32* @MP4_Box_data_sample_hint_t, align 4
  %8 = load i32, i32* @MP4_FreeBox_sample_hint, align 4
  %9 = call i32 @MP4_READBOX_ENTER_PARTIAL(i32 %7, i32 24, i32 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %11, 6
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MP4_GET1BYTE(i32 %23)
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @MP4_GET2BYTES(i32 %34)
  %36 = call i32* @malloc(i32 8)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32* %36, i32** %41, align 8
  %42 = icmp ne i32* %36, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %28
  %44 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %45

45:                                               ; preds = %43, %28
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MP4_GET8BYTES(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = call i32 @MP4_ReadBoxContainerChildren(i32* %54, %struct.TYPE_8__* %55, i32* null)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i64 @MP4_Seek(i32* %57, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %45
  %68 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %69

69:                                               ; preds = %67, %45
  %70 = call i32 @MP4_READBOX_EXIT(i32 1)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @MP4_READBOX_ENTER_PARTIAL(i32, i32, i32) #1

declare dso_local i32 @MP4_GET1BYTE(i32) #1

declare dso_local i32 @MP4_GET2BYTES(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @MP4_READBOX_EXIT(i32) #1

declare dso_local i32 @MP4_GET8BYTES(i32) #1

declare dso_local i32 @MP4_ReadBoxContainerChildren(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @MP4_Seek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
