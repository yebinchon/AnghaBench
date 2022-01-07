; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncalrpc_inquire_auth_client.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncalrpc_inquire_auth_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"(%p, %p, %p, %p, %p, %p, 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"privs not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"server_princ_name not implemented\0A\00", align 1
@RPC_C_AUTHN_LEVEL_PKT_PRIVACY = common dso_local global i64 0, align 8
@RPC_C_AUTHN_WINNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"authorization service not implemented\0A\00", align 1
@RPC_C_AUTHZ_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"flags 0x%x not implemented\0A\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32**, i64*, i64*, i64*, i64)* @rpcrt4_ncalrpc_inquire_auth_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_ncalrpc_inquire_auth_client(i32* %0, i32** %1, i32** %2, i64* %3, i64* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32**, i32*** %9, align 8
  %17 = load i32**, i32*** %10, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = load i64*, i64** %13, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %15, i32** %16, i32** %17, i64* %18, i64* %19, i64* %20, i64 %21)
  %23 = load i32**, i32*** %9, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32**, i32*** %9, align 8
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %7
  %29 = load i32**, i32*** %10, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32**, i32*** %10, align 8
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64*, i64** %11, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* @RPC_C_AUTHN_LEVEL_PKT_PRIVACY, align 8
  %39 = load i64*, i64** %11, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64*, i64** %12, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @RPC_C_AUTHN_WINNT, align 8
  %45 = load i64*, i64** %12, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64*, i64** %13, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i64, i64* @RPC_C_AUTHZ_NONE, align 8
  %52 = load i64*, i64** %13, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %14, align 8
  %58 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* @RPC_S_OK, align 4
  ret i32 %60
}

declare dso_local i32 @TRACE(i8*, i32*, i32**, i32**, i64*, i64*, i64*, i64) #1

declare dso_local i32 @FIXME(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
