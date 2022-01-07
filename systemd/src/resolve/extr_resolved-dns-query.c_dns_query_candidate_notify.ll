; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-query.c_dns_query_candidate_notify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-query.c_dns_query_candidate_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }

@DNS_TRANSACTION_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to follow search domains: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_query_candidate_notify(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_8__* %5)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i64 @dns_query_candidate_state(%struct.TYPE_8__* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @DNS_TRANSACTION_IS_LIVE(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %64

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @DNS_TRANSACTION_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = call i32 @dns_query_candidate_next_search_domain(%struct.TYPE_8__* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %54

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = call i32 @dns_query_candidate_setup_transactions(%struct.TYPE_8__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %54

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = call i32 @dns_query_candidate_go(%struct.TYPE_8__* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %54

46:                                               ; preds = %40
  br label %64

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %17, %13
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dns_query_ready(i32 %52)
  br label %64

54:                                               ; preds = %45, %36, %27
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @log_warning_errno(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dns_query_ready(i32 %62)
  br label %64

64:                                               ; preds = %54, %49, %46, %12
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i64 @dns_query_candidate_state(%struct.TYPE_8__*) #1

declare dso_local i64 @DNS_TRANSACTION_IS_LIVE(i64) #1

declare dso_local i32 @dns_query_candidate_next_search_domain(%struct.TYPE_8__*) #1

declare dso_local i32 @dns_query_candidate_setup_transactions(%struct.TYPE_8__*) #1

declare dso_local i32 @dns_query_candidate_go(%struct.TYPE_8__*) #1

declare dso_local i32 @dns_query_ready(i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
