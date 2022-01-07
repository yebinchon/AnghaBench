; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_server.c_find_security_package.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_server.c_find_security_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"EnumerateSecurityPackagesW failed with error 0x%08x\0A\00", align 1
@RPC_S_SEC_PKG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported AuthnSvc %u\0A\00", align 1
@RPC_S_UNKNOWN_AUTHN_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"found package %s for service %u\0A\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_6__**, %struct.TYPE_6__**)* @find_security_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_security_package(i64 %0, %struct.TYPE_6__** %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %12 = call i64 @EnumerateSecurityPackagesW(i64* %10, %struct.TYPE_6__** %9)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @SEC_E_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @RPC_S_SEC_PKG_ERROR, align 4
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %11, align 8
  br label %21

38:                                               ; preds = %33, %21
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = call i32 @FreeContextBuffer(%struct.TYPE_6__* %45)
  %47 = load i32, i32* @RPC_S_UNKNOWN_AUTHN_SERVICE, align 4
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @debugstr_w(i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %54, i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %62, align 8
  %63 = load i32, i32* @RPC_S_OK, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %48, %42, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @EnumerateSecurityPackagesW(i64*, %struct.TYPE_6__**) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @FreeContextBuffer(%struct.TYPE_6__*) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
