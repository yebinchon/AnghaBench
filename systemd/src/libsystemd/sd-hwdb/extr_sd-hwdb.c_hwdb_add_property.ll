; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_hwdb_add_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_hwdb_add_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.trie_value_entry_f = type { i32 }
%struct.trie_value_entry2_f = type { i64, i64, i64 }

@string_hash_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.trie_value_entry_f*)* @hwdb_add_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwdb_add_property(%struct.TYPE_7__* %0, %struct.trie_value_entry_f* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.trie_value_entry_f*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trie_value_entry2_f*, align 8
  %9 = alloca %struct.trie_value_entry2_f*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.trie_value_entry_f* %1, %struct.trie_value_entry_f** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = call i32 @assert(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.trie_value_entry_f*, %struct.trie_value_entry_f** %5, align 8
  %15 = getelementptr inbounds %struct.trie_value_entry_f, %struct.trie_value_entry_f* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @trie_string(%struct.TYPE_7__* %13, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64toh(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 24
  br i1 %34, label %35, label %114

35:                                               ; preds = %24
  %36 = load %struct.trie_value_entry_f*, %struct.trie_value_entry_f** %5, align 8
  %37 = bitcast %struct.trie_value_entry_f* %36 to %struct.trie_value_entry2_f*
  store %struct.trie_value_entry2_f* %37, %struct.trie_value_entry2_f** %9, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.trie_value_entry2_f* @ordered_hashmap_get(i32 %40, i8* %41)
  store %struct.trie_value_entry2_f* %42, %struct.trie_value_entry2_f** %8, align 8
  %43 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %8, align 8
  %44 = icmp ne %struct.trie_value_entry2_f* %43, null
  br i1 %44, label %45, label %113

45:                                               ; preds = %35
  %46 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %9, align 8
  %47 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  %51 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %9, align 8
  %52 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %8, align 8
  %55 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %76, label %58

58:                                               ; preds = %50
  %59 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %9, align 8
  %60 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %8, align 8
  %63 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %9, align 8
  %68 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %8, align 8
  %71 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br label %74

74:                                               ; preds = %66, %58
  %75 = phi i1 [ false, %58 ], [ %73, %66 ]
  br label %76

76:                                               ; preds = %74, %50
  %77 = phi i1 [ true, %50 ], [ %75, %74 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %108

79:                                               ; preds = %45
  %80 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %9, align 8
  %81 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %8, align 8
  %84 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %105, label %87

87:                                               ; preds = %79
  %88 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %9, align 8
  %89 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %8, align 8
  %92 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %9, align 8
  %97 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.trie_value_entry2_f*, %struct.trie_value_entry2_f** %8, align 8
  %100 = getelementptr inbounds %struct.trie_value_entry2_f, %struct.trie_value_entry2_f* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br label %103

103:                                              ; preds = %95, %87
  %104 = phi i1 [ false, %87 ], [ %102, %95 ]
  br label %105

105:                                              ; preds = %103, %79
  %106 = phi i1 [ true, %79 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %76
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %137

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %35
  br label %114

114:                                              ; preds = %113, %24
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = call i32 @ordered_hashmap_ensure_allocated(i32* %116, i32* @string_hash_ops)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %137

122:                                              ; preds = %114
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = load %struct.trie_value_entry_f*, %struct.trie_value_entry_f** %5, align 8
  %128 = bitcast %struct.trie_value_entry_f* %127 to i8*
  %129 = call i32 @ordered_hashmap_replace(i32 %125, i8* %126, i8* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %137

134:                                              ; preds = %122
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %132, %120, %111, %23
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i8* @trie_string(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local %struct.trie_value_entry2_f* @ordered_hashmap_get(i32, i8*) #1

declare dso_local i32 @ordered_hashmap_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @ordered_hashmap_replace(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
