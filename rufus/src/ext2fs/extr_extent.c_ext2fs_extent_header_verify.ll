; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_header_verify.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_header_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_extent_header = type { i64, i32, i32, i32 }

@EXT3_EXT_MAGIC = common dso_local global i32 0, align 4
@EXT2_ET_EXTENT_HEADER_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_extent_header_verify(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext3_extent_header*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ext3_extent_header*
  store %struct.ext3_extent_header* %10, %struct.ext3_extent_header** %8, align 8
  %11 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %8, align 8
  %12 = call i32 @dbg_show_header(%struct.ext3_extent_header* %11)
  %13 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %8, align 8
  %14 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ext2fs_le16_to_cpu(i32 %15)
  %17 = load i32, i32* @EXT3_EXT_MAGIC, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EXT2_ET_EXTENT_HEADER_BAD, align 4
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %8, align 8
  %23 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ext2fs_le16_to_cpu(i32 %24)
  %26 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %8, align 8
  %27 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ext2fs_le16_to_cpu(i32 %28)
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @EXT2_ET_EXTENT_HEADER_BAD, align 4
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %21
  %34 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %8, align 8
  %35 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 4, i32* %7, align 4
  br label %40

39:                                               ; preds = %33
  store i32 4, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 24
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %43, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %8, align 8
  %49 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ext2fs_le16_to_cpu(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %40
  %55 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %8, align 8
  %56 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ext2fs_le16_to_cpu(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 2
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54, %40
  %63 = load i32, i32* @EXT2_ET_EXTENT_HEADER_BAD, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %62, %31, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @dbg_show_header(%struct.ext3_extent_header*) #1

declare dso_local i32 @ext2fs_le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
