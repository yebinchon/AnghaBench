; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_update_repos_server_host.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_update_repos_server_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }

@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@REPO_PROP_SERVER_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_repo_manager_update_repos_server_host(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_7__* @seaf_repo_manager_get_repo_list(i32 %17, i32 0, i32 -1)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @canonical_server_url(i8* %19)
  store i8* %20, i8** %12, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %9, align 8
  br label %22

22:                                               ; preds = %70, %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @seaf_repo_manager_get_repo_relay_info(i32 %31, i32 %34, i8** %13, i8** %14)
  %36 = load i8*, i8** %13, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @g_strcmp0(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %25
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @seaf_repo_manager_set_repo_relay_info(i32 %43, i32 %46, i8* %47, i8* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @update_server_properties(i32* %50, i32 %53, i8* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @REPO_PROP_SERVER_URL, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @seaf_repo_manager_set_repo_property(i32 %58, i32 %61, i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %40, %25
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @g_free(i8* %66)
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @g_free(i8* %68)
  br label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %9, align 8
  br label %22

74:                                               ; preds = %22
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = call i32 @g_list_free(%struct.TYPE_7__* %75)
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @g_free(i8* %77)
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @seaf_repo_manager_get_repo_list(i32, i32, i32) #1

declare dso_local i8* @canonical_server_url(i8*) #1

declare dso_local i32 @seaf_repo_manager_get_repo_relay_info(i32, i32, i8**, i8**) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i32 @seaf_repo_manager_set_repo_relay_info(i32, i32, i8*, i8*) #1

declare dso_local i32 @update_server_properties(i32*, i32, i8*) #1

declare dso_local i32 @seaf_repo_manager_set_repo_property(i32, i32, i32, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
