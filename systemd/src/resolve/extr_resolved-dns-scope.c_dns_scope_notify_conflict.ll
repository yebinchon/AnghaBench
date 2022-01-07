; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_notify_conflict.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_notify_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@dns_resource_key_hash_ops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to queue conflicting RR: %m\00", align 1
@LLMNR_JITTER_INTERVAL_USEC = common dso_local global i32 0, align 4
@on_conflict_dispatch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to add conflict dispatch event: %m\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"scope-conflict\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_scope_notify_conflict(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = call i32 @assert(%struct.TYPE_11__* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = call i32 @ordered_hashmap_ensure_allocated(i32* %13, i32* @dns_resource_key_hash_ops)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 (...) @log_oom()
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = call i32 @ordered_hashmap_put(i32 %23, i32 %26, %struct.TYPE_11__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i64 @IN_SET(i32 %29, i32 0, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %85

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @log_debug_errno(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %3, align 4
  br label %85

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dns_resource_key_ref(i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = call i32 @dns_resource_record_ref(%struct.TYPE_11__* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %85

53:                                               ; preds = %41
  %54 = call i32 @random_bytes(i32* %6, i32 4)
  %55 = load i32, i32* @LLMNR_JITTER_INTERVAL_USEC, align 4
  %56 = load i32, i32* %6, align 4
  %57 = srem i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = call i32 (...) @clock_boottime_or_monotonic()
  %66 = call i32 (...) @clock_boottime_or_monotonic()
  %67 = call i64 @now(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i32, i32* @LLMNR_JITTER_INTERVAL_USEC, align 4
  %72 = load i32, i32* @on_conflict_dispatch, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = call i32 @sd_event_add_time(i32 %62, i64* %64, i32 %65, i64 %70, i32 %71, i32 %72, %struct.TYPE_11__* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %53
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @log_debug_errno(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 %79, i32* %3, align 4
  br label %85

80:                                               ; preds = %53
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @sd_event_source_set_description(i64 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %77, %52, %38, %34, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @ordered_hashmap_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @ordered_hashmap_put(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @dns_resource_key_ref(i32) #1

declare dso_local i32 @dns_resource_record_ref(%struct.TYPE_11__*) #1

declare dso_local i32 @random_bytes(i32*, i32) #1

declare dso_local i32 @sd_event_add_time(i32, i64*, i32, i64, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @sd_event_source_set_description(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
