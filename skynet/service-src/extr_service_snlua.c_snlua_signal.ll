; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_snlua_signal.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_snlua_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snlua = type { i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"recv a signal %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Current Memory %.3fK\00", align 1
@skynet_sig_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snlua_signal(%struct.snlua* %0, i32 %1) #0 {
  %3 = alloca %struct.snlua*, align 8
  %4 = alloca i32, align 4
  store %struct.snlua* %0, %struct.snlua** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snlua*, %struct.snlua** %3, align 8
  %6 = getelementptr inbounds %struct.snlua, %struct.snlua* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sitofp i32 %8 to float
  %10 = call i32 @skynet_error(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), float %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.snlua*, %struct.snlua** %3, align 8
  %19 = getelementptr inbounds %struct.snlua, %struct.snlua* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snlua*, %struct.snlua** %3, align 8
  %22 = getelementptr inbounds %struct.snlua, %struct.snlua* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to float
  %25 = fdiv float %24, 1.024000e+03
  %26 = call i32 @skynet_error(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %25)
  br label %27

27:                                               ; preds = %17, %14
  br label %28

28:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @skynet_error(i32, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
