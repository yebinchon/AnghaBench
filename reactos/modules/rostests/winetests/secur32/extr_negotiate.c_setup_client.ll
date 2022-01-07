; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_setup_client.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_setup_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sspi_data = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"setting up client\0A\00", align 1
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"QuerySecurityPackageInfo returned %08x\0A\00", align 1
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"AcquireCredentialsHandleA returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sspi_data*, i32*)* @setup_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setup_client(%struct.sspi_data* %0, i32* %1) #0 {
  %3 = alloca %struct.sspi_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sspi_data* %0, %struct.sspi_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @QuerySecurityPackageInfoA(i32* %9, i32** %6)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SEC_E_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @setup_buffers(%struct.sspi_data* %17, i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @FreeContextBuffer(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %24 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %25 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %28 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %27, i32 0, i32 0
  %29 = call i64 @AcquireCredentialsHandleA(i32* null, i32* %22, i32 %23, i32* null, i32 %26, i32* null, i32* null, i32* %28, i32* %7)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @SEC_E_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @QuerySecurityPackageInfoA(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @setup_buffers(%struct.sspi_data*, i32*) #1

declare dso_local i32 @FreeContextBuffer(i32*) #1

declare dso_local i64 @AcquireCredentialsHandleA(i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
