; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_segment.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"unsupported segment type: (%04x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @decode_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_segment(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @bs_read(i32* %12, i32 8)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @bs_read(i32* %14, i32 16)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @bs_read(i32* %16, i32 16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 8, %31
  %33 = call i32 @bs_skip(i32* %30, i32 %32)
  br label %101

34:                                               ; preds = %23, %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 130
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 8, %53
  %55 = call i32 @bs_skip(i32* %52, i32 %54)
  br label %101

56:                                               ; preds = %45, %42, %34
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %93 [
    i32 130, label %58
    i32 129, label %63
    i32 134, label %68
    i32 131, label %73
    i32 133, label %78
    i32 132, label %83
    i32 128, label %88
  ]

58:                                               ; preds = %56
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @decode_page_composition(%struct.TYPE_11__* %59, i32* %60, i32 %61)
  br label %101

63:                                               ; preds = %56
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @decode_region_composition(%struct.TYPE_11__* %64, i32* %65, i32 %66)
  br label %101

68:                                               ; preds = %56
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @decode_clut(%struct.TYPE_11__* %69, i32* %70, i32 %71)
  br label %101

73:                                               ; preds = %56
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @decode_object(%struct.TYPE_11__* %74, i32* %75, i32 %76)
  br label %101

78:                                               ; preds = %56
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @decode_display_definition(%struct.TYPE_11__* %79, i32* %80, i32 %81)
  br label %101

83:                                               ; preds = %56
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 8, %85
  %87 = call i32 @bs_skip(i32* %84, i32 %86)
  br label %101

88:                                               ; preds = %56
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 8, %90
  %92 = call i32 @bs_skip(i32* %89, i32 %91)
  br label %101

93:                                               ; preds = %56
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @msg_Warn(%struct.TYPE_11__* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 8, %98
  %100 = call i32 @bs_skip(i32* %97, i32 %99)
  br label %101

101:                                              ; preds = %29, %51, %93, %88, %83, %78, %73, %68, %63, %58
  ret void
}

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i32 @decode_page_composition(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @decode_region_composition(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @decode_clut(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @decode_object(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @decode_display_definition(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
