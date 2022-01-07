; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_report_harbor_down.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_report_harbor_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"D %d\00", align 1
@PTYPE_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor*, i32)* @report_harbor_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_harbor_down(%struct.harbor* %0, i32 %1) #0 {
  %3 = alloca %struct.harbor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.harbor* %0, %struct.harbor** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.harbor*, %struct.harbor** %3, align 8
  %11 = getelementptr inbounds %struct.harbor, %struct.harbor* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.harbor*, %struct.harbor** %3, align 8
  %14 = getelementptr inbounds %struct.harbor, %struct.harbor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PTYPE_TEXT, align 4
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @skynet_send(i32 %12, i32 0, i32 %15, i32 %16, i32 0, i8* %17, i32 %18)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @skynet_send(i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
