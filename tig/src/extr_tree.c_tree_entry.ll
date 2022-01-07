; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tree.c_tree_entry.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tree.c_tree_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }
%struct.view = type { i32 }
%struct.tree_entry = type { i64, i32, i32, i32 }

@LINE_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.view*, i32, i8*, i8*, i8*, i64)* @tree_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @tree_entry(%struct.view* %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.view*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tree_entry*, align 8
  %16 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @LINE_HEADER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @tree_path_is_parent(i8* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i1 [ true, %6 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load %struct.view*, %struct.view** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = load i32, i32* %14, align 4
  %32 = call %struct.line* @add_line_alloc(%struct.view* %27, %struct.tree_entry** %15, i32 %28, i32 %30, i32 %31)
  store %struct.line* %32, %struct.line** %16, align 8
  %33 = load %struct.line*, %struct.line** %16, align 8
  %34 = icmp ne %struct.line* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  store %struct.line* null, %struct.line** %7, align 8
  br label %65

36:                                               ; preds = %24
  %37 = load %struct.tree_entry*, %struct.tree_entry** %15, align 8
  %38 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @strncpy(i32 %39, i8* %40, i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strtoul(i8* %47, i32* null, i32 8)
  %49 = load %struct.tree_entry*, %struct.tree_entry** %15, align 8
  %50 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %36
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.tree_entry*, %struct.tree_entry** %15, align 8
  %56 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @string_copy_rev(i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.tree_entry*, %struct.tree_entry** %15, align 8
  %63 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.line*, %struct.line** %16, align 8
  store %struct.line* %64, %struct.line** %7, align 8
  br label %65

65:                                               ; preds = %60, %35
  %66 = load %struct.line*, %struct.line** %7, align 8
  ret %struct.line* %66
}

declare dso_local i64 @tree_path_is_parent(i8*) #1

declare dso_local %struct.line* @add_line_alloc(%struct.view*, %struct.tree_entry**, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @string_copy_rev(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
