; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dx_csum_verify.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dx_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ext2_dir_entry = type { i32 }
%struct.ext2_dx_countlimit = type { i32, i32 }
%struct.ext2_dx_tail = type { i32 }
%struct.ext2_dx_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, %struct.ext2_dir_entry*)* @ext2fs_dx_csum_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_dx_csum_verify(%struct.TYPE_5__* %0, i32 %1, %struct.ext2_dir_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_dir_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext2_dx_countlimit*, align 8
  %11 = alloca %struct.ext2_dx_tail*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_dir_entry* %2, %struct.ext2_dir_entry** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %17 = call i64 @__get_dx_countlimit(%struct.TYPE_5__* %15, %struct.ext2_dir_entry* %16, %struct.ext2_dx_countlimit** %10, i32* %12, i32 1)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %68

21:                                               ; preds = %3
  %22 = load %struct.ext2_dx_countlimit*, %struct.ext2_dx_countlimit** %10, align 8
  %23 = getelementptr inbounds %struct.ext2_dx_countlimit, %struct.ext2_dx_countlimit* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ext2fs_le16_to_cpu(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.ext2_dx_countlimit*, %struct.ext2_dx_countlimit** %10, align 8
  %27 = getelementptr inbounds %struct.ext2_dx_countlimit, %struct.ext2_dx_countlimit* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ext2fs_le16_to_cpu(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %31, %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 4
  %41 = icmp ugt i64 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %68

43:                                               ; preds = %21
  %44 = load %struct.ext2_dx_countlimit*, %struct.ext2_dx_countlimit** %10, align 8
  %45 = bitcast %struct.ext2_dx_countlimit* %44 to %struct.ext2_dx_entry*
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ext2_dx_entry, %struct.ext2_dx_entry* %45, i64 %47
  %49 = bitcast %struct.ext2_dx_entry* %48 to %struct.ext2_dx_tail*
  store %struct.ext2_dx_tail* %49, %struct.ext2_dx_tail** %11, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %11, align 8
  %56 = call i64 @ext2fs_dx_csum(%struct.TYPE_5__* %50, i32 %51, %struct.ext2_dir_entry* %52, i64* %8, i32 %53, i32 %54, %struct.ext2_dx_tail* %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %68

60:                                               ; preds = %43
  %61 = load %struct.ext2_dx_tail*, %struct.ext2_dx_tail** %11, align 8
  %62 = getelementptr inbounds %struct.ext2_dx_tail, %struct.ext2_dx_tail* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ext2fs_le32_to_cpu(i32 %63)
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %60, %59, %42, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @__get_dx_countlimit(%struct.TYPE_5__*, %struct.ext2_dir_entry*, %struct.ext2_dx_countlimit**, i32*, i32) #1

declare dso_local i32 @ext2fs_le16_to_cpu(i32) #1

declare dso_local i64 @ext2fs_dx_csum(%struct.TYPE_5__*, i32, %struct.ext2_dir_entry*, i64*, i32, i32, %struct.ext2_dx_tail*) #1

declare dso_local i64 @ext2fs_le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
