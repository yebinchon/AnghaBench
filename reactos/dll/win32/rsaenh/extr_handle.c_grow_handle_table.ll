; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_grow_handle_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_grow_handle_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_table = type { i32, %struct.handle_table_entry* }
%struct.handle_table_entry = type { i32, i32* }

@TABLE_SIZE_INCREMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.handle_table*)* @grow_handle_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_handle_table(%struct.handle_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.handle_table*, align 8
  %4 = alloca %struct.handle_table_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.handle_table* %0, %struct.handle_table** %3, align 8
  %7 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %8 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TABLE_SIZE_INCREMENT, align 4
  %11 = add i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = call %struct.handle_table_entry* @HeapAlloc(i32 %12, i32 0, i32 %16)
  store %struct.handle_table_entry* %17, %struct.handle_table_entry** %4, align 8
  %18 = load %struct.handle_table_entry*, %struct.handle_table_entry** %4, align 8
  %19 = icmp ne %struct.handle_table_entry* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %1
  %23 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %24 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %23, i32 0, i32 1
  %25 = load %struct.handle_table_entry*, %struct.handle_table_entry** %24, align 8
  %26 = icmp ne %struct.handle_table_entry* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.handle_table_entry*, %struct.handle_table_entry** %4, align 8
  %29 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %30 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %29, i32 0, i32 1
  %31 = load %struct.handle_table_entry*, %struct.handle_table_entry** %30, align 8
  %32 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %33 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = mul i64 16, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(%struct.handle_table_entry* %28, %struct.handle_table_entry* %31, i32 %37)
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %41 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %40, i32 0, i32 1
  %42 = load %struct.handle_table_entry*, %struct.handle_table_entry** %41, align 8
  %43 = call i32 @HeapFree(i32 %39, i32 0, %struct.handle_table_entry* %42)
  br label %44

44:                                               ; preds = %27, %22
  %45 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %46 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %65, %44
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.handle_table_entry*, %struct.handle_table_entry** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.handle_table_entry, %struct.handle_table_entry* %53, i64 %55
  %57 = getelementptr inbounds %struct.handle_table_entry, %struct.handle_table_entry* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  %60 = load %struct.handle_table_entry*, %struct.handle_table_entry** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.handle_table_entry, %struct.handle_table_entry* %60, i64 %62
  %64 = getelementptr inbounds %struct.handle_table_entry, %struct.handle_table_entry* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.handle_table_entry*, %struct.handle_table_entry** %4, align 8
  %70 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %71 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %70, i32 0, i32 1
  store %struct.handle_table_entry* %69, %struct.handle_table_entry** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.handle_table*, %struct.handle_table** %3, align 8
  %74 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %20
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.handle_table_entry* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(%struct.handle_table_entry*, %struct.handle_table_entry*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.handle_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
