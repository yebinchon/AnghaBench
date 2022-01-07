; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_commit_tree_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_commit_tree_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i8* }

@seaf = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to save dir object %s to repo %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_15__*, i32*)* @commit_tree_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @commit_tree_recursive(i8* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @g_hash_table_iter_init(i32* %9, i32 %19)
  br label %21

21:                                               ; preds = %60, %3
  %22 = call i64 @g_hash_table_iter_next(i32* %9, %struct.TYPE_13__** %10, %struct.TYPE_13__** %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %8, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = call i8* @commit_tree_recursive(i8* %31, %struct.TYPE_15__* %34, i32* %13)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i8* null, i8** %4, align 8
  br label %116

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @memcpy(i32 %42, i8* %43, i32 40)
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @g_free(i8* %48)
  br label %50

50:                                               ; preds = %39, %24
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %50
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = call %struct.TYPE_14__* @changeset_dir_to_seaf_dir(%struct.TYPE_15__* %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %15, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @memcpy(i32 %66, i8* %69, i32 40)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @seaf_fs_manager_object_exists(i32 %73, i8* %74, i32 %77, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %61
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %92 = call i64 @seaf_dir_save(i32 %86, i8* %87, i32 %90, %struct.TYPE_14__* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @seaf_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %97, i8* %98)
  br label %106

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100, %61
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @g_strdup(i8* %104)
  store i8* %105, i8** %16, align 8
  br label %106

106:                                              ; preds = %101, %94
  %107 = load i8*, i8** %16, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %114 = call i32 @seaf_dir_free(%struct.TYPE_14__* %113)
  %115 = load i8*, i8** %16, align 8
  store i8* %115, i8** %4, align 8
  br label %116

116:                                              ; preds = %112, %38
  %117 = load i8*, i8** %4, align 8
  ret i8* %117
}

declare dso_local i32 @g_hash_table_iter_init(i32*, i32) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, %struct.TYPE_13__**, %struct.TYPE_13__**) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local %struct.TYPE_14__* @changeset_dir_to_seaf_dir(%struct.TYPE_15__*) #1

declare dso_local i32 @seaf_fs_manager_object_exists(i32, i8*, i32, i8*) #1

declare dso_local i64 @seaf_dir_save(i32, i8*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
