; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_find_transaction.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_find_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@DNS_TRANSACTION_SUCCESS = common dso_local global i32 0, align 4
@DNS_TRANSACTION_RCODE_FAILURE = common dso_local global i32 0, align 4
@DNS_TRANSACTION_NETWORK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @dns_scope_find_transaction(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = call i32 @assert(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = call %struct.TYPE_10__* @hashmap_get(i32 %15, %struct.TYPE_11__* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %41

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DNS_TRANSACTION_SUCCESS, align 4
  %29 = load i32, i32* @DNS_TRANSACTION_RCODE_FAILURE, align 4
  %30 = call i64 @IN_SET(i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DNS_TRANSACTION_NETWORK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %41

39:                                               ; preds = %32, %24, %21
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %4, align 8
  br label %41

41:                                               ; preds = %39, %38, %20
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %42
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @hashmap_get(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
