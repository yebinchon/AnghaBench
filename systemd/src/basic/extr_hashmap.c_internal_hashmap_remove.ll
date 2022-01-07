; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_internal_hashmap_remove.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_internal_hashmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap_base_entry = type { i32 }

@IDX_NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @internal_hashmap_remove(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hashmap_base_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %36

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @bucket_hash(i32* %14, i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @bucket_scan(i32* %17, i32 %18, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @IDX_NIL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %36

25:                                               ; preds = %13
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.hashmap_base_entry* @bucket_at(i32* %26, i32 %27)
  store %struct.hashmap_base_entry* %28, %struct.hashmap_base_entry** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.hashmap_base_entry*, %struct.hashmap_base_entry** %6, align 8
  %31 = call i8* @entry_value(i32* %29, %struct.hashmap_base_entry* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @remove_entry(i32* %32, i32 %33)
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %25, %24, %12
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @bucket_hash(i32*, i8*) #1

declare dso_local i32 @bucket_scan(i32*, i32, i8*) #1

declare dso_local %struct.hashmap_base_entry* @bucket_at(i32*, i32) #1

declare dso_local i8* @entry_value(i32*, %struct.hashmap_base_entry*) #1

declare dso_local i32 @remove_entry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
