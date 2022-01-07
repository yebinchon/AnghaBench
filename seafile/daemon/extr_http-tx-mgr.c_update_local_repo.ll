; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_update_local_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_update_local_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32, i32 }

@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to get commit %s:%s.\0A\00", align 1
@SYNC_ERROR_ID_LOCAL_DATA_CORRUPT = common dso_local global i8* null, align 8
@SYNC_ERROR_ID_NOT_ENOUGH_MEMORY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Branch master not found for repo %.8s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @update_local_repo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_local_repo(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_16__* @seaf_commit_manager_get_commit(i32 %10, i32 %13, i32 %16, i32 %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %5, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i8*, i8** @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  store i32 -1, i32* %2, align 4
  br label %170

34:                                               ; preds = %1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_15__* @seaf_repo_manager_get_repo(i32 %37, i32 %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %4, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %166

50:                                               ; preds = %46
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_15__* @seaf_repo_new(i32 %53, i32* null, i32* null)
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %4, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = icmp eq %struct.TYPE_15__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i8*, i8** @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  store i32 -1, i32* %7, align 4
  br label %166

61:                                               ; preds = %50
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = call i32 @seaf_repo_from_commit(%struct.TYPE_15__* %62, %struct.TYPE_16__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = call i32 @seaf_repo_manager_add_repo(i32 %67, %struct.TYPE_15__* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @seaf_branch_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75)
  store i32* %76, i32** %6, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @seaf_branch_manager_add_branch(i32 %79, i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @seaf_branch_unref(i32* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @seaf_branch_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %89)
  store i32* %90, i32** %6, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @seaf_branch_manager_add_branch(i32 %93, i32* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @seaf_branch_unref(i32* %96)
  br label %165

98:                                               ; preds = %34
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = icmp ne %struct.TYPE_15__* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  store i32 -1, i32* %7, align 4
  br label %166

105:                                              ; preds = %98
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32* @seaf_branch_manager_get_branch(i32 %108, i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %112, i32** %6, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %105
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i8*, i8** @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  store i32 -1, i32* %7, align 4
  br label %166

123:                                              ; preds = %105
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @seaf_branch_set_commit(i32* %124, i32 %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @seaf_branch_manager_update_branch(i32 %131, i32* %132)
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @seaf_branch_unref(i32* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @seaf_branch_set_commit(i32* %138, i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @seaf_branch_manager_update_branch(i32 %145, i32* %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @g_strcmp0(i32 %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %123
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @seaf_repo_set_name(%struct.TYPE_15__* %159, i32 %162)
  br label %164

164:                                              ; preds = %158, %123
  br label %165

165:                                              ; preds = %164, %61
  br label %166

166:                                              ; preds = %165, %115, %101, %57, %49
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = call i32 @seaf_commit_unref(%struct.TYPE_16__* %167)
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %23
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_16__* @seaf_commit_manager_get_commit(i32, i32, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32, ...) #1

declare dso_local %struct.TYPE_15__* @seaf_repo_manager_get_repo(i32, i32) #1

declare dso_local %struct.TYPE_15__* @seaf_repo_new(i32, i32*, i32*) #1

declare dso_local i32 @seaf_repo_from_commit(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @seaf_repo_manager_add_repo(i32, %struct.TYPE_15__*) #1

declare dso_local i32* @seaf_branch_new(i8*, i32, i32) #1

declare dso_local i32 @seaf_branch_manager_add_branch(i32, i32*) #1

declare dso_local i32 @seaf_branch_unref(i32*) #1

declare dso_local i32* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_branch_set_commit(i32*, i32) #1

declare dso_local i32 @seaf_branch_manager_update_branch(i32, i32*) #1

declare dso_local i64 @g_strcmp0(i32, i32) #1

declare dso_local i32 @seaf_repo_set_name(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
