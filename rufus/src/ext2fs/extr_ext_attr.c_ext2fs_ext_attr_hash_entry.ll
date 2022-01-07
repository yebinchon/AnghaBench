; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_ext_attr_hash_entry.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_ext_attr_hash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_ext_attr_entry = type { i32, i64, i32 }

@NAME_HASH_SHIFT = common dso_local global i32 0, align 4
@EXT2_EXT_ATTR_ROUND = common dso_local global i32 0, align 4
@EXT2_EXT_ATTR_PAD_BITS = common dso_local global i32 0, align 4
@VALUE_HASH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_ext_attr_hash_entry(%struct.ext2_ext_attr_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.ext2_ext_attr_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ext2_ext_attr_entry* %0, %struct.ext2_ext_attr_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %3, align 8
  %10 = bitcast %struct.ext2_ext_attr_entry* %9 to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 24
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %3, align 8
  %15 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 32, %24
  %26 = trunc i64 %25 to i32
  %27 = ashr i32 %22, %26
  %28 = xor i32 %21, %27
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = xor i32 %28, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %3, align 8
  %39 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %3, align 8
  %44 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %8, align 8
  %50 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %3, align 8
  %51 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @EXT2_EXT_ATTR_ROUND, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @EXT2_EXT_ATTR_PAD_BITS, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %76, %47
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 32, %66
  %68 = trunc i64 %67 to i32
  %69 = ashr i32 %64, %68
  %70 = xor i32 %63, %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load i32, i32* %71, align 4
  %74 = call i32 @ext2fs_le32_to_cpu(i32 %73)
  %75 = xor i32 %70, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %7, align 4
  br label %57

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %42, %37
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ext2fs_le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
