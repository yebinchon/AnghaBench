; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8* }

@.str = private unnamed_addr constant [50 x i8] c"Removing scope on link %s, protocol %s, family %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@dns_resource_record_unref = common dso_local global i32 0, align 4
@scopes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @dns_scope_free(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %5 = icmp ne %struct.TYPE_14__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %89

7:                                                ; preds = %1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 10
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 10
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i8* [ %17, %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dns_protocol_to_string(i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_UNSPEC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %36

31:                                               ; preds = %19
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @af_to_name(i64 %34)
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %30 ], [ %35, %31 ]
  %38 = call i32 @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %24, i8* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = call i32 @dns_scope_llmnr_membership(%struct.TYPE_14__* %39, i32 0)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = call i32 @dns_scope_mdns_membership(%struct.TYPE_14__* %41, i32 0)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = call i32 @dns_scope_abort_transactions(%struct.TYPE_14__* %43)
  br label %45

45:                                               ; preds = %50, %36
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dns_query_candidate_free(i64 %53)
  br label %45

55:                                               ; preds = %45
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hashmap_free(i32 %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @dns_resource_record_unref, align 4
  %64 = call i32 @ordered_hashmap_free_with_destructor(i32 %62, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sd_event_source_unref(i32 %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sd_event_source_unref(i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = call i32 @dns_cache_flush(i32* %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = call i32 @dns_zone_flush(i32* %77)
  %79 = load i32, i32* @scopes, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = call i32 @LIST_REMOVE(i32 %79, i32 %84, %struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = call %struct.TYPE_14__* @mfree(%struct.TYPE_14__* %87)
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %2, align 8
  br label %89

89:                                               ; preds = %55, %6
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %90
}

declare dso_local i32 @log_debug(i8*, i8*, i32, i8*) #1

declare dso_local i32 @dns_protocol_to_string(i32) #1

declare dso_local i8* @af_to_name(i64) #1

declare dso_local i32 @dns_scope_llmnr_membership(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dns_scope_mdns_membership(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dns_scope_abort_transactions(%struct.TYPE_14__*) #1

declare dso_local i32 @dns_query_candidate_free(i64) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @ordered_hashmap_free_with_destructor(i32, i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @dns_cache_flush(i32*) #1

declare dso_local i32 @dns_zone_flush(i32*) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @mfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
