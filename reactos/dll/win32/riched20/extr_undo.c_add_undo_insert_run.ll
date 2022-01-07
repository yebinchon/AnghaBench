; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_undo.c_add_undo_insert_run.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_undo.c_add_undo_insert_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.undo_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i64* }

@undo_insert_run = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_undo_insert_run(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.undo_item*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @undo_insert_run, align 4
  %17 = call %struct.undo_item* @add_undo(i32* %15, i32 %16)
  store %struct.undo_item* %17, %struct.undo_item** %14, align 8
  %18 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %19 = icmp ne %struct.undo_item* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %7, align 4
  br label %86

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64* @heap_alloc(i32 %27)
  %29 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %30 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i64* %28, i64** %32, align 8
  %33 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %34 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @ME_EmptyUndoStack(i32* %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %7, align 4
  br label %86

43:                                               ; preds = %22
  %44 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %45 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i64* %48, i32* %49, i32 %53)
  %55 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %56 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %65 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %70 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %75 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.undo_item*, %struct.undo_item** %14, align 8
  %80 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i32* %78, i32** %82, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @ME_AddRefStyle(i32* %83)
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %43, %39, %20
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.undo_item* @add_undo(i32*, i32) #1

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i32 @ME_EmptyUndoStack(i32*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @ME_AddRefStyle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
