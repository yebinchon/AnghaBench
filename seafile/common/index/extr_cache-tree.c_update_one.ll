; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_update_one.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_update_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.cache_entry = type { i8* }
%struct.cache_tree_sub = type { i32, %struct.cache_tree* }

@.str = private unnamed_addr constant [27 x i8] c"save seafile dirent failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32, i32, i32, i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)*)* @update_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_one(i8* %0, i32 %1, i8* %2, %struct.cache_tree* %3, %struct.cache_entry** %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9, i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.cache_tree*, align 8
  %17 = alloca %struct.cache_entry**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.cache_entry*, align 8
  %26 = alloca %struct.cache_tree_sub*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store %struct.cache_tree* %3, %struct.cache_tree** %16, align 8
  store %struct.cache_entry** %4, %struct.cache_entry*** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)* %10, i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)** %23, align 8
  %32 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %33 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 0, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %11
  %37 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %38 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  br label %177

40:                                               ; preds = %11
  store i32 0, i32* %24, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %24, align 4
  %43 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %44 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %49 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load i32, i32* %24, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %24, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %24, align 4
  br label %41

59:                                               ; preds = %41
  store i32 0, i32* %24, align 4
  br label %60

60:                                               ; preds = %153, %59
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %60
  %65 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %65, i64 %67
  %69 = load %struct.cache_entry*, %struct.cache_entry** %68, align 8
  store %struct.cache_entry* %69, %struct.cache_entry** %25, align 8
  %70 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %27, align 8
  %73 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %74 = call i32 @ce_namelen(%struct.cache_entry* %73)
  store i32 %74, i32* %29, align 4
  %75 = load i32, i32* %29, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %64
  %79 = load i8*, i8** %19, align 8
  %80 = load i8*, i8** %27, align 8
  %81 = load i32, i32* %20, align 4
  %82 = call i64 @memcmp(i8* %79, i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %64
  br label %156

85:                                               ; preds = %78
  %86 = load i8*, i8** %27, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = call i8* @strchr(i8* %89, i8 signext 47)
  store i8* %90, i8** %28, align 8
  %91 = load i8*, i8** %28, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %153

94:                                               ; preds = %85
  %95 = load i8*, i8** %28, align 8
  %96 = load i8*, i8** %27, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = ptrtoint i8* %95 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %30, align 4
  %104 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %105 = load i8*, i8** %27, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* %30, align 4
  %110 = call %struct.cache_tree_sub* @find_subtree(%struct.cache_tree* %104, i8* %108, i32 %109, i32 1)
  store %struct.cache_tree_sub* %110, %struct.cache_tree_sub** %26, align 8
  %111 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %26, align 8
  %112 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %111, i32 0, i32 1
  %113 = load %struct.cache_tree*, %struct.cache_tree** %112, align 8
  %114 = icmp ne %struct.cache_tree* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %94
  %116 = call %struct.cache_tree* (...) @cache_tree()
  %117 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %26, align 8
  %118 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %117, i32 0, i32 1
  store %struct.cache_tree* %116, %struct.cache_tree** %118, align 8
  br label %119

119:                                              ; preds = %115, %94
  %120 = load i8*, i8** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i8*, i8** %15, align 8
  %123 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %26, align 8
  %124 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %123, i32 0, i32 1
  %125 = load %struct.cache_tree*, %struct.cache_tree** %124, align 8
  %126 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %127 = load i32, i32* %24, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %126, i64 %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %24, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i8*, i8** %27, align 8
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %30, align 4
  %136 = add nsw i32 %134, %135
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)*, i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)** %23, align 8
  %141 = call i32 @update_one(i8* %120, i32 %121, i8* %122, %struct.cache_tree* %125, %struct.cache_entry** %129, i32 %132, i8* %133, i32 %137, i32 %138, i32 %139, i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)* %140)
  store i32 %141, i32* %31, align 4
  %142 = load i32, i32* %31, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %119
  %145 = load i32, i32* %31, align 4
  store i32 %145, i32* %12, align 4
  br label %177

146:                                              ; preds = %119
  %147 = load i32, i32* %31, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %24, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %24, align 4
  %151 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %26, align 8
  %152 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  br label %153

153:                                              ; preds = %146, %93
  %154 = load i32, i32* %24, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %24, align 4
  br label %60

156:                                              ; preds = %84, %60
  %157 = load i32, i32* %24, align 4
  %158 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %159 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %161 = call i32 @discard_unused_subtrees(%struct.cache_tree* %160)
  %162 = load i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)*, i64 (i8*, i32, i8*, %struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32)** %23, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i8*, i8** %15, align 8
  %166 = load %struct.cache_tree*, %struct.cache_tree** %16, align 8
  %167 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %168 = load i32, i32* %18, align 4
  %169 = load i8*, i8** %19, align 8
  %170 = load i32, i32* %20, align 4
  %171 = call i64 %162(i8* %163, i32 %164, i8* %165, %struct.cache_tree* %166, %struct.cache_entry** %167, i32 %168, i8* %169, i32 %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %156
  %174 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %177

175:                                              ; preds = %156
  %176 = load i32, i32* %24, align 4
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %175, %173, %144, %36
  %178 = load i32, i32* %12, align 4
  ret i32 %178
}

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.cache_tree_sub* @find_subtree(%struct.cache_tree*, i8*, i32, i32) #1

declare dso_local %struct.cache_tree* @cache_tree(...) #1

declare dso_local i32 @discard_unused_subtrees(%struct.cache_tree*) #1

declare dso_local i32 @seaf_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
