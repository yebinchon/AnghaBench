; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_find_volume_de.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_find_volume_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@VFAT_LN_ATTR = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_volume_de(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %63, %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %67

25:                                               ; preds = %23
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @cluster_start(%struct.TYPE_8__* %26, i32 %27)
  store i64 %28, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %59, %25
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = call i32 @fs_read(i64 %39, i32 4, %struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VFAT_LN_ATTR, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATTR_VOLUME, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %3, align 8
  br label %106

56:                                               ; preds = %47, %38
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %29

62:                                               ; preds = %29
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @next_cluster(%struct.TYPE_8__* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %17

67:                                               ; preds = %23
  br label %105

68:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %101, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = add i64 %78, %81
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = call i32 @fs_read(i64 %83, i32 4, %struct.TYPE_9__* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VFAT_LN_ATTR, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %75
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATTR_VOLUME, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i64, i64* %7, align 8
  store i64 %99, i64* %3, align 8
  br label %106

100:                                              ; preds = %91, %75
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %69

104:                                              ; preds = %69
  br label %105

105:                                              ; preds = %104, %67
  store i64 0, i64* %3, align 8
  br label %106

106:                                              ; preds = %105, %98, %54
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local i64 @cluster_start(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fs_read(i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @next_cluster(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
