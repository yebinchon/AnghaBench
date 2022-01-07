; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_tables.c_flexbg_offset.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_tables.c_flexbg_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32, i32)* @flexbg_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexbg_offset(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %15, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 4
  %39 = icmp sgt i32 %32, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %6
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 4
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %40, %6
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @ext2fs_blocks_count(%struct.TYPE_8__* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_7__* %58, i32 %59, i32 %62, i32 %63, i32 %64, i32* %18)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %7, align 4
  br label %124

69:                                               ; preds = %57, %50, %47
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 %71, %72
  %74 = call i32 @ext2fs_group_first_block2(%struct.TYPE_7__* %70, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sub nsw i32 %76, 1
  %78 = or i32 %75, %77
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %69
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %85, %69
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @ext2fs_group_last_block2(%struct.TYPE_7__* %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_7__* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32* %18)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %7, align 4
  br label %124

103:                                              ; preds = %90
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_7__* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32* %18)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %18, align 4
  store i32 %112, i32* %7, align 4
  br label %124

113:                                              ; preds = %103
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_7__* %114, i32 0, i32 %115, i32 %116, i32 %117, i32* %18)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %7, align 4
  br label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %18, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %120, %111, %101, %67
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @ext2fs_blocks_count(%struct.TYPE_8__*) #1

declare dso_local i64 @ext2fs_get_free_blocks2(%struct.TYPE_7__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ext2fs_group_first_block2(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ext2fs_group_last_block2(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
