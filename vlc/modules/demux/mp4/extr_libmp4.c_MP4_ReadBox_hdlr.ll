; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_hdlr.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64* }

@MP4_Box_data_hdlr_t = common dso_local global i32 0, align 4
@MP4_FreeBox_hdlr = common dso_local global i32 0, align 4
@i_read = common dso_local global i64 0, align 8
@SSIZE_MAX = common dso_local global i64 0, align 8
@p_peek = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @MP4_ReadBox_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_hdlr(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @VLC_UNUSED(i32 %10)
  %12 = load i32, i32* @MP4_Box_data_hdlr_t, align 4
  %13 = load i32, i32* @MP4_FreeBox_hdlr, align 4
  %14 = call i32 @MP4_READBOX_ENTER(i32 %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call i32 @MP4_GETVERSIONFLAGS(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @MP4_GETFOURCC(i64 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @MP4_GETFOURCC(i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @MP4_GET4BYTES(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @MP4_GET4BYTES(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @MP4_GET4BYTES(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i64* null, i64** %44, align 8
  %45 = load i64, i64* @i_read, align 8
  %46 = load i64, i64* @SSIZE_MAX, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %50

50:                                               ; preds = %48, %2
  %51 = load i64, i64* @i_read, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @VLC_FOURCC(i8 signext 109, i8 signext 104, i8 signext 108, i8 signext 114)
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @MP4_GET1BYTE(i64 %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @i_read, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i64, i64* %8, align 8
  br label %72

70:                                               ; preds = %62
  %71 = load i64, i64* @i_read, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  store i64 %73, i64* %7, align 8
  br label %76

74:                                               ; preds = %53
  %75 = load i64, i64* @i_read, align 8
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  %79 = call i64* @malloc(i64 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i64* %79, i64** %84, align 8
  store i64* %79, i64** %9, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = icmp eq i64* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %92

92:                                               ; preds = %90, %76
  %93 = load i64*, i64** %9, align 8
  %94 = load i32, i32* @p_peek, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @memcpy(i64* %93, i32 %94, i64 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %92, %50
  %106 = call i32 @MP4_READBOX_EXIT(i32 1)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @MP4_READBOX_ENTER(i32, i32) #1

declare dso_local i32 @MP4_GETVERSIONFLAGS(%struct.TYPE_7__*) #1

declare dso_local i32 @MP4_GETFOURCC(i64) #1

declare dso_local i32 @MP4_GET4BYTES(i32) #1

declare dso_local i32 @MP4_READBOX_EXIT(i32) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @MP4_GET1BYTE(i64) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
