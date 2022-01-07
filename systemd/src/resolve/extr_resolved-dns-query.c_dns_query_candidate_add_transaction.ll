; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-query.c_dns_query_candidate_add_transaction.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-query.c_dns_query_candidate_add_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_17__*)* @dns_query_candidate_add_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_query_candidate_add_transaction(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_17__* %8)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = call i32 @assert(%struct.TYPE_17__* %10)
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = call %struct.TYPE_17__* @dns_scope_find_transaction(i32 %14, %struct.TYPE_17__* %15, i32 1)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = call i32 @dns_transaction_new(%struct.TYPE_17__** %6, i32 %22, %struct.TYPE_17__* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %95

29:                                               ; preds = %19
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = call i64 @set_contains(i32 %33, %struct.TYPE_17__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %95

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = call i32 @set_ensure_allocated(i32* %41, i32* null)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %91

46:                                               ; preds = %39
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = call i32 @set_ensure_allocated(i32* %48, i32* null)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %91

53:                                               ; preds = %46
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  %56 = call i32 @set_ensure_allocated(i32* %55, i32* null)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %91

60:                                               ; preds = %53
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = call i32 @set_put(i32 %63, %struct.TYPE_17__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %91

69:                                               ; preds = %60
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = call i32 @set_put(i32 %72, %struct.TYPE_17__* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i32 @set_remove(i32 %80, %struct.TYPE_17__* %81)
  br label %91

83:                                               ; preds = %69
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  store i32 1, i32* %3, align 4
  br label %95

91:                                               ; preds = %77, %68, %59, %52, %45
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = call i32 @dns_transaction_gc(%struct.TYPE_17__* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %83, %37, %27
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @dns_scope_find_transaction(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @dns_transaction_new(%struct.TYPE_17__**, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @set_contains(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @set_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @set_put(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @set_remove(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @dns_transaction_gc(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
