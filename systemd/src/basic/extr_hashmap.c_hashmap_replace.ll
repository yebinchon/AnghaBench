; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_replace.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.swap_entries = type { i32 }
%struct.plain_hashmap_entry = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_13__ = type { %struct.plain_hashmap_entry }

@IDX_NIL = common dso_local global i32 0, align 4
@IDX_PUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashmap_replace(%struct.TYPE_17__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.swap_entries, align 4
  %9 = alloca %struct.plain_hashmap_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_17__* %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @bucket_hash(%struct.TYPE_17__* %14, i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @bucket_scan(%struct.TYPE_17__* %17, i32 %18, i8* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @IDX_NIL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.plain_hashmap_entry* @plain_bucket_at(%struct.TYPE_17__* %25, i32 %26)
  store %struct.plain_hashmap_entry* %27, %struct.plain_hashmap_entry** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %9, align 8
  %30 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %9, align 8
  %34 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = call i32 @hashmap_set_dirty(%struct.TYPE_17__* %35)
  store i32 0, i32* %4, align 4
  br label %51

37:                                               ; preds = %3
  %38 = load i32, i32* @IDX_PUT, align 4
  %39 = call %struct.TYPE_13__* @bucket_at_swap(%struct.swap_entries* %8, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store %struct.plain_hashmap_entry* %40, %struct.plain_hashmap_entry** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %9, align 8
  %43 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %9, align 8
  %47 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @hashmap_put_boldly(%struct.TYPE_17__* %48, i32 %49, %struct.swap_entries* %8, i32 1)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %37, %24
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @bucket_hash(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @bucket_scan(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local %struct.plain_hashmap_entry* @plain_bucket_at(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @hashmap_set_dirty(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_13__* @bucket_at_swap(%struct.swap_entries*, i32) #1

declare dso_local i32 @hashmap_put_boldly(%struct.TYPE_17__*, i32, %struct.swap_entries*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
