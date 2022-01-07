; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayHeapPush.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayHeapPush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }

@SUBSDELAY_MAX_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, %struct.TYPE_14__*, i32*)* @SubsdelayHeapPush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @SubsdelayHeapPush(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SUBSDELAY_MAX_ENTRIES, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %90

17:                                               ; preds = %3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_13__* @SubsdelayEntryCreate(%struct.TYPE_14__* %18, i32* %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %90

24:                                               ; preds = %17
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %10, align 8
  br label %28

28:                                               ; preds = %44, %24
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %48

42:                                               ; preds = %31
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %8, align 8
  br label %44

44:                                               ; preds = %42
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %10, align 8
  br label %28

48:                                               ; preds = %41, %28
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %51
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i64 %69, i64* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %64, %51
  br label %86

77:                                               ; preds = %48
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %85, align 8
  br label %86

86:                                               ; preds = %77, %76
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = call i32 @SubsdelayRebuildList(%struct.TYPE_12__* %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %4, align 8
  br label %90

90:                                               ; preds = %86, %23, %16
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %91
}

declare dso_local %struct.TYPE_13__* @SubsdelayEntryCreate(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @SubsdelayRebuildList(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
