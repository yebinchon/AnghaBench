; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ext2fs_punch_ind.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ext2fs_punch_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ext2_inode = type { i32* }

@EXT2_NDIR_BLOCKS = common dso_local global i8* null, align 8
@BLK_T_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, %struct.ext2_inode*, i8*, i64, i64)* @ext2fs_punch_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_punch_ind(%struct.TYPE_4__* %0, %struct.ext2_inode* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.ext2_inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.ext2_inode* %1, %struct.ext2_inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %13, align 8
  %20 = load i8*, i8** @EXT2_NDIR_BLOCKS, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %23 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %16, align 8
  %25 = load i8*, i8** @EXT2_NDIR_BLOCKS, align 8
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %18, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @BLK_T_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %136

31:                                               ; preds = %5
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @BLK_T_MAX, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub nsw i64 %36, %37
  %39 = add nsw i64 %38, 1
  %40 = load i64, i64* @BLK_T_MAX, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35, %31
  %43 = load i64, i64* @BLK_T_MAX, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %19, align 4
  br label %53

47:                                               ; preds = %35
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub nsw i64 %48, %49
  %51 = add nsw i64 %50, 1
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %19, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @ext2fs_get_array(i32 3, i64 %59, i8** %13)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %6, align 8
  br label %136

65:                                               ; preds = %56
  %66 = load i8*, i8** %13, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %65, %53
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %121, %67
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %128

76:                                               ; preds = %73
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %18, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i64 @ind_punch(%struct.TYPE_4__* %81, %struct.ext2_inode* %82, i8* %83, i32* %84, i32 %85, i64 %86, i32 %87, i32 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %129

93:                                               ; preds = %80
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %18, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %10, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %19, align 4
  br label %107

106:                                              ; preds = %93
  br label %128

107:                                              ; preds = %98
  store i64 0, i64* %10, align 8
  br label %112

108:                                              ; preds = %76
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %108, %107
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %16, align 8
  %117 = load i32, i32* %14, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 1, i32* %15, align 4
  store i64 1, i64* %18, align 8
  br label %120

120:                                              ; preds = %119, %112
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %18, align 8
  %127 = mul nsw i64 %126, %125
  store i64 %127, i64* %18, align 8
  br label %73

128:                                              ; preds = %106, %73
  store i64 0, i64* %12, align 8
  br label %129

129:                                              ; preds = %128, %92
  %130 = load i8*, i8** %13, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 @ext2fs_free_mem(i8** %13)
  br label %134

134:                                              ; preds = %132, %129
  %135 = load i64, i64* %12, align 8
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %134, %63, %30
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local i64 @ext2fs_get_array(i32, i64, i8**) #1

declare dso_local i64 @ind_punch(%struct.TYPE_4__*, %struct.ext2_inode*, i8*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
