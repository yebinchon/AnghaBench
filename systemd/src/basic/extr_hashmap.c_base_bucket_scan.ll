; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_base_bucket_scan.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_base_bucket_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32, i8*)* }
%struct.hashmap_base_entry = type { i32 }

@DIB_RAW_FREE = common dso_local global i64 0, align 8
@IDX_NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*)* @base_bucket_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_bucket_scan(%struct.TYPE_10__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hashmap_base_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i64* @dib_raw_ptr(%struct.TYPE_10__* %12)
  store i64* %13, i64** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @n_buckets(%struct.TYPE_10__* %15)
  %17 = icmp ult i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %70, %3
  %21 = load i64*, i64** %11, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DIB_RAW_FREE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @IDX_NIL, align 4
  store i32 %29, i32* %4, align 4
  br label %73

30:                                               ; preds = %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i64*, i64** %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @bucket_calculate_dib(%struct.TYPE_10__* %31, i32 %32, i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @IDX_NIL, align 4
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.hashmap_base_entry* @bucket_at(%struct.TYPE_10__* %49, i32 %50)
  store %struct.hashmap_base_entry* %51, %struct.hashmap_base_entry** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64 (i32, i8*)*, i64 (i32, i8*)** %55, align 8
  %57 = load %struct.hashmap_base_entry*, %struct.hashmap_base_entry** %8, align 8
  %58 = getelementptr inbounds %struct.hashmap_base_entry, %struct.hashmap_base_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 %56(i32 %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %44
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @next_idx(%struct.TYPE_10__* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %20

73:                                               ; preds = %63, %42, %28
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64* @dib_raw_ptr(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @n_buckets(%struct.TYPE_10__*) #1

declare dso_local i32 @bucket_calculate_dib(%struct.TYPE_10__*, i32, i64) #1

declare dso_local %struct.hashmap_base_entry* @bucket_at(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @next_idx(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
