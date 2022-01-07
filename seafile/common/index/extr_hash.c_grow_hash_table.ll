; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_hash.c_grow_hash_table.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_hash.c_grow_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32, i64, %struct.hash_table_entry* }
%struct.hash_table_entry = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_table*)* @grow_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_hash_table(%struct.hash_table* %0) #0 {
  %2 = alloca %struct.hash_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_table_entry*, align 8
  %7 = alloca %struct.hash_table_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %10 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 2
  %15 = load %struct.hash_table_entry*, %struct.hash_table_entry** %14, align 8
  store %struct.hash_table_entry* %15, %struct.hash_table_entry** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @alloc_nr(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.hash_table_entry* @calloc(i32 16, i32 %18)
  store %struct.hash_table_entry* %19, %struct.hash_table_entry** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %22 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hash_table_entry*, %struct.hash_table_entry** %7, align 8
  %24 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %24, i32 0, i32 2
  store %struct.hash_table_entry* %23, %struct.hash_table_entry** %25, align 8
  %26 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %27 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %53, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load %struct.hash_table_entry*, %struct.hash_table_entry** %6, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %33, i64 %35
  %37 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  %39 = load %struct.hash_table_entry*, %struct.hash_table_entry** %6, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %51 = call i32 @insert_hash_entry(i32 %48, i8* %49, %struct.hash_table* %50)
  br label %52

52:                                               ; preds = %47, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load %struct.hash_table_entry*, %struct.hash_table_entry** %6, align 8
  %58 = call i32 @free(%struct.hash_table_entry* %57)
  ret void
}

declare dso_local i32 @alloc_nr(i32) #1

declare dso_local %struct.hash_table_entry* @calloc(i32, i32) #1

declare dso_local i32 @insert_hash_entry(i32, i8*, %struct.hash_table*) #1

declare dso_local i32 @free(%struct.hash_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
