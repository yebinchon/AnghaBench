; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_edgedetection.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_edgedetection.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }

@filter_video_edge_cbs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not allocate filter chain\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"adjust{saturation=0}\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not append filter to filter chain\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"gaussianblur{deviation=1}\00", align 1
@Filter = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32* @filter_video_edge_cbs, i32** %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32* @filter_chain_NewVideo(%struct.TYPE_6__* %13, i32 1, %struct.TYPE_7__* %6)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = call i32 @msg_Err(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %1
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = call i32 @filter_chain_Reset(i32* %22, i32* %24, i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @filter_chain_AppendFromString(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @msg_Err(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @filter_chain_Delete(i32* %35)
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %21
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @filter_chain_AppendFromString(i32* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 @msg_Err(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @filter_chain_Delete(i32* %46)
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %38
  %50 = load i32, i32* @Filter, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %43, %32, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32* @filter_chain_NewVideo(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @filter_chain_Reset(i32*, i32*, i32*) #1

declare dso_local i32 @filter_chain_AppendFromString(i32*, i8*) #1

declare dso_local i32 @filter_chain_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
