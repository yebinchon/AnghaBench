; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_netconnection.c_ensure_cred_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_netconnection.c_ensure_cred_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SEC_E_OK = common dso_local global i64 0, align 8
@init_sechandle_cs = common dso_local global i32 0, align 4
@cred_handle_initialized = common dso_local global i32 0, align 4
@SCHANNEL_CRED_VERSION = common dso_local global i32 0, align 4
@UNISP_NAME_W = common dso_local global i64 0, align 8
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@cred_handle = common dso_local global i32 0, align 4
@SECPKG_ATTR_SUPPORTED_PROTOCOLS = common dso_local global i32 0, align 4
@SP_PROT_TLS1_1PLUS_CLIENT = common dso_local global i32 0, align 4
@compat_cred_handle = common dso_local global i32 0, align 4
@have_compat_cred_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ensure_cred_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_cred_handle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = load i64, i64* @SEC_E_OK, align 8
  store i64 %5, i64* %2, align 8
  %6 = call i32 @EnterCriticalSection(i32* @init_sechandle_cs)
  %7 = load i32, i32* @cred_handle_initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %53, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %11 = load i32, i32* @SCHANNEL_CRED_VERSION, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* @UNISP_NAME_W, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %16 = call i64 @AcquireCredentialsHandleW(i32* null, i32* %14, i32 %15, i32* null, %struct.TYPE_6__* %3, i32* null, i32* null, i32* @cred_handle, i32* null)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @SEC_E_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %9
  %21 = load i32, i32* @SECPKG_ATTR_SUPPORTED_PROTOCOLS, align 4
  %22 = call i64 @QueryCredentialsAttributesA(i32* @cred_handle, i32 %21, %struct.TYPE_5__* %4)
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @SEC_E_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SP_PROT_TLS1_1PLUS_CLIENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26, %20
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SP_PROT_TLS1_1PLUS_CLIENT, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* @UNISP_NAME_W, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %42 = call i64 @AcquireCredentialsHandleW(i32* null, i32* %40, i32 %41, i32* null, %struct.TYPE_6__* %3, i32* null, i32* null, i32* @compat_cred_handle, i32* null)
  store i64 %42, i64* %2, align 8
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @SEC_E_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @have_compat_cred_handle, align 4
  br label %47

47:                                               ; preds = %32, %26
  br label %48

48:                                               ; preds = %47, %9
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @SEC_E_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* @cred_handle_initialized, align 4
  br label %53

53:                                               ; preds = %48, %0
  %54 = call i32 @LeaveCriticalSection(i32* @init_sechandle_cs)
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @SEC_E_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* %2, align 8
  %60 = call i32 @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %1, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @AcquireCredentialsHandleW(i32*, i32*, i32, i32*, %struct.TYPE_6__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @QueryCredentialsAttributesA(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
