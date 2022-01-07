; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_hashmap.c_ext2fs_hashmap_lookup.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_hashmap.c_ext2fs_hashmap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_hashmap = type { i64 (i8*, i64)*, i64, %struct.ext2fs_hashmap_entry** }
%struct.ext2fs_hashmap_entry = type { i64, i8*, i32, %struct.ext2fs_hashmap_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ext2fs_hashmap_lookup(%struct.ext2fs_hashmap* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ext2fs_hashmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext2fs_hashmap_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.ext2fs_hashmap* %0, %struct.ext2fs_hashmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %5, align 8
  %11 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %10, i32 0, i32 0
  %12 = load i64 (i8*, i64)*, i64 (i8*, i64)** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 %12(i8* %13, i64 %14)
  %16 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %5, align 8
  %17 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = urem i64 %15, %18
  store i64 %19, i64* %9, align 8
  %20 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %5, align 8
  %21 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %20, i32 0, i32 2
  %22 = load %struct.ext2fs_hashmap_entry**, %struct.ext2fs_hashmap_entry*** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %22, i64 %23
  %25 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %24, align 8
  store %struct.ext2fs_hashmap_entry* %25, %struct.ext2fs_hashmap_entry** %8, align 8
  br label %26

26:                                               ; preds = %48, %3
  %27 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %8, align 8
  %28 = icmp ne %struct.ext2fs_hashmap_entry* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %8, align 8
  %31 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %8, align 8
  %37 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @memcmp(i32 %38, i8* %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %4, align 8
  br label %53

47:                                               ; preds = %35, %29
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %8, align 8
  %50 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %49, i32 0, i32 3
  %51 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %50, align 8
  store %struct.ext2fs_hashmap_entry* %51, %struct.ext2fs_hashmap_entry** %8, align 8
  br label %26

52:                                               ; preds = %26
  store i8* null, i8** %4, align 8
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i32 @memcmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
