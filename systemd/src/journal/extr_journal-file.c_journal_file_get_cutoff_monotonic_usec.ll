; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_get_cutoff_monotonic_usec.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_get_cutoff_monotonic_usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@OBJECT_ENTRY = common dso_local global i32 0, align 4
@OBJECT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_get_cutoff_monotonic_usec(i32* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64*, i64** %9, align 8
  %20 = icmp ne i64* %19, null
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ true, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @find_data_object_by_boot_id(i32* %25, i32 %26, %struct.TYPE_9__** %10, i64* %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %106

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le64toh(i32 %36)
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %106

40:                                               ; preds = %32
  %41 = load i64*, i64** %8, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @OBJECT_ENTRY, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le64toh(i32 %49)
  %51 = call i32 @journal_file_move_to_object(i32* %44, i32 %45, i64 %50, %struct.TYPE_9__** %10)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %106

56:                                               ; preds = %43
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64toh(i32 %60)
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %40
  %64 = load i64*, i64** %9, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @OBJECT_DATA, align 4
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @journal_file_move_to_object(i32* %67, i32 %68, i64 %69, %struct.TYPE_9__** %10)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %106

75:                                               ; preds = %66
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le64toh(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le64toh(i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le64toh(i32 %90)
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @generic_array_get_plus_one(i32* %76, i64 %81, i64 %86, i64 %92, %struct.TYPE_9__** %10, i32* null)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %75
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %106

98:                                               ; preds = %75
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @le64toh(i32 %102)
  %104 = load i64*, i64** %9, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %98, %63
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %96, %73, %54, %39, %30
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @find_data_object_by_boot_id(i32*, i32, %struct.TYPE_9__**, i64*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @journal_file_move_to_object(i32*, i32, i64, %struct.TYPE_9__**) #1

declare dso_local i32 @generic_array_get_plus_one(i32*, i64, i64, i64, %struct.TYPE_9__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
