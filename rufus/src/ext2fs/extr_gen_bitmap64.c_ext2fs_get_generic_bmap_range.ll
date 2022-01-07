; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_get_generic_bmap_range.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_get_generic_bmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32, i8*)* }

@EINVAL = common dso_local global i32 0, align 4
@EXT2FS_UNMARK_ERROR = common dso_local global i32 0, align 4
@get_range_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_get_generic_bmap_range(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %10, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %64

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = call i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %23, %24
  %26 = sub i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = and i64 %27, -4294967296
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EXT2FS_UNMARK_ERROR, align 4
  %33 = call i32 @ext2fs_warn_bitmap2(i32 %31, i32 %32, i32 -1)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %64

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @ext2fs_get_generic_bitmap_range(i32 %36, i32 %39, i32 %40, i32 %41, i8* %42)
  store i32 %43, i32* %5, align 4
  br label %64

44:                                               ; preds = %18
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = call i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_8__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %5, align 4
  br label %64

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = load i32, i32* @get_range_count, align 4
  %53 = call i32 @INC_STAT(%struct.TYPE_8__* %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_8__*, i32, i32, i8*)*, i32 (%struct.TYPE_8__*, i32, i32, i8*)** %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 %58(%struct.TYPE_8__* %59, i32 %60, i32 %61, i8* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %50, %48, %35, %30, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_warn_bitmap2(i32, i32, i32) #1

declare dso_local i32 @ext2fs_get_generic_bitmap_range(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_8__*) #1

declare dso_local i32 @INC_STAT(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
