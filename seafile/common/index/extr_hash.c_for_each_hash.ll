; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_hash.c_for_each_hash.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_hash.c_for_each_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32, %struct.hash_table_entry* }
%struct.hash_table_entry = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_hash(%struct.hash_table* %0, i32 (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hash_table_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.hash_table* %0, %struct.hash_table** %5, align 8
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %18 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %17, i32 0, i32 1
  %19 = load %struct.hash_table_entry*, %struct.hash_table_entry** %18, align 8
  store %struct.hash_table_entry* %19, %struct.hash_table_entry** %11, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %46, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.hash_table_entry*, %struct.hash_table_entry** %11, align 8
  %26 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  %28 = load %struct.hash_table_entry*, %struct.hash_table_entry** %11, align 8
  %29 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %28, i32 1
  store %struct.hash_table_entry* %29, %struct.hash_table_entry** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 %33(i8* %34, i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %20

49:                                               ; preds = %20
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
