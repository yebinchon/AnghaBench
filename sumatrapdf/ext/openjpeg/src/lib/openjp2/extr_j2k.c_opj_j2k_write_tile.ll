; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_write_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_write_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Error while opj_j2k_pre_write_tile with tile index = %d\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error allocating tile component data.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Size mismatch between tile data and sent data.\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Error while opj_j2k_post_write_tile with tile index = %d\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_j2k_write_tile(%struct.TYPE_12__* %0, i64 %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i32 @opj_j2k_pre_write_tile(%struct.TYPE_12__* %16, i64 %17, i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* @EVT_ERROR, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %23, i32 %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %27, i32* %7, align 4
  br label %91

28:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %30, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @opj_alloc_tile_component_data(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %39
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @EVT_ERROR, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %55, i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %58, i32* %7, align 4
  br label %91

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %14, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %14, align 8
  br label %29

63:                                               ; preds = %29
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @opj_tcd_copy_tile_data(%struct.TYPE_13__* %66, i32* %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* @EVT_ERROR, align 4
  %74 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %72, i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %75, i32* %7, align 4
  br label %91

76:                                               ; preds = %63
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @opj_j2k_post_write_tile(%struct.TYPE_12__* %77, i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* @EVT_ERROR, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %83, i32 %84, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %87, i32* %7, align 4
  br label %91

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %82, %71, %54, %22
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @opj_j2k_pre_write_tile(%struct.TYPE_12__*, i64, i32*, i32*) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i32 @opj_alloc_tile_component_data(i32*) #1

declare dso_local i32 @opj_tcd_copy_tile_data(%struct.TYPE_13__*, i32*, i64) #1

declare dso_local i32 @opj_j2k_post_write_tile(%struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
