; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_move_to_entry_by_seqnum_for_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_move_to_entry_by_seqnum_for_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@OBJECT_DATA = common dso_local global i32 0, align 4
@test_object_seqnum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_move_to_entry_by_seqnum_for_data(i32* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_7__** %4, i32* %5) #0 {
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
  %19 = load i32, i32* @OBJECT_DATA, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @journal_file_move_to_object(i32* %18, i32 %19, i32 %20, %struct.TYPE_7__** %14)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %7, align 4
  br label %49

26:                                               ; preds = %6
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64toh(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le64toh(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le64toh(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @test_object_seqnum, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @generic_array_bisect_plus_one(i32* %27, i32 %32, i32 %37, i32 %42, i32 %43, i32 %44, i32 %45, %struct.TYPE_7__** %46, i32* %47, i32* null)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %26, %24
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @journal_file_move_to_object(i32*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @generic_array_bisect_plus_one(i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__**, i32*, i32*) #1

declare dso_local i32 @le64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
