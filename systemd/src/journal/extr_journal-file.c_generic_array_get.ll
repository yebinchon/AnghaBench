; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_generic_array_get.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_generic_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i64, i64 }

@OBJECT_ENTRY_ARRAY = common dso_local global i32 0, align 4
@OBJECT_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i64, %struct.TYPE_14__**, i64*)* @generic_array_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_array_get(%struct.TYPE_15__* %0, i64 %1, i64 %2, %struct.TYPE_14__** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = call i32 @assert(%struct.TYPE_15__* %19)
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %14, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_16__* @ordered_hashmap_get(i32 %24, i64* %8)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %17, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %34, %28, %5
  br label %47

47:                                               ; preds = %74, %46
  %48 = load i64, i64* %14, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %47
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = load i32, i32* @OBJECT_ENTRY_ARRAY, align 4
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @journal_file_move_to_object(%struct.TYPE_15__* %51, i32 %52, i64 %53, %struct.TYPE_14__** %12)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %6, align 4
  br label %125

59:                                               ; preds = %50
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = call i64 @journal_file_entry_array_n_items(%struct.TYPE_14__* %60)
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %18, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le64toh(i32 %72)
  store i64 %73, i64* %13, align 8
  br label %87

74:                                               ; preds = %59
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %15, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %15, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @le64toh(i32 %84)
  store i64 %85, i64* %14, align 8
  br label %47

86:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %125

87:                                               ; preds = %65
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le64toh(i32 %99)
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @chain_cache_put(i32 %90, %struct.TYPE_16__* %91, i64 %92, i64 %93, i64 %100, i64 %101, i64 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = load i32, i32* @OBJECT_ENTRY, align 4
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @journal_file_move_to_object(%struct.TYPE_15__* %104, i32 %105, i64 %106, %struct.TYPE_14__** %12)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %87
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %6, align 4
  br label %125

112:                                              ; preds = %87
  %113 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %114 = icmp ne %struct.TYPE_14__** %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %117 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %117, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64*, i64** %11, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, i64* %13, align 8
  %123 = load i64*, i64** %11, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  store i32 1, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %110, %86, %57
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ordered_hashmap_get(i32, i64*) #1

declare dso_local i32 @journal_file_move_to_object(%struct.TYPE_15__*, i32, i64, %struct.TYPE_14__**) #1

declare dso_local i64 @journal_file_entry_array_n_items(%struct.TYPE_14__*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @chain_cache_put(i32, %struct.TYPE_16__*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
