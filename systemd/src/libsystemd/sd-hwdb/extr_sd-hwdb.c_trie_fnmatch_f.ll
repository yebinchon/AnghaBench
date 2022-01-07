; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_trie_fnmatch_f.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_trie_fnmatch_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie_node_f = type { i64, i32, i32 }
%struct.linebuf = type { i32 }
%struct.trie_child_entry_f = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.trie_node_f*, i64, %struct.linebuf*, i8*)* @trie_fnmatch_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trie_fnmatch_f(i32* %0, %struct.trie_node_f* %1, i64 %2, %struct.linebuf* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.trie_node_f*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.linebuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.trie_child_entry_f*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.trie_node_f* %1, %struct.trie_node_f** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.linebuf* %3, %struct.linebuf** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.trie_node_f*, %struct.trie_node_f** %8, align 8
  %19 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @trie_string(i32* %17, i32 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.linebuf*, %struct.linebuf** %10, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @linebuf_add(%struct.linebuf* %26, i8* %29, i64 %30)
  store i64 0, i64* %13, align 8
  br label %32

32:                                               ; preds = %64, %5
  %33 = load i64, i64* %13, align 8
  %34 = load %struct.trie_node_f*, %struct.trie_node_f** %8, align 8
  %35 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.trie_node_f*, %struct.trie_node_f** %8, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call %struct.trie_child_entry_f* @trie_node_child(i32* %39, %struct.trie_node_f* %40, i64 %41)
  store %struct.trie_child_entry_f* %42, %struct.trie_child_entry_f** %16, align 8
  %43 = load %struct.linebuf*, %struct.linebuf** %10, align 8
  %44 = load %struct.trie_child_entry_f*, %struct.trie_child_entry_f** %16, align 8
  %45 = getelementptr inbounds %struct.trie_child_entry_f, %struct.trie_child_entry_f* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @linebuf_add_char(%struct.linebuf* %43, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.trie_child_entry_f*, %struct.trie_child_entry_f** %16, align 8
  %51 = getelementptr inbounds %struct.trie_child_entry_f, %struct.trie_child_entry_f* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.trie_node_f* @trie_node_from_off(i32* %49, i32 %52)
  %54 = load %struct.linebuf*, %struct.linebuf** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @trie_fnmatch_f(i32* %48, %struct.trie_node_f* %53, i64 0, %struct.linebuf* %54, i8* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %107

61:                                               ; preds = %38
  %62 = load %struct.linebuf*, %struct.linebuf** %10, align 8
  %63 = call i32 @linebuf_rem_char(%struct.linebuf* %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.trie_node_f*, %struct.trie_node_f** %8, align 8
  %69 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @le64toh(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %67
  %74 = load %struct.linebuf*, %struct.linebuf** %10, align 8
  %75 = call i32 @linebuf_get(%struct.linebuf* %74)
  %76 = load i8*, i8** %11, align 8
  %77 = call i64 @fnmatch(i32 %75, i8* %76, i32 0)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %73
  store i64 0, i64* %13, align 8
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.trie_node_f*, %struct.trie_node_f** %8, align 8
  %83 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @le64toh(i32 %84)
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.trie_node_f*, %struct.trie_node_f** %8, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @trie_node_value(i32* %89, %struct.trie_node_f* %90, i64 %91)
  %93 = call i32 @hwdb_add_property(i32* %88, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %6, align 4
  br label %107

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %80

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %73, %67
  %104 = load %struct.linebuf*, %struct.linebuf** %10, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @linebuf_rem(%struct.linebuf* %104, i64 %105)
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %96, %59
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i8* @trie_string(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @linebuf_add(%struct.linebuf*, i8*, i64) #1

declare dso_local %struct.trie_child_entry_f* @trie_node_child(i32*, %struct.trie_node_f*, i64) #1

declare dso_local i32 @linebuf_add_char(%struct.linebuf*, i32) #1

declare dso_local %struct.trie_node_f* @trie_node_from_off(i32*, i32) #1

declare dso_local i32 @linebuf_rem_char(%struct.linebuf*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i64 @fnmatch(i32, i8*, i32) #1

declare dso_local i32 @linebuf_get(%struct.linebuf*) #1

declare dso_local i32 @hwdb_add_property(i32*, i32) #1

declare dso_local i32 @trie_node_value(i32*, %struct.trie_node_f*, i64) #1

declare dso_local i32 @linebuf_rem(%struct.linebuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
