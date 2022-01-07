; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_get_next_path.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_get_next_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32)* @get_next_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_next_path(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = call i32 @assert_locked(%struct.TYPE_4__* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @libvlc_media_list_count(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32* null, i32** %3, align 8
  br label %128

24:                                               ; preds = %17
  %25 = call i32* @libvlc_media_list_path_with_root_index(i32 0)
  store i32* %25, i32** %3, align 8
  br label %128

26:                                               ; preds = %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32* @libvlc_media_list_sublist_at_path(i32* %29, i32* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @libvlc_media_list_count(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @libvlc_media_list_release(i32* %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32* @libvlc_media_list_path_copy_by_appending(i32* %46, i32 0)
  store i32* %47, i32** %3, align 8
  br label %128

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32* @libvlc_media_list_parentlist_at_path(i32* %52, i32* %55)
  store i32* %56, i32** %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @libvlc_media_list_path_depth(i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %49
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63, %49
  store i32* null, i32** %3, align 8
  br label %128

67:                                               ; preds = %63
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32* @libvlc_media_list_path_copy(i32* %70)
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %107, %67
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @libvlc_media_list_count(i32* %86)
  %88 = icmp sge i32 %85, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %79
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 0, i32* %99, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 -1, i32* %101, align 4
  br label %124

102:                                              ; preds = %94
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @free(i32* %103)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @libvlc_media_list_release(i32* %105)
  store i32* null, i32** %3, align 8
  br label %128

107:                                              ; preds = %89
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 -1, i32* %111, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = call i32* @libvlc_media_list_parentlist_at_path(i32* %121, i32* %122)
  store i32* %123, i32** %7, align 8
  br label %79

124:                                              ; preds = %97, %79
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @libvlc_media_list_release(i32* %125)
  %127 = load i32*, i32** %6, align 8
  store i32* %127, i32** %3, align 8
  br label %128

128:                                              ; preds = %124, %102, %66, %43, %24, %23
  %129 = load i32*, i32** %3, align 8
  ret i32* %129
}

declare dso_local i32 @assert_locked(%struct.TYPE_4__*) #1

declare dso_local i32 @libvlc_media_list_count(i32*) #1

declare dso_local i32* @libvlc_media_list_path_with_root_index(i32) #1

declare dso_local i32* @libvlc_media_list_sublist_at_path(i32*, i32*) #1

declare dso_local i32 @libvlc_media_list_release(i32*) #1

declare dso_local i32* @libvlc_media_list_path_copy_by_appending(i32*, i32) #1

declare dso_local i32* @libvlc_media_list_parentlist_at_path(i32*, i32*) #1

declare dso_local i32 @libvlc_media_list_path_depth(i32*) #1

declare dso_local i32* @libvlc_media_list_path_copy(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
