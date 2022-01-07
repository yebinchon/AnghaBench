; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_set_repo_property.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_set_repo_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i8*, i8*, i32, i32, i32, i64 }

@REPO_AUTO_SYNC = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"System not started, skip setting auto sync value.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@REPO_PROP_SYNC_INTERVAL = common dso_local global i32 0, align 4
@REPO_PROP_SERVER_URL = common dso_local global i32 0, align 4
@REPO_PROP_IS_READONLY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_repo_manager_set_repo_property(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.TYPE_4__* @seaf_repo_manager_get_repo(i32* %13, i8* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %202

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @REPO_AUTO_SYNC, align 4
  %22 = call i64 @strcmp(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 @seaf_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %202

31:                                               ; preds = %24
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @g_strcmp0(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @seaf_wt_monitor_watch_repo(i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %42, %35
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  br label %86

56:                                               ; preds = %31
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @seaf_wt_monitor_unwatch_repo(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %63, %56
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @seaf_sync_manager_cancel_sync_task(i32 %74, i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @seaf_sync_manager_remove_active_path_info(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %71, %53
  br label %87

87:                                               ; preds = %86, %19
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* @REPO_PROP_SYNC_INTERVAL, align 4
  %90 = call i64 @strcmp(i8* %88, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = call i32 @seaf_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %202

99:                                               ; preds = %92
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @atoi(i8* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @seaf_wt_monitor_unwatch_repo(i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %113, %104
  br label %141

122:                                              ; preds = %99
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @seaf_wt_monitor_watch_repo(i32 %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %129, %122
  br label %141

141:                                              ; preds = %140, %121
  br label %142

142:                                              ; preds = %141, %87
  %143 = load i8*, i8** %8, align 8
  %144 = load i32, i32* @REPO_PROP_SERVER_URL, align 4
  %145 = call i64 @strcmp(i8* %143, i32 %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %142
  %148 = load i8*, i8** %9, align 8
  %149 = call i8* @canonical_server_url(i8* %148)
  store i8* %149, i8** %12, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %147
  %155 = load i8*, i8** %12, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  br label %172

158:                                              ; preds = %147
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @g_free(i8* %161)
  %163 = load i8*, i8** %12, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @g_free(i8* %168)
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  store i8* null, i8** %171, align 8
  br label %172

172:                                              ; preds = %158, %154
  %173 = load i32*, i32** %6, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @save_repo_property(i32* %173, i8* %174, i8* %175, i8* %176)
  store i32 0, i32* %5, align 4
  br label %202

178:                                              ; preds = %142
  %179 = load i8*, i8** %8, align 8
  %180 = load i32, i32* @REPO_PROP_IS_READONLY, align 4
  %181 = call i64 @strcmp(i8* %179, i32 %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  %184 = load i8*, i8** %9, align 8
  %185 = call i64 @g_strcmp0(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* @TRUE, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  br label %195

191:                                              ; preds = %183
  %192 = load i32, i32* @FALSE, align 4
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %187
  br label %196

196:                                              ; preds = %195, %178
  %197 = load i32*, i32** %6, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = call i32 @save_repo_property(i32* %197, i8* %198, i8* %199, i8* %200)
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %196, %172, %97, %29, %18
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local %struct.TYPE_4__* @seaf_repo_manager_get_repo(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @seaf_message(i8*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i32 @seaf_wt_monitor_watch_repo(i32, i32, i32) #1

declare dso_local i32 @seaf_wt_monitor_unwatch_repo(i32, i32) #1

declare dso_local i32 @seaf_sync_manager_cancel_sync_task(i32, i32) #1

declare dso_local i32 @seaf_sync_manager_remove_active_path_info(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @canonical_server_url(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @save_repo_property(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
