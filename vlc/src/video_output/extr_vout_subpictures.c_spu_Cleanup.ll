; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_Cleanup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_Cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, %struct.TYPE_11__, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32* }

@SubSourceClean = common dso_local global i32 0, align 4
@SubSourceDelProxyCallbacks = common dso_local global i32 0, align 4
@SubFilterDelProxyCallbacks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @spu_Cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_Cleanup(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 14
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 14
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @FilterRelease(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 13
  %20 = call i32 @vlc_mutex_destroy(i32* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 12
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @FilterRelease(i64 %28)
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @FilterRelease(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SubSourceClean, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = call i32 @filter_chain_ForEach(i32 %43, i32 %44, %struct.TYPE_9__* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SubSourceDelProxyCallbacks, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call i32 @filter_chain_ForEach(i32 %54, i32 %55, %struct.TYPE_9__* %58)
  br label %60

60:                                               ; preds = %51, %40
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @filter_chain_Delete(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @free(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %60
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SubFilterDelProxyCallbacks, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = call i32 @filter_chain_ForEach(i32 %76, i32 %77, %struct.TYPE_9__* %80)
  br label %82

82:                                               ; preds = %73, %60
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @filter_chain_Delete(i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @free(i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = call i32 @vlc_mutex_destroy(i32* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @free(i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @free(i32 %100)
  store i64 0, i64* %4, align 8
  br label %102

102:                                              ; preds = %118, %82
  %103 = load i64, i64* %4, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %102
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i32 @spu_channel_Clean(%struct.TYPE_10__* %110, i32* %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i64, i64* %4, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %4, align 8
  br label %102

121:                                              ; preds = %102
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = call i32 @vlc_vector_destroy(%struct.TYPE_11__* %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = call i32 @vlc_mutex_destroy(i32* %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  %131 = call i32 @vlc_mutex_destroy(i32* %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  %135 = call i32 @vlc_cond_destroy(i32* %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = call i32 @vlc_cond_destroy(i32* %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = call i32 @vlc_vector_clear(i32* %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = call i32 @video_format_Clean(i32* %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = call i32 @video_format_Clean(i32* %150)
  ret void
}

declare dso_local i32 @FilterRelease(i64) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @filter_chain_ForEach(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @filter_chain_Delete(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @spu_channel_Clean(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @vlc_vector_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_vector_clear(i32*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
