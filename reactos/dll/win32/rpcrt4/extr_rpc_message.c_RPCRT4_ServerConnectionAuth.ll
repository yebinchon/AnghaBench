; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ServerConnectionAuth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ServerConnectionAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@RPC_S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"unknown authentication service %u\0A\00", align 1
@RPC_S_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@RPC_S_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [100 x i8] c"expected authentication to be complete but SSP returned data of %u bytes to be sent back to client\0A\00", align 1
@RPC_S_SEC_PKG_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RPCRT4_ServerConnectionAuth(%struct.TYPE_6__* %0, i64 %1, %struct.TYPE_7__* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %90

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @RpcAuthInfo_Release(i32* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = call i64 @SecIsValidHandle(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = call i32 @DeleteSecurityContext(i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = call i32 @SecInvalidateHandle(i32* %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, 12
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @RPCRT4_ServerGetRegisteredAuthInfo(i32 %53, i32* %17, i32* %18, i32* %19)
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* @RPC_S_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %16, align 8
  store i64 %63, i64* %7, align 8
  br label %166

64:                                               ; preds = %50
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i64 @RpcAuthInfo_Create(i32 %67, i32 %70, i32 %71, i32 %72, i32 %73, i32* null, i32** %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* @RPC_S_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = call i32 @FreeCredentialsHandle(i32* %17)
  %82 = load i64, i64* %16, align 8
  store i64 %82, i64* %7, align 8
  br label %166

83:                                               ; preds = %64
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %46
  br label %90

90:                                               ; preds = %89, %6
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %92, 12
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* @RPC_S_OK, align 8
  store i64 %95, i64* %7, align 8
  br label %166

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load i64, i64* @RPC_S_PROTOCOL_ERROR, align 8
  store i64 %102, i64* %7, align 8
  br label %166

103:                                              ; preds = %96
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 1
  %108 = bitcast %struct.TYPE_7__* %107 to i8*
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 %110, 12
  %112 = trunc i64 %111 to i32
  %113 = call i64 @rpcrt4_conn_authorize(%struct.TYPE_6__* %104, i64 %105, i8* %108, i32 %112, i8* null, i32* %15)
  store i64 %113, i64* %16, align 8
  %114 = load i64, i64* %16, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i64, i64* %16, align 8
  store i64 %117, i64* %7, align 8
  br label %166

118:                                              ; preds = %103
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i32, i32* %15, align 4
  %121 = call i8* @HeapAlloc(i32 %119, i32 0, i32 %120)
  store i8* %121, i8** %14, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %125, i64* %7, align 8
  br label %166

126:                                              ; preds = %118
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 1
  %131 = bitcast %struct.TYPE_7__* %130 to i8*
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 %133, 12
  %135 = trunc i64 %134 to i32
  %136 = load i8*, i8** %14, align 8
  %137 = call i64 @rpcrt4_conn_authorize(%struct.TYPE_6__* %127, i64 %128, i8* %131, i32 %135, i8* %136, i32* %15)
  store i64 %137, i64* %16, align 8
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* @RPC_S_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %126
  %142 = call i32 (...) @GetProcessHeap()
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 @HeapFree(i32 %142, i32 0, i8* %143)
  %145 = load i64, i64* %16, align 8
  store i64 %145, i64* %7, align 8
  br label %166

146:                                              ; preds = %126
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32*, i32** %13, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @ERR(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = call i32 (...) @GetProcessHeap()
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @HeapFree(i32 %155, i32 0, i8* %156)
  %158 = load i64, i64* @RPC_S_SEC_PKG_ERROR, align 8
  store i64 %158, i64* %7, align 8
  br label %166

159:                                              ; preds = %149, %146
  %160 = load i8*, i8** %14, align 8
  %161 = load i8**, i8*** %12, align 8
  store i8* %160, i8** %161, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %159
  %165 = load i64, i64* %16, align 8
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %164, %152, %141, %124, %116, %101, %94, %80, %58
  %167 = load i64, i64* %7, align 8
  ret i64 %167
}

declare dso_local i32 @RpcAuthInfo_Release(i32*) #1

declare dso_local i64 @SecIsValidHandle(i32*) #1

declare dso_local i32 @DeleteSecurityContext(i32*) #1

declare dso_local i32 @SecInvalidateHandle(i32*) #1

declare dso_local i64 @RPCRT4_ServerGetRegisteredAuthInfo(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @RpcAuthInfo_Create(i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @FreeCredentialsHandle(i32*) #1

declare dso_local i64 @rpcrt4_conn_authorize(%struct.TYPE_6__*, i64, i8*, i32, i8*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
