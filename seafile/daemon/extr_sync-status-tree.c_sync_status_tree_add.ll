; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_sync_status_tree_add.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_sync_status_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@S_IFDIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_status_tree_add(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8** null, i8*** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %11, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8** @g_strsplit(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8** %18, i8*** %7, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %113

22:                                               ; preds = %3
  %23 = load i8**, i8*** %7, align 8
  %24 = call i64 @g_strv_length(i8** %23)
  store i64 %24, i64* %8, align 8
  %25 = call %struct.TYPE_16__* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %13, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @g_string_append(%struct.TYPE_16__* %26, i8* %29)
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %103, %22
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %106

35:                                               ; preds = %31
  %36 = load i8**, i8*** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %10, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call %struct.TYPE_14__* @g_hash_table_lookup(i32 %42, i8* %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %12, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %46 = call i32 @g_string_append(%struct.TYPE_16__* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @g_string_append(%struct.TYPE_16__* %47, i8* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %35
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @S_ISDIR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %60, 1
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %107

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %11, align 8
  br label %68

68:                                               ; preds = %64
  br label %70

69:                                               ; preds = %52
  br label %107

70:                                               ; preds = %68
  br label %102

71:                                               ; preds = %35
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub i64 %73, 1
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call %struct.TYPE_14__* @sync_status_dirent_new(i8* %77, i32 %78)
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %12, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @g_strdup(i8* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %86 = call i32 @g_hash_table_insert(i32 %82, i32 %84, %struct.TYPE_14__* %85)
  br label %101

87:                                               ; preds = %71
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* @S_IFDIR, align 4
  %90 = call %struct.TYPE_14__* @sync_status_dirent_new(i8* %88, i32 %89)
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %12, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @g_strdup(i8* %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = call i32 @g_hash_table_insert(i32 %93, i32 %95, %struct.TYPE_14__* %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  store %struct.TYPE_15__* %100, %struct.TYPE_15__** %11, align 8
  br label %101

101:                                              ; preds = %87, %76
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  br label %31

106:                                              ; preds = %31
  br label %107

107:                                              ; preds = %106, %69, %63
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @g_string_free(%struct.TYPE_16__* %108, i32 %109)
  %111 = load i8**, i8*** %7, align 8
  %112 = call i32 @g_strfreev(i8** %111)
  br label %113

113:                                              ; preds = %107, %21
  ret void
}

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i64 @g_strv_length(i8**) #1

declare dso_local %struct.TYPE_16__* @g_string_new(i8*) #1

declare dso_local i32 @g_string_append(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_14__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_14__* @sync_status_dirent_new(i8*, i32) #1

declare dso_local i32 @g_hash_table_insert(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
