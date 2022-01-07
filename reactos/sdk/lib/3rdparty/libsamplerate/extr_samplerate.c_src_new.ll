; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_samplerate.c_src_new.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_samplerate.c_src_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SRC_ERR_NO_ERROR = common dso_local global i32 0, align 4
@SRC_ERR_BAD_CHANNEL_COUNT = common dso_local global i32 0, align 4
@SRC_ERR_MALLOC_FAILED = common dso_local global i32 0, align 4
@SRC_MODE_PROCESS = common dso_local global i32 0, align 4
@SRC_ERR_BAD_CONVERTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @src_new(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @SRC_ERR_NO_ERROR, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @SRC_ERR_BAD_CHANNEL_COUNT, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  store i32* null, i32** %4, align 8
  br label %61

24:                                               ; preds = %14
  %25 = call %struct.TYPE_5__* @calloc(i32 1, i32 8)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %8, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @SRC_ERR_MALLOC_FAILED, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  store i32* null, i32** %4, align 8
  br label %61

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @SRC_MODE_PROCESS, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @psrc_set_converter(%struct.TYPE_5__* %41, i32 %42)
  %44 = load i32, i32* @SRC_ERR_NO_ERROR, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @SRC_ERR_BAD_CONVERTER, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = call i32 @free(%struct.TYPE_5__* %53)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  br label %55

55:                                               ; preds = %52, %34
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = bitcast %struct.TYPE_5__* %56 to i32*
  %58 = call i32 @src_reset(i32* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = bitcast %struct.TYPE_5__* %59 to i32*
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %55, %33, %23
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @psrc_set_converter(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @src_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
