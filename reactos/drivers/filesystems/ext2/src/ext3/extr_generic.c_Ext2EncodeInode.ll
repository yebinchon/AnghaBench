; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_Ext2EncodeInode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_Ext2EncodeInode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_inode = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ext2EncodeInode(%struct.ext3_inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ext3_inode*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.ext3_inode* %0, %struct.ext3_inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %9 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %8, i32 0, i32 15
  store i32 %7, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %14 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %19 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %24 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %29 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %34 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %41 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISREG(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %2
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 32
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %55 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %47, %2
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %63 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 32
  %68 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %69 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %78 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %83 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %88 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %93 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %98 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = call i32 @ext3_inode_blocks_set(%struct.ext3_inode* %103, %struct.inode* %104)
  %106 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %107 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = call i32 @memcpy(i32* %109, i32* %113, i32 120)
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_EXTRA_ISIZE, align 4
  %119 = call i64 @EXT3_HAS_RO_COMPAT_FEATURE(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %56
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ext3_inode*, %struct.ext3_inode** %3, align 8
  %126 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %56
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ext3_inode_blocks_set(%struct.ext3_inode*, %struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @EXT3_HAS_RO_COMPAT_FEATURE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
