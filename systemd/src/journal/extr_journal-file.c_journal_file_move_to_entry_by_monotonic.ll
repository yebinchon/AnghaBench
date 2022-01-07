; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_move_to_entry_by_monotonic.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_move_to_entry_by_monotonic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@test_object_monotonic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_move_to_entry_by_monotonic(i32* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_7__** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_7__** %4, %struct.TYPE_7__*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @find_data_object_by_boot_id(i32* %18, i32 %19, %struct.TYPE_7__** %14, i32* null)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %7, align 4
  br label %54

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %54

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le64toh(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le64toh(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le64toh(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @test_object_monotonic, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @generic_array_bisect_plus_one(i32* %32, i32 %37, i32 %42, i32 %47, i32 %48, i32 %49, i32 %50, %struct.TYPE_7__** %51, i32* %52, i32* null)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %31, %28, %23
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @find_data_object_by_boot_id(i32*, i32, %struct.TYPE_7__**, i32*) #1

declare dso_local i32 @generic_array_bisect_plus_one(i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__**, i32*, i32*) #1

declare dso_local i32 @le64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
