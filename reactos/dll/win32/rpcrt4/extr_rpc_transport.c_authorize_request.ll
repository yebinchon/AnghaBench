; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_authorize_request.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_authorize_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.authinfo = type { i64, i64, i32, i32 }

@authorize_request.authW = internal constant [17 x i8] c"Authorization:\0D\0A\00", align 16
@RPC_S_OK = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@RPC_C_HTTP_AUTHN_SCHEME_BASIC = common dso_local global i64 0, align 8
@HTTP_ADDREQ_FLAG_REPLACE = common dso_local global i32 0, align 4
@HTTP_ADDREQ_FLAG_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32)* @authorize_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @authorize_request(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.authinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.authinfo* null, %struct.authinfo** %5, align 8
  br label %8

8:                                                ; preds = %78, %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @do_authorization(i32 %9, i32 %12, i32 %21, %struct.authinfo** %5)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @RPC_S_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %87

27:                                               ; preds = %8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %30 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %33 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %36 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @insert_authorization_header(i32 %28, i64 %31, i32 %34, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @RPC_S_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %87

43:                                               ; preds = %27
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @prepare_async_request(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @HttpSendRequestW(i32 %48, i32* null, i32 0, i32* null, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @wait_async_request(i32 %52, i32 %53, i32 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @RPC_S_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %43
  %62 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %63 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %43
  br label %87

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @rpcrt4_http_check_response(i32 %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @RPC_S_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %87

78:                                               ; preds = %73, %67
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @drain_content(i32 %79, i32 %82, i32 %85)
  br label %8

87:                                               ; preds = %77, %66, %42, %26
  %88 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %89 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @RPC_C_HTTP_AUTHN_SCHEME_BASIC, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @HTTP_ADDREQ_FLAG_REPLACE, align 4
  %96 = load i32, i32* @HTTP_ADDREQ_FLAG_ADD, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @HttpAddRequestHeadersW(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @authorize_request.authW, i64 0, i64 0), i32 -1, i32 %97)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %101 = call i32 @destroy_authinfo(%struct.authinfo* %100)
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

declare dso_local i64 @do_authorization(i32, i32, i32, %struct.authinfo**) #1

declare dso_local i64 @insert_authorization_header(i32, i64, i32, i32) #1

declare dso_local i32 @prepare_async_request(i32) #1

declare dso_local i32 @HttpSendRequestW(i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @wait_async_request(i32, i32, i32) #1

declare dso_local i64 @rpcrt4_http_check_response(i32) #1

declare dso_local i32 @drain_content(i32, i32, i32) #1

declare dso_local i32 @HttpAddRequestHeadersW(i32, i8*, i32, i32) #1

declare dso_local i32 @destroy_authinfo(%struct.authinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
