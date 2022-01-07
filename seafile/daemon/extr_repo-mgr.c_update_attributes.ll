; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_attributes.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to stat %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@DIFF_STATUS_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.index_state*, i8*, i8*)* @update_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_attributes(%struct.TYPE_9__* %0, %struct.index_state* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.index_state* %1, %struct.index_state** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.index_state*, %struct.index_state** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %17, i8* %18, i32 %20, i32 0)
  store %struct.cache_entry* %21, %struct.cache_entry** %11, align 8
  %22 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %23 = icmp ne %struct.cache_entry* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %80

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @g_build_filename(i8* %26, i8* %27, i32* null)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @seaf_stat(i8* %29, %struct.TYPE_8__* %12)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @g_free(i8* %37)
  br label %80

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @create_ce_mode(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %52 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %48, %39
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %59 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %63 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.index_state*, %struct.index_state** %6, align 8
  %66 = getelementptr inbounds %struct.index_state, %struct.index_state* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* @DIFF_STATUS_MODIFIED, align 4
  %69 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %70 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @add_to_changeset(i32* %67, i32 %68, i32 %71, %struct.TYPE_8__* %12, i32 %74, i8* %75, i32* null)
  br label %77

77:                                               ; preds = %56, %48
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @g_free(i8* %78)
  br label %80

80:                                               ; preds = %77, %32, %24
  ret void
}

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i32 @add_to_changeset(i32*, i32, i32, %struct.TYPE_8__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
