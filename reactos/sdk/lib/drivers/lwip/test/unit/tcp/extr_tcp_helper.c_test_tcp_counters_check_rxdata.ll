; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_counters_check_rxdata.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_counters_check_rxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tcp_counters = type { i8*, i64, i64 }
%struct.pbuf = type { i64, i8*, i64, %struct.pbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_tcp_counters*, %struct.pbuf*)* @test_tcp_counters_check_rxdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_tcp_counters_check_rxdata(%struct.test_tcp_counters* %0, %struct.pbuf* %1) #0 {
  %3 = alloca %struct.test_tcp_counters*, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.test_tcp_counters* %0, %struct.test_tcp_counters** %3, align 8
  store %struct.pbuf* %1, %struct.pbuf** %4, align 8
  %9 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %3, align 8
  %10 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %83

14:                                               ; preds = %2
  %15 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %3, align 8
  %16 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  %22 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %3, align 8
  %23 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @EXPECT_RET(i32 %26)
  %28 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %3, align 8
  %29 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %31, %struct.pbuf** %5, align 8
  br label %32

32:                                               ; preds = %67, %14
  %33 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %34 = icmp ne %struct.pbuf* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %63, %35
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %3, align 8
  %52 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %50, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @EXPECT_RET(i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %39

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %69 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %68, i32 0, i32 3
  %70 = load %struct.pbuf*, %struct.pbuf** %69, align 8
  store %struct.pbuf* %70, %struct.pbuf** %5, align 8
  br label %32

71:                                               ; preds = %32
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %3, align 8
  %74 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %75, %78
  %80 = icmp eq i64 %72, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @EXPECT(i32 %81)
  br label %83

83:                                               ; preds = %71, %13
  ret void
}

declare dso_local i32 @EXPECT_RET(i32) #1

declare dso_local i32 @EXPECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
