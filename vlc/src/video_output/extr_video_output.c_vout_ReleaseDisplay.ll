; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_ReleaseDisplay.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_ReleaseDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32 (i32*, i32)*, i64, i32, i32*, i32*, %struct.TYPE_8__, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @vout_ReleaseDisplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vout_ReleaseDisplay(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 9
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 10
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 10
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @filter_DeleteBlend(i32* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = load i32, i32* @INT64_MAX, align 4
  %30 = call i32 @vout_FlushUnlocked(%struct.TYPE_9__* %28, i32 1, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 8
  %34 = call i32 @vlc_mutex_lock(i32* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 9
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @vout_CloseWrapper(%struct.TYPE_9__* %35, i32* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 8
  %44 = call i32 @vlc_mutex_unlock(i32* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = call i32 @ThreadDelAllFilterCallbacks(%struct.TYPE_9__* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @filter_chain_Delete(i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @filter_chain_Delete(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = call i32 @video_format_Clean(i32* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @free(i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %31
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @picture_fifo_Delete(i32* %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %70, %31
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32 (i32*, i32)*, i32 (i32*, i32)** %85, align 8
  %87 = icmp ne i32 (i32*, i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %77
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32 (i32*, i32)*, i32 (i32*, i32)** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32* null, i32 %94)
  br label %96

96:                                               ; preds = %88, %77
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @spu_Detach(i64 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store i32 (i32*, i32)* null, i32 (i32*, i32)** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = call i32 @video_format_Clean(i32* %112)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @filter_DeleteBlend(i32*) #1

declare dso_local i32 @vout_FlushUnlocked(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_CloseWrapper(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @ThreadDelAllFilterCallbacks(%struct.TYPE_9__*) #1

declare dso_local i32 @filter_chain_Delete(i32) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @picture_fifo_Delete(i32*) #1

declare dso_local i32 @spu_Detach(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
