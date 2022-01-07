; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_hashmap.c_ext2fs_hashmap_free.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_hashmap.c_ext2fs_hashmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_hashmap = type { i64, i32, i32 (i32)*, %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** }
%struct.ext2fs_hashmap_entry = type { i64, i32, i32 (i32)*, %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_hashmap_free(%struct.ext2fs_hashmap* %0) #0 {
  %2 = alloca %struct.ext2fs_hashmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ext2fs_hashmap_entry*, align 8
  %5 = alloca %struct.ext2fs_hashmap_entry*, align 8
  store %struct.ext2fs_hashmap* %0, %struct.ext2fs_hashmap** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %44, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %2, align 8
  %9 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %6
  %13 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %2, align 8
  %14 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %13, i32 0, i32 4
  %15 = load %struct.ext2fs_hashmap**, %struct.ext2fs_hashmap*** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %15, i64 %16
  %18 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %17, align 8
  %19 = bitcast %struct.ext2fs_hashmap* %18 to %struct.ext2fs_hashmap_entry*
  store %struct.ext2fs_hashmap_entry* %19, %struct.ext2fs_hashmap_entry** %4, align 8
  br label %20

20:                                               ; preds = %39, %12
  %21 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %4, align 8
  %22 = icmp ne %struct.ext2fs_hashmap_entry* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %4, align 8
  %25 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %24, i32 0, i32 3
  %26 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %25, align 8
  store %struct.ext2fs_hashmap_entry* %26, %struct.ext2fs_hashmap_entry** %5, align 8
  %27 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %2, align 8
  %28 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %27, i32 0, i32 2
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %2, align 8
  %33 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %32, i32 0, i32 2
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %4, align 8
  %36 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %4, align 8
  %41 = call i32 @free(%struct.ext2fs_hashmap_entry* %40)
  %42 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %5, align 8
  store %struct.ext2fs_hashmap_entry* %42, %struct.ext2fs_hashmap_entry** %4, align 8
  br label %20

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %6

47:                                               ; preds = %6
  %48 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %2, align 8
  %49 = bitcast %struct.ext2fs_hashmap* %48 to %struct.ext2fs_hashmap_entry*
  %50 = call i32 @free(%struct.ext2fs_hashmap_entry* %49)
  ret void
}

declare dso_local i32 @free(%struct.ext2fs_hashmap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
