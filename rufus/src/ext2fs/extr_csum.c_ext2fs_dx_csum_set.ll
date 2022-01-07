; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dx_csum_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dx_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ext2_dir_entry = type { i32 }
%struct.ext2_dx_countlimit = type { i32, i32 }
%struct.ext2_dx_tail = type { i32 }
%struct.ext2_dx_entry = type { i32 }

@EXT2_ET_DIR_NO_SPACE_FOR_CSUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, %struct.ext2_dir_entry*)* @ext2fs_dx_csum_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_dx_csum_set(%struct.TYPE_5__* %0, i32 %1, %struct.ext2_dir_entry* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_dir_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext2_dx_countlimit*, align 8
  %11 = alloca %struct.ext2_dx_tail*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_dir_entry* %2, %struct.ext2_dir_entry** %7, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %17 = call i64 @__get_dx_countlimit(%struct.TYPE_5__* %15, %struct.ext2_dir_entry* %16, %struct.ext2_dx_countlimit** %10, i32* %12, i32 1)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %4, align 8
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.ext2_dx_countlimit*, %struct.ext2_dx_countlimit** %10, align 8
  %24 = getelementptr inbounds %struct.ext2_dx_countlimit, %struct.ext2_dx_countlimit* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ext2fs_le16_to_cpu(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ext2_dx_countlimit*, %struct.ext2_dx_countlimit** %10, align 8
  %28 = getelementptr inbounds %struct.ext2_dx_countlimit, %struct.ext2_dx_countlimit* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ext2fs_le16_to_cpu(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 %32, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = icmp ugt i64 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = load i64, i64* @EXT2_ET_DIR_NO_SPACE_FOR_CSUM, align 8
  store i64 %44, i64* %4, align 8
  br label %69

45:                                               ; preds = %22
  %46 = load %struct.ext2_dx_countlimit*, %struct.ext2_dx_countlimit** %10, align 8
  %47 = bitcast %struct.ext2_dx_countlimit* %46 to %struct.ext2_dx_entry*
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ext2_dx_entry, %struct.ext2_dx_entry* %47, i64 %49
  %51 = bitcast %struct.ext2_dx_entry* %50 to %struct.ext2_dx_tail*
  store %struct.ext2_dx_tail* %51, %struct.ext2_dx_tail** %11, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %11, align 8
  %58 = call i64 @ext2fs_dx_csum(%struct.TYPE_5__* %52, i32 %53, %struct.ext2_dir_entry* %54, i32* %8, i32 %55, i32 %56, %struct.ext2_dx_tail* %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %4, align 8
  br label %69

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ext2fs_cpu_to_le32(i32 %64)
  %66 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %11, align 8
  %67 = getelementptr inbounds %struct.ext2_dx_tail, %struct.ext2_dx_tail* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %63, %61, %43, %20
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i64 @__get_dx_countlimit(%struct.TYPE_5__*, %struct.ext2_dir_entry*, %struct.ext2_dx_countlimit**, i32*, i32) #1

declare dso_local i32 @ext2fs_le16_to_cpu(i32) #1

declare dso_local i64 @ext2fs_dx_csum(%struct.TYPE_5__*, i32, %struct.ext2_dir_entry*, i32*, i32, i32, %struct.ext2_dx_tail*) #1

declare dso_local i32 @ext2fs_cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
