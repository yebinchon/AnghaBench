; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_fudge_generic_bitmap_end.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_fudge_generic_bitmap_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_fudge_generic_bitmap_end(i32 %0, i32 %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %12, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_3__* %16, i32 %17)
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %6, align 4
  br label %38

26:                                               ; preds = %5
  %27 = load i64*, i64** %11, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %11, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
