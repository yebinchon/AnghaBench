; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_entry_value.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_entry_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.hashmap_base_entry = type { i64 }
%struct.plain_hashmap_entry = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"Unknown hashmap type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, %struct.hashmap_base_entry*)* @entry_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @entry_value(%struct.TYPE_3__* %0, %struct.hashmap_base_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.hashmap_base_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.hashmap_base_entry* %1, %struct.hashmap_base_entry** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 129, label %9
    i32 130, label %9
    i32 128, label %14
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.hashmap_base_entry*, %struct.hashmap_base_entry** %5, align 8
  %11 = bitcast %struct.hashmap_base_entry* %10 to %struct.plain_hashmap_entry*
  %12 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %3, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.hashmap_base_entry*, %struct.hashmap_base_entry** %5, align 8
  %16 = getelementptr inbounds %struct.hashmap_base_entry, %struct.hashmap_base_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %3, align 8
  br label %21

19:                                               ; preds = %2
  %20 = call i32 @assert_not_reached(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %9, %14, %19
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
