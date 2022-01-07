; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_CompareMetaByKey.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_sort.c_CompareMetaByKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_item_meta = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Unknown sort key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta*, i32)* @CompareMetaByKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareMetaByKey(%struct.vlc_playlist_item_meta* %0, %struct.vlc_playlist_item_meta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_playlist_item_meta*, align 8
  %6 = alloca %struct.vlc_playlist_item_meta*, align 8
  %7 = alloca i32, align 4
  store %struct.vlc_playlist_item_meta* %0, %struct.vlc_playlist_item_meta** %5, align 8
  store %struct.vlc_playlist_item_meta* %1, %struct.vlc_playlist_item_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %121 [
    i32 130, label %9
    i32 133, label %17
    i32 136, label %25
    i32 138, label %33
    i32 137, label %41
    i32 132, label %49
    i32 135, label %57
    i32 129, label %71
    i32 134, label %85
    i32 128, label %99
    i32 131, label %107
  ]

9:                                                ; preds = %3
  %10 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %11 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %14 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CompareStrings(i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %124

17:                                               ; preds = %3
  %18 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %19 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %22 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CompareIntegers(i32 %20, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %124

25:                                               ; preds = %3
  %26 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %27 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %30 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CompareStrings(i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %124

33:                                               ; preds = %3
  %34 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %35 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %38 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CompareStrings(i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %124

41:                                               ; preds = %3
  %42 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %43 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %46 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CompareStrings(i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %124

49:                                               ; preds = %3
  %50 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %51 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %54 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CompareStrings(i32 %52, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %124

57:                                               ; preds = %3
  %58 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %59 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %62 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %65 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %68 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CompareOptionalIntegers(i32 %60, i32 %63, i32 %66, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %124

71:                                               ; preds = %3
  %72 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %73 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %76 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %79 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %82 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CompareOptionalIntegers(i32 %74, i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %124

85:                                               ; preds = %3
  %86 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %87 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %90 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %93 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %96 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CompareOptionalIntegers(i32 %88, i32 %91, i32 %94, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %124

99:                                               ; preds = %3
  %100 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %101 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %104 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @CompareStrings(i32 %102, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %124

107:                                              ; preds = %3
  %108 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %109 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %5, align 8
  %112 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %115 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vlc_playlist_item_meta*, %struct.vlc_playlist_item_meta** %6, align 8
  %118 = getelementptr inbounds %struct.vlc_playlist_item_meta, %struct.vlc_playlist_item_meta* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @CompareOptionalIntegers(i32 %110, i32 %113, i32 %116, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %124

121:                                              ; preds = %3
  %122 = call i32 @assert(i32 0)
  %123 = call i32 (...) @vlc_assert_unreachable()
  br label %124

124:                                              ; preds = %9, %17, %25, %33, %41, %49, %57, %71, %85, %99, %107, %121
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @CompareStrings(i32, i32) #1

declare dso_local i32 @CompareIntegers(i32, i32) #1

declare dso_local i32 @CompareOptionalIntegers(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
