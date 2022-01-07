; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemsMoved.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemsMoved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.vlc_playlist_state = type { i32 }

@on_items_moved = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64, i64)* @vlc_playlist_ItemsMoved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_ItemsMoved(%struct.TYPE_8__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlc_playlist_state, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = call i32 @vlc_playlist_state_Save(%struct.TYPE_8__* %11, %struct.vlc_playlist_state* %9)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %106

17:                                               ; preds = %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %17
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %36, %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %66

45:                                               ; preds = %29, %25
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %47, %48
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %53, %54
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  br label %65

65:                                               ; preds = %57, %51, %45
  br label %66

66:                                               ; preds = %65, %35
  br label %105

67:                                               ; preds = %17
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %73, %74
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %78, %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  br label %104

87:                                               ; preds = %71, %67
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp uge i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  br label %103

103:                                              ; preds = %95, %91, %87
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_8__* %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_8__* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = load i32, i32* @on_items_moved, align 4
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @vlc_playlist_Notify(%struct.TYPE_8__* %115, i32 %116, i64 %117, i64 %118, i64 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_8__* %121, %struct.vlc_playlist_state* %9)
  ret void
}

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_8__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_8__*, i32, i64, i64, i64) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_8__*, %struct.vlc_playlist_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
