; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_skiptags.c_SkipTag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_skiptags.c_SkipTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@MAX_TAGS = common dso_local global i32 0, align 4
@MAX_TAG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"seek failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64 (i32*)*, %struct.TYPE_5__**, i32*)* @SkipTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SkipTag(i32* %0, i64 (i32*)* %1, %struct.TYPE_5__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64 (i32*)*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 (i32*)* %1, i64 (i32*)** %7, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @vlc_stream_Tell(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i64 (i32*)*, i64 (i32*)** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 %15(i32* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAX_TAGS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @MAX_TAG_SIZE, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call %struct.TYPE_5__* @vlc_stream_Block(i32* %30, i64 %31)
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  br label %44

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %42, %37 ], [ -1, %43 ]
  store i32 %45, i32* %12, align 4
  br label %50

46:                                               ; preds = %25, %20
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @vlc_stream_Read(i32* %47, i32* null, i64 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %44
  %51 = load i32, i32* %12, align 4
  %52 = load i64, i64* %11, align 8
  %53 = trunc i64 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @block_ChainRelease(%struct.TYPE_5__* %57)
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @vlc_stream_Seek(i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @msg_Err(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %65
  store i32 0, i32* %5, align 4
  br label %84

74:                                               ; preds = %55
  br label %79

75:                                               ; preds = %50
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %79, %4
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @vlc_stream_Tell(i32*) #1

declare dso_local %struct.TYPE_5__* @vlc_stream_Block(i32*, i64) #1

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i64) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_5__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_stream_Seek(i32*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
