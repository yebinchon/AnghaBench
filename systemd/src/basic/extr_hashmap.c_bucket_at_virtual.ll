; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_bucket_at_virtual.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_bucket_at_virtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap_base_entry = type { i32 }
%struct.swap_entries = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hashmap_base_entry }

@_IDX_SWAP_BEGIN = common dso_local global i32 0, align 4
@_IDX_SWAP_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Invalid index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hashmap_base_entry* (i32*, %struct.swap_entries*, i32)* @bucket_at_virtual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hashmap_base_entry* @bucket_at_virtual(i32* %0, %struct.swap_entries* %1, i32 %2) #0 {
  %4 = alloca %struct.hashmap_base_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swap_entries*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.swap_entries* %1, %struct.swap_entries** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @_IDX_SWAP_BEGIN, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.hashmap_base_entry* @bucket_at(i32* %12, i32 %13)
  store %struct.hashmap_base_entry* %14, %struct.hashmap_base_entry** %4, align 8
  br label %27

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @_IDX_SWAP_END, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.swap_entries*, %struct.swap_entries** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_4__* @bucket_at_swap(%struct.swap_entries* %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.hashmap_base_entry* %24, %struct.hashmap_base_entry** %4, align 8
  br label %27

25:                                               ; preds = %15
  %26 = call i32 @assert_not_reached(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19, %11
  %28 = load %struct.hashmap_base_entry*, %struct.hashmap_base_entry** %4, align 8
  ret %struct.hashmap_base_entry* %28
}

declare dso_local %struct.hashmap_base_entry* @bucket_at(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @bucket_at_swap(%struct.swap_entries*, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
