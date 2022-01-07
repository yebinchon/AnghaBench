; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_Header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_Header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@ASF_OBJECT_COMMON_SIZE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @ASF_ReadObject_Header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ASF_ReadObject_Header(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @vlc_stream_Peek(i32* %11, i32** %8, i32 30)
  %13 = icmp slt i32 %12, 30
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @ASF_OBJECT_COMMON_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @GetDWLE(i32* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 28
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @vlc_stream_Read(i32* %38, i32* null, i32 30)
  %40 = icmp ne i32 %39, 30
  br i1 %40, label %41, label %43

41:                                               ; preds = %16
  %42 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %42, i32* %3, align 4
  br label %67

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %64, %43
  %45 = call %struct.TYPE_9__* @malloc(i32 32)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = bitcast %struct.TYPE_10__* %51 to %struct.TYPE_9__*
  %53 = call i64 @ASF_ReadObject(i32* %49, %struct.TYPE_9__* %50, %struct.TYPE_9__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = call i32 @free(%struct.TYPE_9__* %56)
  br label %65

58:                                               ; preds = %48
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = call i64 @ASF_NextObject(i32* %59, %struct.TYPE_9__* %60, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %65

64:                                               ; preds = %58
  br label %44

65:                                               ; preds = %63, %55
  %66 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %41, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i32 @GetDWLE(i32*) #1

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i64 @ASF_ReadObject(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i64 @ASF_NextObject(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
