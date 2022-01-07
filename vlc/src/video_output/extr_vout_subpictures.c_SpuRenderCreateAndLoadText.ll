; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_SpuRenderCreateAndLoadText.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_SpuRenderCreateAndLoadText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"spu text\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@spu_get_attachments = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"text renderer\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"text-renderer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*)* @SpuRenderCreateAndLoadText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @SpuRenderCreateAndLoadText(i32* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_11__* @vlc_custom_create(i32* %5, i32 48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %55

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32* %11, i32** %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load i32, i32* @VIDEO_ES, align 4
  %18 = call i32 @es_format_Init(%struct.TYPE_12__* %16, i32 %17, i32 0)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* @VIDEO_ES, align 4
  %22 = call i32 @es_format_Init(%struct.TYPE_12__* %20, i32 %21, i32 0)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i32 32, i32* %26, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i32 32, i32* %34, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store i32 32, i32* %38, align 8
  %39 = load i32, i32* @spu_get_attachments, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = call i32 @module_need_var(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %10
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = call i32 @vlc_object_delete(%struct.TYPE_11__* %51)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %55

53:                                               ; preds = %10
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %2, align 8
  br label %55

55:                                               ; preds = %53, %50, %9
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %56
}

declare dso_local %struct.TYPE_11__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @module_need_var(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
