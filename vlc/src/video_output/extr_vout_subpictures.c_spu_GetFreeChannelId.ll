; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_GetFreeChannelId.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_GetFreeChannelId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SSIZE_MAX = common dso_local global i64 0, align 8
@VOUT_SPU_CHANNEL_INVALID = common dso_local global i64 0, align 8
@VLC_VOUT_ORDER_PRIMARY = common dso_local global i32 0, align 4
@VOUT_SPU_CHANNEL_OSD_COUNT = common dso_local global i64 0, align 8
@VLC_VOUT_ORDER_SECONDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32*)* @spu_GetFreeChannelId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spu_GetFreeChannelId(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSIZE_MAX, align 8
  %18 = icmp ugt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @VOUT_SPU_CHANNEL_INVALID, align 8
  store i64 %23, i64* %3, align 8
  br label %82

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @VLC_VOUT_ORDER_PRIMARY, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @VOUT_SPU_CHANNEL_OSD_COUNT, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %77, %30
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  %39 = icmp ult i64 %33, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  %41 = load i64, i64* @VOUT_SPU_CHANNEL_OSD_COUNT, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %68, %40
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @VLC_VOUT_ORDER_SECONDARY, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %71

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %42

71:                                               ; preds = %66, %42
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  store i64 %75, i64* %3, align 8
  br label %82

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %32

80:                                               ; preds = %32
  %81 = load i64, i64* @VOUT_SPU_CHANNEL_INVALID, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %80, %74, %22
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
