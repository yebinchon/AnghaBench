; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_inode_csum_verify.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_inode_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ext2_inode_large = type { i64, i32, i32 }

@EXT2_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@EXT4_INODE_CSUM_HI_EXTRA_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_inode_csum_verify(%struct.TYPE_4__* %0, i32 %1, %struct.ext2_inode_large* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_inode_large*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_inode_large* %2, %struct.ext2_inode_large** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ext2fs_has_feature_metadata_csum(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %88

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @EXT2_INODE_SIZE(i32 %24)
  %26 = load i64, i64* @EXT2_GOOD_OLD_INODE_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %30 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EXT4_INODE_CSUM_HI_EXTRA_END, align 8
  %33 = icmp sge i64 %31, %32
  br label %34

34:                                               ; preds = %28, %21
  %35 = phi i1 [ false, %21 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %38 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ext2fs_le16_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @ext2fs_inode_csum(%struct.TYPE_4__* %41, i32 %42, %struct.ext2_inode_large* %43, i32* %10, i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %88

49:                                               ; preds = %34
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %54 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ext2fs_le16_to_cpu(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %64

61:                                               ; preds = %49
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 65535
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %88

69:                                               ; preds = %64
  %70 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %71 = bitcast %struct.ext2_inode_large* %70 to i8*
  store i8* %71, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %82, %69
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %74, 4
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i8*, i8** %13, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %88

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %13, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %72

87:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %80, %68, %48, %20
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @EXT2_INODE_SIZE(i32) #1

declare dso_local i32 @ext2fs_le16_to_cpu(i32) #1

declare dso_local i64 @ext2fs_inode_csum(%struct.TYPE_4__*, i32, %struct.ext2_inode_large*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
