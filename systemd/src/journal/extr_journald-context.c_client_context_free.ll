; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, %struct.TYPE_14__*)* @client_context_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @client_context_free(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_13__* %6)
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %9 = icmp ne %struct.TYPE_14__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PID_TO_PTR(i32 %17)
  %19 = call %struct.TYPE_14__* @hashmap_remove(i32 %14, i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = icmp eq %struct.TYPE_14__* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %11
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = call i64 @prioq_remove(i32 %31, %struct.TYPE_14__* %32, i32* %34)
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  br label %39

39:                                               ; preds = %28, %11
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = call i32 @client_context_reset(%struct.TYPE_13__* %40, %struct.TYPE_14__* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = call %struct.TYPE_14__* @mfree(%struct.TYPE_14__* %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %3, align 8
  br label %45

45:                                               ; preds = %39, %10
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %46
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local %struct.TYPE_14__* @hashmap_remove(i32, i32) #1

declare dso_local i32 @PID_TO_PTR(i32) #1

declare dso_local i64 @prioq_remove(i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @client_context_reset(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @mfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
