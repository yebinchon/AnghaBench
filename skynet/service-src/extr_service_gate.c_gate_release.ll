; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_gate_release.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_gate_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate = type { i32, i64, i64, %struct.gate*, i32, i32, %struct.skynet_context* }
%struct.skynet_context = type { i32 }
%struct.connection = type { i32, i64, i64, %struct.connection*, i32, i32, %struct.skynet_context* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gate_release(%struct.gate* %0) #0 {
  %2 = alloca %struct.gate*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca %struct.connection*, align 8
  store %struct.gate* %0, %struct.gate** %2, align 8
  %6 = load %struct.gate*, %struct.gate** %2, align 8
  %7 = getelementptr inbounds %struct.gate, %struct.gate* %6, i32 0, i32 6
  %8 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  store %struct.skynet_context* %8, %struct.skynet_context** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.gate*, %struct.gate** %2, align 8
  %12 = getelementptr inbounds %struct.gate, %struct.gate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.gate*, %struct.gate** %2, align 8
  %17 = getelementptr inbounds %struct.gate, %struct.gate* %16, i32 0, i32 3
  %18 = load %struct.gate*, %struct.gate** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.gate, %struct.gate* %18, i64 %20
  %22 = bitcast %struct.gate* %21 to %struct.connection*
  store %struct.connection* %22, %struct.connection** %5, align 8
  %23 = load %struct.connection*, %struct.connection** %5, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @skynet_socket_close(%struct.skynet_context* %28, i64 %31)
  br label %33

33:                                               ; preds = %27, %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.gate*, %struct.gate** %2, align 8
  %39 = getelementptr inbounds %struct.gate, %struct.gate* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %44 = load %struct.gate*, %struct.gate** %2, align 8
  %45 = getelementptr inbounds %struct.gate, %struct.gate* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @skynet_socket_close(%struct.skynet_context* %43, i64 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.gate*, %struct.gate** %2, align 8
  %50 = getelementptr inbounds %struct.gate, %struct.gate* %49, i32 0, i32 5
  %51 = call i32 @messagepool_free(i32* %50)
  %52 = load %struct.gate*, %struct.gate** %2, align 8
  %53 = getelementptr inbounds %struct.gate, %struct.gate* %52, i32 0, i32 4
  %54 = call i32 @hashid_clear(i32* %53)
  %55 = load %struct.gate*, %struct.gate** %2, align 8
  %56 = getelementptr inbounds %struct.gate, %struct.gate* %55, i32 0, i32 3
  %57 = load %struct.gate*, %struct.gate** %56, align 8
  %58 = call i32 @skynet_free(%struct.gate* %57)
  %59 = load %struct.gate*, %struct.gate** %2, align 8
  %60 = call i32 @skynet_free(%struct.gate* %59)
  ret void
}

declare dso_local i32 @skynet_socket_close(%struct.skynet_context*, i64) #1

declare dso_local i32 @messagepool_free(i32*) #1

declare dso_local i32 @hashid_clear(i32*) #1

declare dso_local i32 @skynet_free(%struct.gate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
