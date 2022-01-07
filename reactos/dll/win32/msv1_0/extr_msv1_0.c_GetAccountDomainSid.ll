; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msv1_0/extr_msv1_0.c_GetAccountDomainSid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msv1_0/extr_msv1_0.c_GetAccountDomainSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"LsaIOpenPolicyTrusted() failed (Status 0x%08lx)\0A\00", align 1
@PolicyAccountDomainInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"LsarQueryInformationPolicy() failed (Status 0x%08lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to allocate SID\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @GetAccountDomainSid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetAccountDomainSid(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 @LsaIOpenPolicyTrusted(i32** %4)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @NT_SUCCESS(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @PolicyAccountDomainInformation, align 4
  %19 = call i32 @LsarQueryInformationPolicy(i32* %17, i32 %18, %struct.TYPE_6__** %5)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @NT_SUCCESS(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %51

26:                                               ; preds = %16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RtlLengthSid(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = call i32 (...) @RtlGetProcessHeap()
  %33 = load i32, i32* %6, align 4
  %34 = call i32* @RtlAllocateHeap(i32 %32, i32 0, i32 %33)
  %35 = load i32**, i32*** %3, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32**, i32*** %3, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %41, i32* %7, align 4
  br label %51

42:                                               ; preds = %26
  %43 = load i32**, i32*** %3, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i32* %44, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %39, %23
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @PolicyAccountDomainInformation, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = call i32 @LsaIFree_LSAPR_POLICY_INFORMATION(i32 %55, %struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @LsarClose(i32** %4)
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @LsaIOpenPolicyTrusted(i32**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @LsarQueryInformationPolicy(i32*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @RtlLengthSid(i32) #1

declare dso_local i32* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @LsaIFree_LSAPR_POLICY_INFORMATION(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @LsarClose(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
