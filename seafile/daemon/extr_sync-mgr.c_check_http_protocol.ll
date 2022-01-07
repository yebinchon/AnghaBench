; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_check_http_protocol.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_check_http_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_13__ = type { i64, i64, i64, i8*, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CHECK_HTTP_INTERVAL = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@check_http_protocol_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @check_http_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_http_protocol(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %3, align 8
  br label %109

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_13__* @g_hash_table_lookup(i32 %17, i32 %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %14
  %25 = call %struct.TYPE_13__* (...) @http_server_state_new()
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @g_strdup(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = call i32 @g_hash_table_insert(i32 %28, i8* %32, %struct.TYPE_13__* %33)
  br label %35

35:                                               ; preds = %24, %14
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %3, align 8
  br label %109

42:                                               ; preds = %35
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @g_strdup(i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %52, %47
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %3, align 8
  br label %109

66:                                               ; preds = %42
  %67 = call i64 @time(i32* null)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load i64, i64* @CHECK_HTTP_INTERVAL, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %3, align 8
  br label %109

77:                                               ; preds = %66
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @g_free(i8* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @g_strdup(i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = call i64 @time(i32* null)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* @FALSE, align 8
  %98 = load i32, i32* @check_http_protocol_done, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = call i64 @http_tx_manager_check_protocol_version(i32 %93, i32 %96, i64 %97, i32 %98, %struct.TYPE_13__* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %77
  %103 = load i64, i64* @FALSE, align 8
  store i64 %103, i64* %3, align 8
  br label %109

104:                                              ; preds = %77
  %105 = load i64, i64* @TRUE, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* @FALSE, align 8
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %104, %102, %75, %64, %40, %12
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local %struct.TYPE_13__* @g_hash_table_lookup(i32, i32) #1

declare dso_local %struct.TYPE_13__* @http_server_state_new(...) #1

declare dso_local i32 @g_hash_table_insert(i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @http_tx_manager_check_protocol_version(i32, i32, i64, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
