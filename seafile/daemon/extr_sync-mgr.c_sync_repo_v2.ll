; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_sync_repo_v2.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_sync_repo_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8* }

@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"No master branch found for repo %s(%.8s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"No local branch found for repo %s(%.8s).\0A\00", align 1
@REPO_PROP_DOWNLOAD_HEAD = common dso_local global i32 0, align 4
@EMPTY_SHA1 = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Repo %s is not changed on server %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i64)* @sync_repo_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_repo_v2(i32* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_12__* @seaf_branch_manager_get_branch(i32 %15, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seaf_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  store i32 -1, i32* %4, align 4
  br label %175

30:                                               ; preds = %3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_12__* @seaf_branch_manager_get_branch(i32 %33, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %9, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @seaf_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %46)
  store i32 -1, i32* %4, align 4
  br label %175

48:                                               ; preds = %30
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @REPO_PROP_DOWNLOAD_HEAD, align 4
  %56 = call i8* @seaf_repo_manager_get_repo_property(i32 %51, i32 %54, i32 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %48
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** @EMPTY_SHA1, align 8
  %62 = call i64 @strcmp(i8* %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = call i64 @can_schedule_repo(i32* %68, %struct.TYPE_11__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67, %64
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32* @create_sync_task_v2(i32* %73, %struct.TYPE_11__* %74, i64 %75, i32 %76)
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @start_fetch_if_necessary(i32* %78, i8* %79)
  br label %81

81:                                               ; preds = %72, %67
  br label %167

82:                                               ; preds = %59, %48
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strcmp(i8* %85, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %82
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = call i64 @can_schedule_repo(i32* %95, %struct.TYPE_11__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94, %91
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32* @create_sync_task_v2(i32* %100, %struct.TYPE_11__* %101, i64 %102, i32 %103)
  store i32* %104, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @start_upload_if_necessary(i32* %105)
  br label %107

107:                                              ; preds = %99, %94
  br label %167

108:                                              ; preds = %82
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32* @create_sync_task_v2(i32* %112, %struct.TYPE_11__* %113, i64 %114, i32 %115)
  store i32* %116, i32** %10, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @commit_repo(i32* %117)
  br label %167

119:                                              ; preds = %108
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i64 @create_commit_from_event_queue(i32* %120, %struct.TYPE_11__* %121, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %167

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = call i64 @can_schedule_repo(i32* %132, %struct.TYPE_11__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %131, %128
  %137 = load i64, i64* %7, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %136
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @need_check_on_server(i32* %140, %struct.TYPE_11__* %141, i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %139
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @seaf_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %153)
  %155 = call i32 @time(i32* null)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %167

158:                                              ; preds = %139, %136
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = load i32, i32* @FALSE, align 4
  %163 = call i32* @create_sync_task_v2(i32* %159, %struct.TYPE_11__* %160, i64 %161, i32 %162)
  store i32* %163, i32** %10, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @check_head_commit_http(i32* %164)
  br label %166

166:                                              ; preds = %158, %131
  br label %167

167:                                              ; preds = %166, %147, %125, %111, %107, %81
  %168 = load i8*, i8** %12, align 8
  %169 = call i32 @g_free(i8* %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %171 = call i32 @seaf_branch_unref(%struct.TYPE_12__* %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %173 = call i32 @seaf_branch_unref(%struct.TYPE_12__* %172)
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %167, %40, %22
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_12__* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32, i32) #1

declare dso_local i8* @seaf_repo_manager_get_repo_property(i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @can_schedule_repo(i32*, %struct.TYPE_11__*) #1

declare dso_local i32* @create_sync_task_v2(i32*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @start_fetch_if_necessary(i32*, i8*) #1

declare dso_local i32 @start_upload_if_necessary(i32*) #1

declare dso_local i32 @commit_repo(i32*) #1

declare dso_local i64 @create_commit_from_event_queue(i32*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @need_check_on_server(i32*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @seaf_debug(i8*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @check_head_commit_http(i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
