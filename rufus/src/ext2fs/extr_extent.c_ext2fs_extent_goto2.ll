; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_goto2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_goto2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ext2fs_extent = type { i64, i64 }

@EXT2_EXTENT_ROOT = common dso_local global i32 0, align 4
@EXT2_ET_EXTENT_NO_NEXT = common dso_local global i64 0, align 8
@EXT2_ET_EXTENT_NOT_FOUND = common dso_local global i64 0, align 8
@EXT2_ET_OP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@EXT2_EXTENT_PREV_SIB = common dso_local global i32 0, align 4
@EXT2_EXTENT_NEXT_SIB = common dso_local global i32 0, align 4
@EXT2_EXTENT_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_extent_goto2(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext2fs_extent, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = load i32, i32* @EXT2_EXTENT_ROOT, align 4
  %12 = call i64 @ext2fs_extent_get(%struct.TYPE_4__* %10, i32 %11, %struct.ext2fs_extent* %8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @EXT2_ET_EXTENT_NO_NEXT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @EXT2_ET_EXTENT_NOT_FOUND, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %4, align 8
  br label %124

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @EXT2_ET_OP_NOT_SUPPORTED, align 8
  store i64 %30, i64* %4, align 8
  br label %124

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %80, %105, %123
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %32
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %50, %52
  %54 = icmp slt i64 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i64 0, i64* %4, align 8
  br label %124

56:                                               ; preds = %47, %42
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = load i32, i32* @EXT2_EXTENT_PREV_SIB, align 4
  %64 = call i64 @ext2fs_extent_get(%struct.TYPE_4__* %62, i32 %63, %struct.ext2fs_extent* %8)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* @EXT2_ET_EXTENT_NOT_FOUND, align 8
  store i64 %65, i64* %4, align 8
  br label %124

66:                                               ; preds = %56
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = load i32, i32* @EXT2_EXTENT_NEXT_SIB, align 4
  %69 = call i64 @ext2fs_extent_get(%struct.TYPE_4__* %67, i32 %68, %struct.ext2fs_extent* %8)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @EXT2_ET_EXTENT_NO_NEXT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* @EXT2_ET_EXTENT_NOT_FOUND, align 8
  store i64 %74, i64* %4, align 8
  br label %124

75:                                               ; preds = %66
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %4, align 8
  br label %124

80:                                               ; preds = %75
  br label %32

81:                                               ; preds = %32
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = load i32, i32* @EXT2_EXTENT_NEXT_SIB, align 4
  %84 = call i64 @ext2fs_extent_get(%struct.TYPE_4__* %82, i32 %83, %struct.ext2fs_extent* %8)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @EXT2_ET_EXTENT_NO_NEXT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %115

89:                                               ; preds = %81
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %4, align 8
  br label %124

94:                                               ; preds = %89
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %115

100:                                              ; preds = %94
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %32

106:                                              ; preds = %100
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = load i32, i32* @EXT2_EXTENT_PREV_SIB, align 4
  %109 = call i64 @ext2fs_extent_get(%struct.TYPE_4__* %107, i32 %108, %struct.ext2fs_extent* %8)
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i64, i64* %9, align 8
  store i64 %113, i64* %4, align 8
  br label %124

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %99, %88
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = load i32, i32* @EXT2_EXTENT_DOWN, align 4
  %118 = call i64 @ext2fs_extent_get(%struct.TYPE_4__* %116, i32 %117, %struct.ext2fs_extent* %8)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i64, i64* %9, align 8
  store i64 %122, i64* %4, align 8
  br label %124

123:                                              ; preds = %115
  br label %32

124:                                              ; preds = %121, %112, %92, %78, %73, %61, %55, %29, %21
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i64 @ext2fs_extent_get(%struct.TYPE_4__*, i32, %struct.ext2fs_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
