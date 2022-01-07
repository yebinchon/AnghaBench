; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_compute_hash.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_compute_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_header = type { i32 }
%struct.ext4_xattr_entry = type { i32, i64, i64, i32, i32 }

@NAME_HASH_SHIFT = common dso_local global i32 0, align 4
@EXT4_XATTR_ROUND = common dso_local global i32 0, align 4
@EXT4_XATTR_PAD_BITS = common dso_local global i32 0, align 4
@VALUE_HASH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_xattr_header*, %struct.ext4_xattr_entry*)* @ext4_xattr_compute_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_compute_hash(%struct.ext4_xattr_header* %0, %struct.ext4_xattr_entry* %1) #0 {
  %3 = alloca %struct.ext4_xattr_header*, align 8
  %4 = alloca %struct.ext4_xattr_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ext4_xattr_header* %0, %struct.ext4_xattr_header** %3, align 8
  store %struct.ext4_xattr_entry* %1, %struct.ext4_xattr_entry** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %10 = call i8* @EXT4_XATTR_NAME(%struct.ext4_xattr_entry* %9)
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %14 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NAME_HASH_SHIFT, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 32, %23
  %25 = trunc i64 %24 to i32
  %26 = ashr i32 %21, %25
  %27 = xor i32 %20, %26
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = xor i32 %27, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %38 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %36
  %42 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %43 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %41
  %47 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %3, align 8
  %48 = bitcast %struct.ext4_xattr_header* %47 to i8*
  %49 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %50 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %8, align 8
  %56 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %57 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @le32_to_cpu(i64 %58)
  %60 = load i32, i32* @EXT4_XATTR_ROUND, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @EXT4_XATTR_PAD_BITS, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %84, %46
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @VALUE_HASH_SHIFT, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 32, %73
  %75 = trunc i64 %74 to i32
  %76 = ashr i32 %71, %75
  %77 = xor i32 %70, %76
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  %80 = load i32, i32* %78, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 @le32_to_cpu(i64 %81)
  %83 = xor i32 %77, %82
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %7, align 4
  br label %64

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87, %41, %36
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %4, align 8
  %92 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  ret void
}

declare dso_local i8* @EXT4_XATTR_NAME(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
