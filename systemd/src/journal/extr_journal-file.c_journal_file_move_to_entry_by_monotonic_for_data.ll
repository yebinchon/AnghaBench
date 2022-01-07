; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_move_to_entry_by_monotonic_for_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_move_to_entry_by_monotonic_for_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@test_object_monotonic = common dso_local global i32 0, align 4
@OBJECT_DATA = common dso_local global i32 0, align 4
@test_object_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_move_to_entry_by_monotonic_for_data(i32* %0, i64 %1, i32 %2, i64 %3, i32 %4, %struct.TYPE_8__** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_8__** %5, %struct.TYPE_8__*** %14, align 8
  store i64* %6, i64** %15, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @assert(i32* %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @find_data_object_by_boot_id(i32* %26, i32 %27, %struct.TYPE_8__** %16, i64* %19)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %8, align 4
  br label %152

33:                                               ; preds = %7
  %34 = load i32, i32* %18, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %152

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64toh(i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le64toh(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le64toh(i32 %54)
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* @test_object_monotonic, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @generic_array_bisect_plus_one(i32* %40, i32 %45, i32 %50, i32 %55, i64 %56, i32 %57, i32 %58, %struct.TYPE_8__** null, i64* %20, i32* null)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %39
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %8, align 4
  br label %152

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %150, %64
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @OBJECT_DATA, align 4
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @journal_file_move_to_object(i32* %66, i32 %67, i64 %68, %struct.TYPE_8__** %17)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %8, align 4
  br label %152

74:                                               ; preds = %65
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le64toh(i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le64toh(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le64toh(i32 %89)
  %91 = load i64, i64* %20, align 8
  %92 = load i32, i32* @test_object_offset, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @generic_array_bisect_plus_one(i32* %75, i32 %80, i32 %85, i32 %90, i64 %91, i32 %92, i32 %93, %struct.TYPE_8__** null, i64* %22, i32* null)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %74
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %8, align 4
  br label %152

99:                                               ; preds = %74
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* @OBJECT_DATA, align 4
  %102 = load i64, i64* %19, align 8
  %103 = call i32 @journal_file_move_to_object(i32* %100, i32 %101, i64 %102, %struct.TYPE_8__** %16)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %18, align 4
  store i32 %107, i32* %8, align 4
  br label %152

108:                                              ; preds = %99
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le64toh(i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le64toh(i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le64toh(i32 %123)
  %125 = load i64, i64* %22, align 8
  %126 = load i32, i32* @test_object_offset, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @generic_array_bisect_plus_one(i32* %109, i32 %114, i32 %119, i32 %124, i64 %125, i32 %126, i32 %127, %struct.TYPE_8__** %21, i64* %23, i32* null)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %108
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %8, align 4
  br label %152

133:                                              ; preds = %108
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %23, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %139 = icmp ne %struct.TYPE_8__** %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %142 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %142, align 8
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i64*, i64** %15, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i64, i64* %23, align 8
  %148 = load i64*, i64** %15, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %143
  store i32 1, i32* %8, align 4
  br label %152

150:                                              ; preds = %133
  %151 = load i64, i64* %23, align 8
  store i64 %151, i64* %20, align 8
  br label %65

152:                                              ; preds = %149, %131, %106, %97, %72, %62, %36, %31
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @find_data_object_by_boot_id(i32*, i32, %struct.TYPE_8__**, i64*) #1

declare dso_local i32 @generic_array_bisect_plus_one(i32*, i32, i32, i32, i64, i32, i32, %struct.TYPE_8__**, i64*, i32*) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @journal_file_move_to_object(i32*, i32, i64, %struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
