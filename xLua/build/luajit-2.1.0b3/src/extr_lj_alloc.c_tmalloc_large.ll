; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_tmalloc_large.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_tmalloc_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_18__** }

@SIZE_T_BITSIZE = common dso_local global i64 0, align 8
@SIZE_T_ONE = common dso_local global i64 0, align 8
@MIN_CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i64)* @tmalloc_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tmalloc_large(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = xor i64 %17, -1
  %19 = add i64 %18, 1
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @compute_tree_index(i64 %20, i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.TYPE_18__** @treebin_at(%struct.TYPE_19__* %23, i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %8, align 8
  %27 = icmp ne %struct.TYPE_18__* %26, null
  br i1 %27, label %28, label %81

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @leftshift_for_tree_index(i32 %30)
  %32 = shl i64 %29, %31
  store i64 %32, i64* %10, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %11, align 8
  br label %33

33:                                               ; preds = %77, %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = call i64 @chunksize(%struct.TYPE_18__* %34)
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %6, align 8
  %43 = load i64, i64* %13, align 8
  store i64 %43, i64* %7, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %80

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %50, i64 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %12, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @SIZE_T_BITSIZE, align 8
  %58 = load i64, i64* @SIZE_T_ONE, align 8
  %59 = sub i64 %57, %58
  %60 = lshr i64 %56, %59
  %61 = and i64 %60, 1
  %62 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %55, i64 %61
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %8, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %65 = icmp ne %struct.TYPE_18__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %47
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = icmp ne %struct.TYPE_18__* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %11, align 8
  br label %72

72:                                               ; preds = %70, %66, %47
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = icmp eq %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %8, align 8
  br label %80

77:                                               ; preds = %72
  %78 = load i64, i64* %10, align 8
  %79 = shl i64 %78, 1
  store i64 %79, i64* %10, align 8
  br label %33

80:                                               ; preds = %75, %45
  br label %81

81:                                               ; preds = %80, %2
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = icmp eq %struct.TYPE_18__* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = icmp eq %struct.TYPE_18__* %85, null
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @idx2bit(i32 %88)
  %90 = call i64 @left_bits(i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = and i64 %90, %93
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @lj_ffs(i64 %99)
  %101 = call %struct.TYPE_18__** @treebin_at(%struct.TYPE_19__* %98, i32 %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %8, align 8
  br label %103

103:                                              ; preds = %97, %87
  br label %104

104:                                              ; preds = %103, %84, %81
  br label %105

105:                                              ; preds = %119, %104
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = icmp ne %struct.TYPE_18__* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = call i64 @chunksize(%struct.TYPE_18__* %109)
  %111 = load i64, i64* %5, align 8
  %112 = sub i64 %110, %111
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i64, i64* %15, align 8
  store i64 %117, i64* %7, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** %6, align 8
  br label %119

119:                                              ; preds = %116, %108
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %121 = call %struct.TYPE_18__* @leftmost_child(%struct.TYPE_18__* %120)
  store %struct.TYPE_18__* %121, %struct.TYPE_18__** %8, align 8
  br label %105

122:                                              ; preds = %105
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %124 = icmp ne %struct.TYPE_18__* %123, null
  br i1 %124, label %125, label %165

125:                                              ; preds = %122
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = sub i64 %129, %130
  %132 = icmp ult i64 %126, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %125
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @chunk_plus_offset(%struct.TYPE_18__* %134, i64 %135)
  store i32 %136, i32* %16, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = call i32 @unlink_large_chunk(%struct.TYPE_19__* %137, %struct.TYPE_18__* %138)
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* @MIN_CHUNK_SIZE, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %5, align 8
  %148 = add i64 %146, %147
  %149 = call i32 @set_inuse_and_pinuse(%struct.TYPE_19__* %144, %struct.TYPE_18__* %145, i64 %148)
  br label %162

150:                                              ; preds = %133
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = load i64, i64* %5, align 8
  %154 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_19__* %151, %struct.TYPE_18__* %152, i64 %153)
  %155 = load i32, i32* %16, align 4
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @set_size_and_pinuse_of_free_chunk(i32 %155, i64 %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i64, i64* %7, align 8
  %161 = call i32 @insert_chunk(%struct.TYPE_19__* %158, i32 %159, i64 %160)
  br label %162

162:                                              ; preds = %150, %143
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %164 = call i8* @chunk2mem(%struct.TYPE_18__* %163)
  store i8* %164, i8** %3, align 8
  br label %166

165:                                              ; preds = %125, %122
  store i8* null, i8** %3, align 8
  br label %166

166:                                              ; preds = %165, %162
  %167 = load i8*, i8** %3, align 8
  ret i8* %167
}

declare dso_local i32 @compute_tree_index(i64, i32) #1

declare dso_local %struct.TYPE_18__** @treebin_at(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @leftshift_for_tree_index(i32) #1

declare dso_local i64 @chunksize(%struct.TYPE_18__*) #1

declare dso_local i64 @left_bits(i32) #1

declare dso_local i32 @idx2bit(i32) #1

declare dso_local i32 @lj_ffs(i64) #1

declare dso_local %struct.TYPE_18__* @leftmost_child(%struct.TYPE_18__*) #1

declare dso_local i32 @chunk_plus_offset(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @unlink_large_chunk(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @set_inuse_and_pinuse(%struct.TYPE_19__*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_19__*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_free_chunk(i32, i64) #1

declare dso_local i32 @insert_chunk(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i8* @chunk2mem(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
