; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_resolve_renames.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_resolve_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }

@ccnet_sha1_hash = common dso_local global i32 0, align 4
@ccnet_sha1_equal = common dso_local global i32 0, align 4
@DIFF_STATUS_DELETED = common dso_local global i64 0, align 8
@DIFF_STATUS_DIR_DELETED = common dso_local global i64 0, align 8
@DIFF_STATUS_ADDED = common dso_local global i64 0, align 8
@DIFF_STATUS_DIR_ADDED = common dso_local global i64 0, align 8
@DIFF_STATUS_DIR_RENAMED = common dso_local global i32 0, align 4
@DIFF_STATUS_RENAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_resolve_renames(%struct.TYPE_14__** %0) #0 {
  %2 = alloca %struct.TYPE_14__**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %2, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 20)
  %16 = load i32, i32* @ccnet_sha1_hash, align 4
  %17 = load i32, i32* @ccnet_sha1_equal, align 4
  %18 = call i32* @g_hash_table_new(i32 %16, i32 %17)
  store i32* %18, i32** %3, align 8
  %19 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %4, align 8
  br label %21

21:                                               ; preds = %54, %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %6, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DIFF_STATUS_DELETED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DIFF_STATUS_DIR_DELETED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33, %24
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %44 = call i64 @memcmp(i32 %42, i8* %43, i32 20)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = call i32 @g_hash_table_insert(i32* %47, i32 %50, %struct.TYPE_14__* %51)
  br label %53

53:                                               ; preds = %46, %39, %33
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %4, align 8
  br label %21

58:                                               ; preds = %21
  %59 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %4, align 8
  br label %61

61:                                               ; preds = %91, %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DIFF_STATUS_ADDED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DIFF_STATUS_DIR_ADDED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73, %64
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %84 = call i64 @memcmp(i32 %82, i8* %83, i32 20)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = call %struct.TYPE_14__* @g_list_prepend(%struct.TYPE_14__* %87, %struct.TYPE_14__* %88)
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %5, align 8
  br label %90

90:                                               ; preds = %86, %79, %73
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %4, align 8
  br label %61

95:                                               ; preds = %61
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %4, align 8
  br label %97

97:                                               ; preds = %169, %95
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = icmp ne %struct.TYPE_14__* %98, null
  br i1 %99, label %100, label %173

100:                                              ; preds = %97
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %8, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %10, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.TYPE_14__* @g_hash_table_lookup(i32* %107, i32 %110)
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %9, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %169

114:                                              ; preds = %100
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %11, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DIFF_STATUS_DIR_ADDED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @DIFF_STATUS_DIR_RENAMED, align 4
  store i32 %124, i32* %13, align 4
  br label %127

125:                                              ; preds = %114
  %126 = load i32, i32* @DIFF_STATUS_RENAMED, align 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.TYPE_14__* @diff_entry_new(i32 %130, i32 %131, i32 %134, i32 %137)
  store %struct.TYPE_14__* %138, %struct.TYPE_14__** %12, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @g_strdup(i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = call %struct.TYPE_14__* @g_list_delete_link(%struct.TYPE_14__* %146, %struct.TYPE_14__* %147)
  %149 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** %149, align 8
  %150 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = call %struct.TYPE_14__* @g_list_delete_link(%struct.TYPE_14__* %151, %struct.TYPE_14__* %152)
  %154 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  store %struct.TYPE_14__* %153, %struct.TYPE_14__** %154, align 8
  %155 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %158 = call %struct.TYPE_14__* @g_list_prepend(%struct.TYPE_14__* %156, %struct.TYPE_14__* %157)
  %159 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  store %struct.TYPE_14__* %158, %struct.TYPE_14__** %159, align 8
  %160 = load i32*, i32** %3, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @g_hash_table_remove(i32* %160, i32 %163)
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %166 = call i32 @diff_entry_free(%struct.TYPE_14__* %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %168 = call i32 @diff_entry_free(%struct.TYPE_14__* %167)
  br label %169

169:                                              ; preds = %127, %100
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %172 = call %struct.TYPE_14__* @g_list_delete_link(%struct.TYPE_14__* %170, %struct.TYPE_14__* %171)
  store %struct.TYPE_14__* %172, %struct.TYPE_14__** %4, align 8
  br label %97

173:                                              ; preds = %97
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @g_hash_table_destroy(i32* %174)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @g_hash_table_new(i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @g_hash_table_insert(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @g_list_prepend(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @g_hash_table_lookup(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @diff_entry_new(i32, i32, i32, i32) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local %struct.TYPE_14__* @g_list_delete_link(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @g_hash_table_remove(i32*, i32) #1

declare dso_local i32 @diff_entry_free(%struct.TYPE_14__*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
