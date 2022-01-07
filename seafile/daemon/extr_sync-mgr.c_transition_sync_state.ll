; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_transition_sync_state.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_transition_sync_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_14__*, %struct.TYPE_10__*, i64, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i8*, i8*, i8* }

@SYNC_STATE_NUM = common dso_local global i32 0, align 4
@SYNC_STATE_INIT = common dso_local global i32 0, align 4
@SYNC_STATE_FETCH = common dso_local global i32 0, align 4
@SYNC_STATE_DONE = common dso_local global i32 0, align 4
@SYNC_STATE_ERROR = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Repo '%s' sync is finished but with error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Repo '%s' sync state transition from '%s' to '%s'.\0A\00", align 1
@sync_state_str = common dso_local global i32* null, align 8
@SYNC_STATE_CANCELED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @transition_sync_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transition_sync_state(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYNC_STATE_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @g_return_if_fail(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %5, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %191

24:                                               ; preds = %12
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SYNC_STATE_INIT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SYNC_STATE_FETCH, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SYNC_STATE_DONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = call i64 @need_notify_sync(%struct.TYPE_14__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %51
  %66 = phi i1 [ false, %51 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @notify_sync(%struct.TYPE_14__* %54, i32 %67)
  br label %69

69:                                               ; preds = %65, %45, %41, %35
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SYNC_STATE_DONE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = call i32 @commit_repo(%struct.TYPE_11__* %84)
  br label %191

86:                                               ; preds = %78, %73, %69
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @SYNC_STATE_ERROR, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %86
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SYNC_ERROR_ID_NO_ERROR, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, i32* @SYNC_STATE_ERROR, align 4
  store i32 %97, i32* %4, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @sync_error_id_to_str(i64 %105)
  %107 = call i32 (i8*, i32, i32, ...) @seaf_message(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %96, %90, %86
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SYNC_STATE_DONE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @SYNC_STATE_INIT, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %147, label %118

118:                                              ; preds = %114, %108
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SYNC_STATE_INIT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @SYNC_STATE_DONE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %147, label %128

128:                                              ; preds = %124, %118
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @sync_state_str, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** @sync_state_str, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i32, i32, ...) @seaf_message(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %140, i32 %145)
  br label %147

147:                                              ; preds = %128, %124, %114
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @SYNC_STATE_DONE, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %162, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @SYNC_STATE_CANCELED, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @SYNC_STATE_ERROR, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %158, %154, %147
  %163 = load i8*, i8** @FALSE, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 4
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @update_sync_info_error_state(%struct.TYPE_11__* %172, i32 %173)
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @SYNC_STATE_DONE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %162
  %179 = load i8*, i8** @FALSE, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @FALSE, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %178, %162
  br label %190

190:                                              ; preds = %189, %158
  br label %191

191:                                              ; preds = %83, %190, %12
  ret void
}

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i64 @need_notify_sync(%struct.TYPE_14__*) #1

declare dso_local i32 @notify_sync(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @commit_repo(%struct.TYPE_11__*) #1

declare dso_local i32 @seaf_message(i8*, i32, i32, ...) #1

declare dso_local i32 @sync_error_id_to_str(i64) #1

declare dso_local i32 @update_sync_info_error_state(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
