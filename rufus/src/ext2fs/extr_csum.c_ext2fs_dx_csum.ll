; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dx_csum.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.ext2_dir_entry = type { i32 }
%struct.ext2_dx_tail = type { i8* }
%struct.ext2_inode = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, %struct.ext2_dir_entry*, i8**, i32, i32, %struct.ext2_dx_tail*)* @ext2fs_dx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_dx_csum(%struct.TYPE_4__* %0, i8* %1, %struct.ext2_dir_entry* %2, i8** %3, i32 %4, i32 %5, %struct.ext2_dx_tail* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ext2_dir_entry*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext2_dx_tail*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ext2_inode, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.ext2_dir_entry* %2, %struct.ext2_dir_entry** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ext2_dx_tail* %6, %struct.ext2_dx_tail** %15, align 8
  %22 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %23 = bitcast %struct.ext2_dir_entry* %22 to i8*
  store i8* %23, i8** %17, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %18, align 4
  %31 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %15, align 8
  %32 = getelementptr inbounds %struct.ext2_dx_tail, %struct.ext2_dx_tail* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %19, align 8
  %34 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %15, align 8
  %35 = getelementptr inbounds %struct.ext2_dx_tail, %struct.ext2_dx_tail* %34, i32 0, i32 0
  store i8* null, i8** %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @ext2fs_read_inode(%struct.TYPE_4__* %36, i8* %37, %struct.ext2_inode* %21)
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = load i64, i64* %16, align 8
  store i64 %42, i64* %8, align 8
  br label %75

43:                                               ; preds = %7
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @ext2fs_cpu_to_le32(i8* %44)
  store i8* %45, i8** %10, align 8
  %46 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %21, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @ext2fs_cpu_to_le32(i8* %47)
  store i8* %48, i8** %20, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = bitcast i8** %10 to i8*
  %53 = call i8* @ext2fs_crc32c_le(i8* %51, i8* %52, i32 8)
  %54 = load i8**, i8*** %12, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i8**, i8*** %12, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8** %20 to i8*
  %58 = call i8* @ext2fs_crc32c_le(i8* %56, i8* %57, i32 8)
  %59 = load i8**, i8*** %12, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8**, i8*** %12, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i32, i32* %18, align 4
  %64 = call i8* @ext2fs_crc32c_le(i8* %61, i8* %62, i32 %63)
  %65 = load i8**, i8*** %12, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i8**, i8*** %12, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %15, align 8
  %69 = bitcast %struct.ext2_dx_tail* %68 to i8*
  %70 = call i8* @ext2fs_crc32c_le(i8* %67, i8* %69, i32 8)
  %71 = load i8**, i8*** %12, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %15, align 8
  %74 = getelementptr inbounds %struct.ext2_dx_tail, %struct.ext2_dx_tail* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  store i64 0, i64* %8, align 8
  br label %75

75:                                               ; preds = %43, %41
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_4__*, i8*, %struct.ext2_inode*) #1

declare dso_local i8* @ext2fs_cpu_to_le32(i8*) #1

declare dso_local i8* @ext2fs_crc32c_le(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
