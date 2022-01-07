; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_create_new_leaf.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_create_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, i32, i32, %struct.ext4_ext_path**, %struct.ext4_extent*)* @ext4_ext_create_new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_create_new_leaf(i8* %0, i32* %1, %struct.inode* %2, i32 %3, i32 %4, %struct.ext4_ext_path** %5, %struct.ext4_extent* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_ext_path**, align 8
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca %struct.ext4_ext_path*, align 8
  %16 = alloca %struct.ext4_ext_path*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ext4_ext_path** %5, %struct.ext4_ext_path*** %13, align 8
  store %struct.ext4_extent* %6, %struct.ext4_extent** %14, align 8
  %20 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %13, align 8
  %21 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %20, align 8
  store %struct.ext4_ext_path* %21, %struct.ext4_ext_path** %15, align 8
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %122, %7
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i32 @ext_depth(%struct.inode* %23)
  store i32 %24, i32* %17, align 4
  store i32 %24, i32* %18, align 4
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %26 = load i32, i32* %17, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i64 %27
  store %struct.ext4_ext_path* %28, %struct.ext4_ext_path** %16, align 8
  br label %29

29:                                               ; preds = %39, %22
  %30 = load i32, i32* %18, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %34 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path* %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %18, align 4
  %42 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i32 -1
  store %struct.ext4_ext_path* %43, %struct.ext4_ext_path** %16, align 8
  br label %29

44:                                               ; preds = %37
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %46 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %54 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @ext4_ext_split(i8* %49, i32* %50, %struct.inode* %51, i32 %52, %struct.ext4_ext_path* %53, %struct.ext4_extent* %54, i32 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %125

60:                                               ; preds = %48
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %63 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = trunc i64 %65 to i32
  %67 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %13, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %61, i32 %66, %struct.ext4_ext_path** %67, i32 %68)
  store %struct.ext4_ext_path* %69, %struct.ext4_ext_path** %15, align 8
  %70 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %71 = call i64 @IS_ERR(%struct.ext4_ext_path* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %75 = call i32 @PTR_ERR(%struct.ext4_ext_path* %74)
  store i32 %75, i32* %19, align 4
  br label %76

76:                                               ; preds = %73, %60
  br label %124

77:                                               ; preds = %44
  %78 = load i8*, i8** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @ext4_ext_grow_indepth(i8* %78, i32* %79, %struct.inode* %80, i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %125

86:                                               ; preds = %77
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %89 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %13, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %87, i32 %92, %struct.ext4_ext_path** %93, i32 %94)
  store %struct.ext4_ext_path* %95, %struct.ext4_ext_path** %15, align 8
  %96 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %97 = call i64 @IS_ERR(%struct.ext4_ext_path* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %101 = call i32 @PTR_ERR(%struct.ext4_ext_path* %100)
  store i32 %101, i32* %19, align 4
  br label %125

102:                                              ; preds = %86
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = call i32 @ext_depth(%struct.inode* %103)
  store i32 %104, i32* %17, align 4
  %105 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %105, i64 %107
  %109 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %15, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %113, i64 %115
  %117 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %112, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %102
  br label %22

123:                                              ; preds = %102
  br label %124

124:                                              ; preds = %123, %76
  br label %125

125:                                              ; preds = %124, %99, %85, %59
  %126 = load i32, i32* %19, align 4
  ret i32 %126
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_split(i8*, i32*, %struct.inode*, i32, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i32, %struct.ext4_ext_path**, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_grow_indepth(i8*, i32*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
