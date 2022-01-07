; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_next_allocated_block.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_next_allocated_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_ext_path*, align 8
  %4 = alloca i32, align 4
  store %struct.ext4_ext_path* %0, %struct.ext4_ext_path** %3, align 8
  %5 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %6 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %12 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %16, i32* %2, align 4
  br label %94

17:                                               ; preds = %10, %1
  br label %18

18:                                               ; preds = %89, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %24 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %28, i64 %30
  %32 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %27
  %36 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %36, i64 %38
  %40 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i64 %44
  %46 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_4__* @EXT_LAST_EXTENT(i32 %47)
  %49 = icmp ne %struct.TYPE_4__* %41, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %35
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i64 %53
  %55 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %94

61:                                               ; preds = %35, %27
  br label %89

62:                                               ; preds = %21
  %63 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i64 %65
  %67 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %69, i64 %71
  %73 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.TYPE_3__* @EXT_LAST_INDEX(i32 %74)
  %76 = icmp ne %struct.TYPE_3__* %68, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %62
  %78 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %78, i64 %80
  %82 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %94

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %88, %61
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %4, align 4
  br label %18

92:                                               ; preds = %18
  %93 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %77, %50, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_4__* @EXT_LAST_EXTENT(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_3__* @EXT_LAST_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
