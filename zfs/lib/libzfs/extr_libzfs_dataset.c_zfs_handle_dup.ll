; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_handle_dup.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_handle_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @zfs_handle_dup(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call %struct.TYPE_6__* @calloc(i32 1, i32 72)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %131

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlcpy(i32 %22, i32 %25, i32 4)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %9
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  %52 = call i64 @nvlist_dup(i32* %49, i32** %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @no_memory(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call i32 @zfs_close(%struct.TYPE_6__* %59)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %131

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %9
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = call i64 @nvlist_dup(i32* %70, i32** %72, i32 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @no_memory(i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = call i32 @zfs_close(%struct.TYPE_6__* %80)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %131

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = call i64 @nvlist_dup(i32* %91, i32** %93, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @no_memory(i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = call i32 @zfs_close(%struct.TYPE_6__* %101)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %131

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %83
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %104
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32* @zfs_strdup(i32 %117, i32* %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i32* %121, i32** %123, align 8
  br label %124

124:                                              ; preds = %114, %104
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %130, %struct.TYPE_6__** %2, align 8
  br label %131

131:                                              ; preds = %124, %96, %75, %54, %8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %132
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i32 @no_memory(i32) #1

declare dso_local i32 @zfs_close(%struct.TYPE_6__*) #1

declare dso_local i32* @zfs_strdup(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
