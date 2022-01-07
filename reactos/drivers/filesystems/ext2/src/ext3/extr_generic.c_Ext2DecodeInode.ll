; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_Ext2DecodeInode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_Ext2DecodeInode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ext3_inode = type { i32, i32, i64, i32*, i32, i32, i32, i32, %struct.TYPE_4__, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ext2DecodeInode(%struct.inode* %0, %struct.ext3_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext3_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ext3_inode* %1, %struct.ext3_inode** %4, align 8
  %5 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %6 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 15
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %11 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %10, i32 0, i32 15
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %16 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %21 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %26 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %31 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %36 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %41 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @S_ISREG(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %2
  %46 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %47 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 32
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %45, %2
  %56 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %57 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %62 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 32
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %73 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %78 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %83 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %88 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = call i32 @ext3_inode_blocks(%struct.ext3_inode* %92, %struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %102 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = call i32 @memcpy(i32* %100, i32* %104, i32 60)
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE, align 4
  %110 = call i64 @EXT3_HAS_RO_COMPAT_FEATURE(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %55
  %113 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %114 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.inode*, %struct.inode** %3, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %121

118:                                              ; preds = %55
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %112
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ext3_inode_blocks(%struct.ext3_inode*, %struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @EXT3_HAS_RO_COMPAT_FEATURE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
