; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_set_put.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_set_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_entries = type { i32 }
%struct.hashmap_base_entry = type { i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hashmap_base_entry }

@IDX_NIL = common dso_local global i32 0, align 4
@IDX_PUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_put(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.swap_entries, align 4
  %7 = alloca %struct.hashmap_base_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @bucket_hash(i32* %12, i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @bucket_scan(i32* %15, i32 %16, i8* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @IDX_NIL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load i32, i32* @IDX_PUT, align 4
  %25 = call %struct.TYPE_4__* @bucket_at_swap(%struct.swap_entries* %6, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.hashmap_base_entry* %27, %struct.hashmap_base_entry** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.hashmap_base_entry*, %struct.hashmap_base_entry** %7, align 8
  %30 = getelementptr inbounds %struct.hashmap_base_entry, %struct.hashmap_base_entry* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @hashmap_put_boldly(i32* %31, i32 %32, %struct.swap_entries* %6, i32 1)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @bucket_hash(i32*, i8*) #1

declare dso_local i32 @bucket_scan(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @bucket_at_swap(%struct.swap_entries*, i32) #1

declare dso_local i32 @hashmap_put_boldly(i32*, i32, %struct.swap_entries*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
