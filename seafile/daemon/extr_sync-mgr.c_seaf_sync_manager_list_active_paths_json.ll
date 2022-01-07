; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_list_active_paths_json.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_list_active_paths_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"repo_id\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"paths\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to convert active paths to json\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @seaf_sync_manager_list_active_paths_json(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = call i32* (...) @json_array()
  store i32* %17, i32** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @g_hash_table_iter_init(i32* %6, i32 %22)
  br label %24

24:                                               ; preds = %27, %1
  %25 = call i64 @g_hash_table_iter_next(i32* %6, i8** %7, i8** %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %10, align 8
  %31 = call i32* (...) @json_object()
  store i32* %31, i32** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @active_paths_to_json(i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32* @json_string(i8* %37)
  %39 = call i32 @json_object_set(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @json_object_set(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @json_array_append(i32* %43, i32* %44)
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @pthread_mutex_unlock(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @JSON_INDENT(i32 4)
  %54 = call i8* @json_dumps(i32* %52, i32 %53)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = call i32 @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @json_decref(i32* %60)
  %62 = load i8*, i8** %11, align 8
  ret i8* %62
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @g_hash_table_iter_init(i32*, i32) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, i8**, i8**) #1

declare dso_local i32* @json_object(...) #1

declare dso_local i32* @active_paths_to_json(i32) #1

declare dso_local i32 @json_object_set(i32*, i8*, i32*) #1

declare dso_local i32* @json_string(i8*) #1

declare dso_local i32 @json_array_append(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i32 @JSON_INDENT(i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
