; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_iinf.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_iinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@MP4_Box_data_iinf_t = common dso_local global i32 0, align 4
@i_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*)* @MP4_ReadBox_iinf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_iinf(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @vlc_stream_Peek(i32* %14, i64** %6, i32 9)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %141

19:                                               ; preds = %2
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 4
  %26 = add nsw i32 12, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* @MP4_Box_data_iinf_t, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @MP4_READBOX_ENTER_PARTIAL(i32 %28, i64 %29, i32* null)
  %31 = load i32, i32* @i_read, align 4
  %32 = add nsw i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %38

38:                                               ; preds = %36, %19
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @MP4_GET1BYTE(i64 %39)
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @MP4_GET3BYTES(i64 %41)
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @VLC_UNUSED(i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = icmp sgt i64 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @MP4_GET2BYTES(i64 %58)
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @MP4_GET4BYTES(i64 %66)
  br label %68

68:                                               ; preds = %60, %52
  %69 = load i32, i32* @i_read, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  store i64 0, i64* %11, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %115, %68
  %81 = load i32, i32* %12, align 4
  %82 = icmp sgt i32 %81, 8
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %84, %90
  br label %92

92:                                               ; preds = %83, %80
  %93 = phi i1 [ false, %80 ], [ %91, %83 ]
  br i1 %93, label %94, label %126

94:                                               ; preds = %92
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = call %struct.TYPE_12__* @MP4_ReadBox(i32* %95, %struct.TYPE_12__* %96)
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %13, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = icmp ne %struct.TYPE_12__* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100, %94
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %108 = call i32 @MP4_BoxFree(%struct.TYPE_12__* %107)
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  br label %126

115:                                              ; preds = %100
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %118 = call i32 @MP4_BoxAddChild(%struct.TYPE_12__* %116, %struct.TYPE_12__* %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %80

126:                                              ; preds = %106, %92
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %130, %133
  %135 = call i64 @MP4_Seek(i32* %127, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %139

139:                                              ; preds = %137, %126
  %140 = call i32 @MP4_READBOX_EXIT(i32 1)
  br label %141

141:                                              ; preds = %139, %18
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @vlc_stream_Peek(i32*, i64**, i32) #1

declare dso_local i32 @MP4_READBOX_ENTER_PARTIAL(i32, i64, i32*) #1

declare dso_local i32 @MP4_READBOX_EXIT(i32) #1

declare dso_local i32 @MP4_GET1BYTE(i64) #1

declare dso_local i32 @MP4_GET3BYTES(i64) #1

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i32 @MP4_GET2BYTES(i64) #1

declare dso_local i32 @MP4_GET4BYTES(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @MP4_ReadBox(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @MP4_BoxFree(%struct.TYPE_12__*) #1

declare dso_local i32 @MP4_BoxAddChild(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @MP4_Seek(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
