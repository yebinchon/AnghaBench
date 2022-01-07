; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_ext_attr_block_rehash.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_ext_attr_block_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_ext_attr_header = type { i32 }
%struct.ext2_ext_attr_entry = type { i32 }

@BLOCK_HASH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_ext_attr_block_rehash(%struct.ext2_ext_attr_header* %0, %struct.ext2_ext_attr_entry* %1) #0 {
  %3 = alloca %struct.ext2_ext_attr_header*, align 8
  %4 = alloca %struct.ext2_ext_attr_entry*, align 8
  %5 = alloca %struct.ext2_ext_attr_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.ext2_ext_attr_header* %0, %struct.ext2_ext_attr_header** %3, align 8
  store %struct.ext2_ext_attr_entry* %1, %struct.ext2_ext_attr_entry** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %3, align 8
  %8 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %7, i64 1
  %9 = bitcast %struct.ext2_ext_attr_header* %8 to %struct.ext2_ext_attr_entry*
  store %struct.ext2_ext_attr_entry* %9, %struct.ext2_ext_attr_entry** %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %5, align 8
  %12 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %4, align 8
  %13 = icmp ult %struct.ext2_ext_attr_entry* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %5, align 8
  %16 = call i32 @EXT2_EXT_IS_LAST_ENTRY(%struct.ext2_ext_attr_entry* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %44

21:                                               ; preds = %19
  %22 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %5, align 8
  %23 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BLOCK_HASH_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BLOCK_HASH_SHIFT, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 32, %33
  %35 = trunc i64 %34 to i32
  %36 = ashr i32 %31, %35
  %37 = xor i32 %30, %36
  %38 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %5, align 8
  %39 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %37, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %5, align 8
  %43 = call %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry* %42)
  store %struct.ext2_ext_attr_entry* %43, %struct.ext2_ext_attr_entry** %5, align 8
  br label %10

44:                                               ; preds = %26, %19
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %3, align 8
  %47 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @EXT2_EXT_IS_LAST_ENTRY(%struct.ext2_ext_attr_entry*) #1

declare dso_local %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
