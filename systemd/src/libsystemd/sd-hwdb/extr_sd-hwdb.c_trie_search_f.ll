; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_trie_search_f.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_trie_search_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.linebuf = type { i32 }
%struct.trie_node_f = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @trie_search_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trie_search_f(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.linebuf, align 4
  %7 = alloca %struct.trie_node_f*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trie_node_f*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %8, align 8
  %14 = call i32 @linebuf_init(%struct.linebuf* %6)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.trie_node_f* @trie_node_from_off(%struct.TYPE_11__* %15, i32 %20)
  store %struct.trie_node_f* %21, %struct.trie_node_f** %7, align 8
  br label %22

22:                                               ; preds = %166, %2
  %23 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %24 = icmp ne %struct.trie_node_f* %23, null
  br i1 %24, label %25, label %177

25:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  %26 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %27 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %68, %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %34 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @trie_string(%struct.TYPE_11__* %32, i64 %35)
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %12, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %31
  %42 = load i8, i8* %12, align 1
  %43 = call i64 @IN_SET(i8 signext %42, i8 signext 42, i8 signext 63, i8 signext 91)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = call i32 @trie_fnmatch_f(%struct.TYPE_11__* %46, %struct.trie_node_f* %47, i64 %48, %struct.linebuf* %6, i8* %53)
  store i32 %54, i32* %3, align 4
  br label %178

55:                                               ; preds = %41
  %56 = load i8, i8* %12, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %59, %60
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %57, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %178

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %31

71:                                               ; preds = %31
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %71, %25
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %78 = call %struct.trie_node_f* @node_lookup_f(%struct.TYPE_11__* %76, %struct.trie_node_f* %77, i8 signext 42)
  store %struct.trie_node_f* %78, %struct.trie_node_f** %10, align 8
  %79 = load %struct.trie_node_f*, %struct.trie_node_f** %10, align 8
  %80 = icmp ne %struct.trie_node_f* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = call i32 @linebuf_add_char(%struct.linebuf* %6, i8 signext 42)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = load %struct.trie_node_f*, %struct.trie_node_f** %10, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = call i32 @trie_fnmatch_f(%struct.TYPE_11__* %83, %struct.trie_node_f* %84, i64 0, %struct.linebuf* %6, i8* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %178

93:                                               ; preds = %81
  %94 = call i32 @linebuf_rem_char(%struct.linebuf* %6)
  br label %95

95:                                               ; preds = %93, %75
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %98 = call %struct.trie_node_f* @node_lookup_f(%struct.TYPE_11__* %96, %struct.trie_node_f* %97, i8 signext 63)
  store %struct.trie_node_f* %98, %struct.trie_node_f** %10, align 8
  %99 = load %struct.trie_node_f*, %struct.trie_node_f** %10, align 8
  %100 = icmp ne %struct.trie_node_f* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = call i32 @linebuf_add_char(%struct.linebuf* %6, i8 signext 63)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = load %struct.trie_node_f*, %struct.trie_node_f** %10, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = call i32 @trie_fnmatch_f(%struct.TYPE_11__* %103, %struct.trie_node_f* %104, i64 0, %struct.linebuf* %6, i8* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %178

113:                                              ; preds = %101
  %114 = call i32 @linebuf_rem_char(%struct.linebuf* %6)
  br label %115

115:                                              ; preds = %113, %95
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %118 = call %struct.trie_node_f* @node_lookup_f(%struct.TYPE_11__* %116, %struct.trie_node_f* %117, i8 signext 91)
  store %struct.trie_node_f* %118, %struct.trie_node_f** %10, align 8
  %119 = load %struct.trie_node_f*, %struct.trie_node_f** %10, align 8
  %120 = icmp ne %struct.trie_node_f* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = call i32 @linebuf_add_char(%struct.linebuf* %6, i8 signext 91)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = load %struct.trie_node_f*, %struct.trie_node_f** %10, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = call i32 @trie_fnmatch_f(%struct.TYPE_11__* %123, %struct.trie_node_f* %124, i64 0, %struct.linebuf* %6, i8* %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %3, align 4
  br label %178

133:                                              ; preds = %121
  %134 = call i32 @linebuf_rem_char(%struct.linebuf* %6)
  br label %135

135:                                              ; preds = %133, %115
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %135
  store i64 0, i64* %13, align 8
  br label %143

143:                                              ; preds = %162, %142
  %144 = load i64, i64* %13, align 8
  %145 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %146 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @le64toh(i32 %147)
  %149 = icmp ult i64 %144, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %143
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %153 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i32 @trie_node_value(%struct.TYPE_11__* %152, %struct.trie_node_f* %153, i64 %154)
  %156 = call i32 @hwdb_add_property(%struct.TYPE_11__* %151, i32 %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %150
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %3, align 4
  br label %178

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %13, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %13, align 8
  br label %143

165:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %178

166:                                              ; preds = %135
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = load %struct.trie_node_f*, %struct.trie_node_f** %7, align 8
  %169 = load i8*, i8** %5, align 8
  %170 = load i64, i64* %8, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = call %struct.trie_node_f* @node_lookup_f(%struct.TYPE_11__* %167, %struct.trie_node_f* %168, i8 signext %172)
  store %struct.trie_node_f* %173, %struct.trie_node_f** %10, align 8
  %174 = load %struct.trie_node_f*, %struct.trie_node_f** %10, align 8
  store %struct.trie_node_f* %174, %struct.trie_node_f** %7, align 8
  %175 = load i64, i64* %8, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %8, align 8
  br label %22

177:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %165, %159, %131, %111, %91, %66, %45
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @linebuf_init(%struct.linebuf*) #1

declare dso_local %struct.trie_node_f* @trie_node_from_off(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @trie_string(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @IN_SET(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @trie_fnmatch_f(%struct.TYPE_11__*, %struct.trie_node_f*, i64, %struct.linebuf*, i8*) #1

declare dso_local %struct.trie_node_f* @node_lookup_f(%struct.TYPE_11__*, %struct.trie_node_f*, i8 signext) #1

declare dso_local i32 @linebuf_add_char(%struct.linebuf*, i8 signext) #1

declare dso_local i32 @linebuf_rem_char(%struct.linebuf*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @hwdb_add_property(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @trie_node_value(%struct.TYPE_11__*, %struct.trie_node_f*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
