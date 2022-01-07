; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_initialize.c_calc_reserved_gdt_blocks.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_initialize.c_calc_reserved_gdt_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @calc_reserved_gdt_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_reserved_gdt_blocks(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ext2_super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.ext2_super_block*, %struct.ext2_super_block** %10, align 8
  store %struct.ext2_super_block* %11, %struct.ext2_super_block** %3, align 8
  %12 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %13 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %16 = call i32 @EXT2_DESC_PER_BLOCK(%struct.ext2_super_block* %15)
  store i32 %16, i32* %5, align 4
  store i64 4294967295, i64* %6, align 8
  %17 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %18 = call i32 @ext2fs_blocks_count(%struct.ext2_super_block* %17)
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %20, 1024
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %25 = call i32 @ext2fs_blocks_count(%struct.ext2_super_block* %24)
  %26 = mul nsw i32 %25, 1024
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %31 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i8* @ext2fs_div_ceil(i64 %33, i32 %35)
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @ext2fs_div_ceil(i64 %38, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %40 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %50 = call i32 @EXT2_ADDR_PER_BLOCK(%struct.ext2_super_block* %49)
  %51 = icmp ugt i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %28
  %53 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %54 = call i32 @EXT2_ADDR_PER_BLOCK(%struct.ext2_super_block* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %28
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @EXT2_DESC_PER_BLOCK(%struct.ext2_super_block*) #1

declare dso_local i32 @ext2fs_blocks_count(%struct.ext2_super_block*) #1

declare dso_local i8* @ext2fs_div_ceil(i64, i32) #1

declare dso_local i32 @EXT2_ADDR_PER_BLOCK(%struct.ext2_super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
