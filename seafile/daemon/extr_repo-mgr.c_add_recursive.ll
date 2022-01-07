; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.index_state = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32, i8*, i8*, i32*, i32**, i32*, i32*, i32, i32*, %struct.index_state* }

@PATH_SEPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to stat %s.\0A\00", align 1
@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@SYNC_STATUS_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.index_state*, i8*, i8*, i32*, i32, i32*, i32*, i32**, i32*)* @add_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recursive(i8* %0, i32 %1, i8* %2, %struct.index_state* %3, i8* %4, i8* %5, i32* %6, i32 %7, i32* %8, i32* %9, i32** %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.index_state*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_9__, align 4
  %28 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %14, align 8
  store i32 %1, i32* %15, align 4
  store i8* %2, i8** %16, align 8
  store %struct.index_state* %3, %struct.index_state** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32** %10, i32*** %24, align 8
  store i32* %11, i32** %25, align 8
  %29 = load i32, i32* @PATH_SEPERATOR, align 4
  %30 = load i8*, i8** %18, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = call i8* @g_build_path(i32 %29, i8* %30, i8* %31, i32* null)
  store i8* %32, i8** %26, align 8
  %33 = load i8*, i8** %26, align 8
  %34 = call i64 @seaf_stat(i8* %33, %struct.TYPE_9__* %27)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %12
  %37 = load i8*, i8** %26, align 8
  %38 = call i64 @lstat(i8* %37, %struct.TYPE_9__* %27)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @S_ISLNK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %26, align 8
  %47 = call i32 @g_free(i8* %46)
  store i32 0, i32* %13, align 4
  br label %113

48:                                               ; preds = %40, %36
  %49 = load i8*, i8** %26, align 8
  %50 = call i32 @seaf_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %26, align 8
  %52 = call i32 @g_free(i8* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load i32, i32* @SYNC_STATUS_ERROR, align 4
  %59 = call i32 @seaf_sync_manager_update_active_path(i32 %55, i8* %56, i8* %57, i32 0, i32 %58)
  store i32 0, i32* %13, align 4
  br label %113

60:                                               ; preds = %12
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISREG(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = load %struct.index_state*, %struct.index_state** %17, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = load i8*, i8** %26, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i32*, i32** %23, align 8
  %74 = load i32**, i32*** %24, align 8
  %75 = load i32*, i32** %25, align 8
  %76 = call i32 @add_file(i8* %66, i32 %67, i8* %68, %struct.index_state* %69, i8* %70, i8* %71, %struct.TYPE_9__* %27, i32* %72, i32* %73, i32** %74, i32* %75)
  br label %110

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @S_ISDIR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %84 = load i8*, i8** %14, align 8
  store i8* %84, i8** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %88 = load i8*, i8** %16, align 8
  store i8* %88, i8** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %90 = load i8*, i8** %18, align 8
  store i8* %90, i8** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  %92 = load i32*, i32** %25, align 8
  store i32* %92, i32** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %94 = load i32**, i32*** %24, align 8
  store i32** %94, i32*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 6
  %96 = load i32*, i32** %23, align 8
  store i32* %96, i32** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 7
  %98 = load i32*, i32** %22, align 8
  store i32* %98, i32** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 8
  %100 = load i32, i32* %21, align 4
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 9
  %102 = load i32*, i32** %20, align 8
  store i32* %102, i32** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 10
  %104 = load %struct.index_state*, %struct.index_state** %17, align 8
  store %struct.index_state* %104, %struct.index_state** %103, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = load i8*, i8** %26, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i32 @add_dir_recursive(i8* %105, i8* %106, %struct.TYPE_9__* %27, %struct.TYPE_10__* %28, i32 %107)
  br label %109

109:                                              ; preds = %82, %77
  br label %110

110:                                              ; preds = %109, %65
  %111 = load i8*, i8** %26, align 8
  %112 = call i32 @g_free(i8* %111)
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %110, %48, %45
  %114 = load i32, i32* %13, align 4
  ret i32 %114
}

declare dso_local i8* @g_build_path(i32, i8*, i8*, i32*) #1

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @lstat(i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @add_file(i8*, i32, i8*, %struct.index_state*, i8*, i8*, %struct.TYPE_9__*, i32*, i32*, i32**, i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @add_dir_recursive(i8*, i8*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
