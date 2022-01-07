; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_run_server.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_run_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sspi_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"running server for the %s time\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@SECURITY_NETWORK_DREP = common dso_local global i32 0, align 4
@SEC_I_COMPLETE_AND_CONTINUE = common dso_local global i64 0, align 8
@SEC_I_COMPLETE_NEEDED = common dso_local global i64 0, align 8
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@SEC_E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sspi_data*, i64)* @run_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @run_server(%struct.sspi_data* %0, i64 %1) #0 {
  %3 = alloca %struct.sspi_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sspi_data* %0, %struct.sspi_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %12 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %14 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %13, i32 0, i32 3
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %20 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %19, i32 0, i32 1
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32* [ null, %17 ], [ %20, %18 ]
  %23 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %24 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %27 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %28 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %27, i32 0, i32 1
  %29 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %30 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @AcceptSecurityContext(i32* %14, i32* %22, i32 %25, i32 0, i32 %26, i32* %28, i32 %31, i32* %7, i32* %6)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %21
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36, %21
  %41 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %42 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %41, i32 0, i32 1
  %43 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %44 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CompleteAuthToken(i32* %42, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  store i64 %51, i64* %5, align 8
  br label %59

52:                                               ; preds = %40
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @SEC_E_OK, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64 @AcceptSecurityContext(i32*, i32*, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @CompleteAuthToken(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
