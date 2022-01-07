; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_open_run_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_open_run_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.run_request = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unknown run request\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @open_run_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_run_request(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.run_request*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.run_request* @get_run_request(i32 %7)
  store %struct.run_request* %8, %struct.run_request** %6, align 8
  %9 = load %struct.run_request*, %struct.run_request** %6, align 8
  %10 = icmp ne %struct.run_request* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call i32 @report(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @REQ_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.view*, %struct.view** %4, align 8
  %16 = load %struct.run_request*, %struct.run_request** %6, align 8
  %17 = call i32 @exec_run_request(%struct.view* %15, %struct.run_request* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.run_request* @get_run_request(i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @exec_run_request(%struct.view*, %struct.run_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
