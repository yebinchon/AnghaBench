; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_Sort.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_vlc_playlist_Sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64, i32** }
%struct.vlc_playlist_sort_criterion = type { i32 }
%struct.vlc_playlist_item_meta = type { i32* }
%struct.sort_request = type { i64, %struct.vlc_playlist_sort_criterion* }
%struct.vlc_playlist_state = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@compare_meta = common dso_local global i32 0, align 4
@on_items_reset = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_playlist_Sort(%struct.TYPE_13__* %0, %struct.vlc_playlist_sort_criterion* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.vlc_playlist_sort_criterion*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vlc_playlist_item_meta**, align 8
  %10 = alloca %struct.sort_request, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vlc_playlist_state, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.vlc_playlist_sort_criterion* %1, %struct.vlc_playlist_sort_criterion** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = call i32 @vlc_playlist_AssertLocked(%struct.TYPE_13__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %27, i64 %31
  %33 = load i32*, i32** %32, align 8
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi i32* [ %33, %23 ], [ null, %34 ]
  store i32* %36, i32** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call %struct.vlc_playlist_item_meta** @vlc_playlist_NewMetaArray(%struct.TYPE_13__* %37, %struct.vlc_playlist_sort_criterion* %38, i64 %39)
  store %struct.vlc_playlist_item_meta** %40, %struct.vlc_playlist_item_meta*** %9, align 8
  %41 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %9, align 8
  %42 = icmp ne %struct.vlc_playlist_item_meta** %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %131

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.sort_request, %struct.sort_request* %10, i32 0, i32 0
  %51 = load %struct.vlc_playlist_sort_criterion*, %struct.vlc_playlist_sort_criterion** %6, align 8
  %52 = ptrtoint %struct.vlc_playlist_sort_criterion* %51 to i64
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.sort_request, %struct.sort_request* %10, i32 0, i32 1
  %54 = load i64, i64* %7, align 8
  %55 = inttoptr i64 %54 to %struct.vlc_playlist_sort_criterion*
  store %struct.vlc_playlist_sort_criterion* %55, %struct.vlc_playlist_sort_criterion** %53, align 8
  %56 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %9, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @compare_meta, align 4
  %62 = call i32 @vlc_qsort(%struct.vlc_playlist_item_meta** %56, i64 %60, i32 8, i32 %61, %struct.sort_request* %10)
  store i64 0, i64* %11, align 8
  br label %63

63:                                               ; preds = %83, %49
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %9, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %71, i64 %72
  %74 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %73, align 8
  %75 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  store i32* %76, i32** %82, align 8
  br label %83

83:                                               ; preds = %70
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %63

86:                                               ; preds = %63
  %87 = load %struct.vlc_playlist_item_meta**, %struct.vlc_playlist_item_meta*** %9, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @vlc_playlist_DeleteMetaArray(%struct.vlc_playlist_item_meta** %87, i64 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %86
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = call i32 @vlc_playlist_state_Save(%struct.TYPE_13__* %96, %struct.vlc_playlist_state* %12)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @vlc_playlist_IndexOf(%struct.TYPE_13__* %98, i32* %99)
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_13__* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_13__* %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %95, %86
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = load i32, i32* @on_items_reset, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @vlc_playlist_Notify(%struct.TYPE_13__* %113, i32 %114, i32** %118, i64 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %112
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_13__* %127, %struct.vlc_playlist_state* %12)
  br label %129

129:                                              ; preds = %126, %112
  %130 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %47
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_playlist_AssertLocked(%struct.TYPE_13__*) #1

declare dso_local %struct.vlc_playlist_item_meta** @vlc_playlist_NewMetaArray(%struct.TYPE_13__*, %struct.vlc_playlist_sort_criterion*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_qsort(%struct.vlc_playlist_item_meta**, i64, i32, i32, %struct.sort_request*) #1

declare dso_local i32 @vlc_playlist_DeleteMetaArray(%struct.vlc_playlist_item_meta**, i64) #1

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_13__*, %struct.vlc_playlist_state*) #1

declare dso_local i64 @vlc_playlist_IndexOf(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_13__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_13__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_13__*, i32, i32**, i64) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_13__*, %struct.vlc_playlist_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
