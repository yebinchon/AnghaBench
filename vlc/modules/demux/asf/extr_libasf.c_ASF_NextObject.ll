; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_NextObject.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_NextObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@ASF_OBJECT_COMMON_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i64)* @ASF_NextObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ASF_NextObject(i32* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @vlc_stream_Tell(i32* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i64, i64* %9, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %4, align 4
  br label %113

23:                                               ; preds = %17, %14, %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @ASF_ReadObjectCommon(i32* %27, %struct.TYPE_10__* %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %4, align 4
  br label %113

32:                                               ; preds = %26
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %6, align 8
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %4, align 4
  br label %113

41:                                               ; preds = %33
  %42 = load i64, i64* @UINT64_MAX, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %54, i32* %4, align 4
  br label %113

55:                                               ; preds = %41
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %101

61:                                               ; preds = %55
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %61
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %77, %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %89, %93
  %95 = load i64, i64* @ASF_OBJECT_COMMON_SIZE, align 8
  %96 = add nsw i64 %94, %95
  %97 = icmp slt i64 %85, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %70
  %99 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %99, i32* %4, align 4
  br label %113

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %100, %61, %55
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %106, %110
  %112 = call i32 @vlc_stream_Seek(i32* %102, i64 %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %101, %98, %53, %39, %30, %21
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i64 @ASF_ReadObjectCommon(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @vlc_stream_Seek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
