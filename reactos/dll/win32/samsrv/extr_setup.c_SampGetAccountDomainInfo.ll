; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampGetAccountDomainInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampGetAccountDomainInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"SampGetAccountDomainInfo\0A\00", align 1
@POLICY_VIEW_LOCAL_INFORMATION = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"LsaOpenPolicy failed (Status: 0x%08lx)\0A\00", align 1
@PolicyAccountDomainInformation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SampGetAccountDomainInfo(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 4)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* @POLICY_VIEW_LOCAL_INFORMATION, align 4
  %11 = call i64 @LsaOpenPolicy(i32* null, %struct.TYPE_4__* %4, i32 %10, i32* %5)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @STATUS_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %2, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PolicyAccountDomainInformation, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @LsaQueryInformationPolicy(i32 %20, i32 %21, i32* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @LsaClose(i32 %24)
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %19, %15
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @LsaOpenPolicy(i32*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @LsaQueryInformationPolicy(i32, i32, i32*) #1

declare dso_local i32 @LsaClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
