; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_on_repo_http_fetched.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_on_repo_http_fetched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@CLONE_STATE_CANCELED = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"[Clone mgr] cannot find repo %s after fetched.\0A\00", align 1
@SYNC_ERROR_ID_LOCAL_DATA_CORRUPT = common dso_local global i32 0, align 4
@REPO_PROP_SERVER_URL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_18__*)* @on_repo_http_fetched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_repo_http_fetched(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %115

14:                                               ; preds = %3
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_20__* @g_hash_table_lookup(i32 %17, i32 %20)
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %7, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = icmp ne %struct.TYPE_20__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @g_return_if_fail(i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %14
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = load i32, i32* @CLONE_STATE_CANCELED, align 4
  %34 = call i32 @transition_state(%struct.TYPE_20__* %32, i32 %33)
  br label %115

35:                                               ; preds = %14
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HTTP_TASK_STATE_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @transition_to_error(%struct.TYPE_20__* %42, i32 %45)
  br label %115

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_17__* @seaf_repo_manager_get_repo(i32 %51, i32 %54)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %8, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = icmp eq %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @seaf_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = load i32, i32* @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 4
  %65 = call i32 @transition_to_error(%struct.TYPE_20__* %63, i32 %64)
  br label %115

66:                                               ; preds = %48
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @seaf_repo_manager_set_repo_token(i32 %69, %struct.TYPE_17__* %70, i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @seaf_repo_manager_set_repo_email(i32 %77, %struct.TYPE_17__* %78, i32 %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @seaf_repo_manager_set_repo_relay_info(i32 %85, i32 %88, i32 %91, i32 %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %66
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @REPO_PROP_SERVER_URL, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @seaf_repo_manager_set_repo_property(i32 %103, i32 %106, i32 %107, i64 %110)
  br label %112

112:                                              ; preds = %100, %66
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %114 = call i32 @check_folder_permissions(%struct.TYPE_20__* %113)
  br label %115

115:                                              ; preds = %112, %58, %41, %31, %13
  ret void
}

declare dso_local %struct.TYPE_20__* @g_hash_table_lookup(i32, i32) #1

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @transition_state(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @transition_to_error(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_17__* @seaf_repo_manager_get_repo(i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_token(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_email(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_relay_info(i32, i32, i32, i32) #1

declare dso_local i32 @seaf_repo_manager_set_repo_property(i32, i32, i32, i64) #1

declare dso_local i32 @check_folder_permissions(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
