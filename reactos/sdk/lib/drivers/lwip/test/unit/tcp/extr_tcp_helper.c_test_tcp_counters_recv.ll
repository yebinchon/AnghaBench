; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_counters_recv.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_counters_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.pbuf = type { i64 }
%struct.test_tcp_counters = type { i64, i64, i64, i32, i32 }

@ERR_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @test_tcp_counters_recv(i8* %0, %struct.tcp_pcb* %1, %struct.pbuf* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_pcb*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.test_tcp_counters*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %6, align 8
  store %struct.pbuf* %2, %struct.pbuf** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.test_tcp_counters*
  store %struct.test_tcp_counters* %11, %struct.test_tcp_counters** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* @ERR_OK, align 8
  %16 = call i32 @EXPECT_RETX(i32 %14, i64 %15)
  %17 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %18 = icmp ne %struct.tcp_pcb* %17, null
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* @ERR_OK, align 8
  %21 = call i32 @EXPECT_RETX(i32 %19, i64 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @ERR_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* @ERR_OK, align 8
  %27 = call i32 @EXPECT_RETX(i32 %25, i64 %26)
  %28 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %29 = icmp ne %struct.pbuf* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %4
  %31 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %32 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %37 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %41 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %42 = call i32 @test_tcp_counters_check_rxdata(%struct.test_tcp_counters* %40, %struct.pbuf* %41)
  %43 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %47 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  br label %64

52:                                               ; preds = %30
  %53 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %54 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %58 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %61 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %52, %35
  %65 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %66 = call i32 @pbuf_free(%struct.pbuf* %65)
  br label %72

67:                                               ; preds = %4
  %68 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %69 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %67, %64
  %73 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %74 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %9, align 8
  %79 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @EXPECT(i32 %84)
  %86 = load i64, i64* @ERR_OK, align 8
  ret i64 %86
}

declare dso_local i32 @EXPECT_RETX(i32, i64) #1

declare dso_local i32 @test_tcp_counters_check_rxdata(%struct.test_tcp_counters*, %struct.pbuf*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @EXPECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
