; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_get_run_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_get_run_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_request = type { i32 }

@REQ_RUN_REQUESTS = common dso_local global i32 0, align 4
@run_requests = common dso_local global i32 0, align 4
@run_request = common dso_local global %struct.run_request* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.run_request* @get_run_request(i32 %0) #0 {
  %2 = alloca %struct.run_request*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @REQ_RUN_REQUESTS, align 4
  %6 = icmp ule i32 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @REQ_RUN_REQUESTS, align 4
  %10 = load i32, i32* @run_requests, align 4
  %11 = add nsw i32 %9, %10
  %12 = icmp ugt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  store %struct.run_request* null, %struct.run_request** %2, align 8
  br label %22

14:                                               ; preds = %7
  %15 = load %struct.run_request*, %struct.run_request** @run_request, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @REQ_RUN_REQUESTS, align 4
  %18 = sub i32 %16, %17
  %19 = sub i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.run_request, %struct.run_request* %15, i64 %20
  store %struct.run_request* %21, %struct.run_request** %2, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.run_request*, %struct.run_request** %2, align 8
  ret %struct.run_request* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
