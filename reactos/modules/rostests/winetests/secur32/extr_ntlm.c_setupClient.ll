; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_setupClient.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_setupClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Running setupClient\0A\00", align 1
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"QuerySecurityPackageInfo returned %s\0A\00", align 1
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"AcquireCredentialsHandle() returned %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*)* @setupClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setupClient(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @pQuerySecurityPackageInfoA(i32* %9, i32** %7)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SEC_E_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @getSecError(i64 %15)
  %17 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @setupBuffers(%struct.TYPE_4__* %18, i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @pFreeContextBuffer(i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i64 @pAcquireCredentialsHandleA(i32* null, i32* %23, i32 %24, i32* null, i32 %27, i32* null, i32* null, i32* %29, i32* %6)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* @SEC_E_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @getSecError(i64 %34)
  %36 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @SEC_E_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @getSecError(i64 %42)
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @pQuerySecurityPackageInfoA(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @getSecError(i64) #1

declare dso_local i32 @setupBuffers(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @pFreeContextBuffer(i32*) #1

declare dso_local i64 @pAcquireCredentialsHandleA(i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
