; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_base_remove_entry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_base_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.ordered_hashmap_entry = type { i64, i64 }

@DIB_RAW_FREE = common dso_local global i64 0, align 8
@HASHMAP_TYPE_ORDERED = common dso_local global i64 0, align 8
@IDX_NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @base_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base_remove_entry(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.ordered_hashmap_entry*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = call i64* @dib_raw_ptr(%struct.TYPE_16__* %13)
  store i64* %14, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DIB_RAW_FREE, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @next_idx(%struct.TYPE_16__* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %45, %2
  %29 = load i64*, i64** %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @DIB_RAW_FREE, align 8
  %36 = call i64 @IN_SET(i64 %34, i32 0, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %49

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @next_idx(%struct.TYPE_16__* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %28

49:                                               ; preds = %38
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HASHMAP_TYPE_ORDERED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %108

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = bitcast %struct.TYPE_16__* %56 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %11, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call %struct.ordered_hashmap_entry* @ordered_bucket_at(%struct.TYPE_15__* %58, i32 %59)
  store %struct.ordered_hashmap_entry* %60, %struct.ordered_hashmap_entry** %12, align 8
  %61 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %62 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IDX_NIL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %68 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %72 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call %struct.ordered_hashmap_entry* @ordered_bucket_at(%struct.TYPE_15__* %70, i32 %74)
  %76 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %75, i32 0, i32 1
  store i64 %69, i64* %76, align 8
  br label %83

77:                                               ; preds = %55
  %78 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %79 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %66
  %84 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %85 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IDX_NIL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %91 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %95 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call %struct.ordered_hashmap_entry* @ordered_bucket_at(%struct.TYPE_15__* %93, i32 %97)
  %99 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %98, i32 0, i32 0
  store i64 %92, i64* %99, align 8
  br label %107

100:                                              ; preds = %83
  %101 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %12, align 8
  %102 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %100, %89
  br label %108

108:                                              ; preds = %107, %49
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %7, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @next_idx(%struct.TYPE_16__* %110, i32 %111)
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %139, %108
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %113
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i64*, i64** %10, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @bucket_calculate_dib(%struct.TYPE_16__* %118, i32 %119, i64 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @bucket_move_entry(%struct.TYPE_16__* %130, i32* null, i32 %131, i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = sub i32 %136, 1
  %138 = call i32 @bucket_set_dib(%struct.TYPE_16__* %134, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %117
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %7, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @next_idx(%struct.TYPE_16__* %141, i32 %142)
  store i32 %143, i32* %5, align 4
  br label %113

144:                                              ; preds = %113
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @bucket_mark_free(%struct.TYPE_16__* %145, i32 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = call i32 @n_entries_dec(%struct.TYPE_16__* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = call i32 @base_set_dirty(%struct.TYPE_16__* %150)
  ret void
}

declare dso_local i64* @dib_raw_ptr(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @next_idx(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @IN_SET(i64, i32, i64) #1

declare dso_local %struct.ordered_hashmap_entry* @ordered_bucket_at(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bucket_calculate_dib(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @bucket_move_entry(%struct.TYPE_16__*, i32*, i32, i32) #1

declare dso_local i32 @bucket_set_dib(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @bucket_mark_free(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @n_entries_dec(%struct.TYPE_16__*) #1

declare dso_local i32 @base_set_dirty(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
