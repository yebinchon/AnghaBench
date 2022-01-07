; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ind_punch.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ind_punch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.ext2_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.ext2_inode*, i8*, i64*, i32, i32, i32, i32)* @ind_punch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ind_punch(%struct.TYPE_7__* %0, %struct.ext2_inode* %1, i8* %2, i64* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.ext2_inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store %struct.ext2_inode* %1, %struct.ext2_inode** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @EXT2_BLOCK_SIZE_BITS(i32 %27)
  %29 = sub nsw i32 %28, 2
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %22, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %35

35:                                               ; preds = %134, %8
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %142

39:                                               ; preds = %35
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %142

46:                                               ; preds = %39
  %47 = load i64*, i64** %13, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %22, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %46
  br label %134

57:                                               ; preds = %50
  %58 = load i64*, i64** %13, align 8
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %19, align 8
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %127

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = load i64, i64* %19, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @ext2fs_read_ind_block(%struct.TYPE_7__* %63, i64 %64, i8* %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %9, align 4
  br label %147

71:                                               ; preds = %62
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %21, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %21, align 4
  %78 = sub nsw i32 %76, %77
  br label %80

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 0, %79 ]
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %24, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = load %struct.ext2_inode*, %struct.ext2_inode** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i8*, i8** %12, align 8
  %92 = bitcast i8* %91 to i64*
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i64, i64* %24, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %21, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 2
  %104 = call i32 @ind_punch(%struct.TYPE_7__* %83, %struct.ext2_inode* %84, i8* %90, i64* %92, i32 %94, i32 %96, i32 %99, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %80
  %108 = load i32, i32* %18, align 4
  store i32 %108, i32* %9, align 4
  br label %147

109:                                              ; preds = %80
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @ext2fs_write_ind_block(%struct.TYPE_7__* %110, i64 %111, i8* %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %9, align 4
  br label %147

118:                                              ; preds = %109
  %119 = load i8*, i8** %12, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @check_zero_block(i8* %119, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %134

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %57
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = load i64, i64* %19, align 8
  %130 = call i32 @ext2fs_block_alloc_stats(%struct.TYPE_7__* %128, i64 %129, i32 -1)
  %131 = load i64*, i64** %13, align 8
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %23, align 4
  br label %134

134:                                              ; preds = %127, %125, %56
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  %137 = load i64*, i64** %13, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %138, i64** %13, align 8
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %21, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %21, align 4
  br label %35

142:                                              ; preds = %45, %35
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %144 = load %struct.ext2_inode*, %struct.ext2_inode** %11, align 8
  %145 = load i32, i32* %23, align 4
  %146 = call i32 @ext2fs_iblk_sub_blocks(%struct.TYPE_7__* %143, %struct.ext2_inode* %144, i32 %145)
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %142, %116, %107, %69
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

declare dso_local i32 @EXT2_BLOCK_SIZE_BITS(i32) #1

declare dso_local i32 @ext2fs_read_ind_block(%struct.TYPE_7__*, i64, i8*) #1

declare dso_local i32 @ext2fs_write_ind_block(%struct.TYPE_7__*, i64, i8*) #1

declare dso_local i32 @check_zero_block(i8*, i32) #1

declare dso_local i32 @ext2fs_block_alloc_stats(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @ext2fs_iblk_sub_blocks(%struct.TYPE_7__*, %struct.ext2_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
