; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_insert_authorization_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_insert_authorization_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@insert_authorization_header.authW = internal constant [15 x i8] c"Authorization: ", align 1
@insert_authorization_header.basicW = internal constant [6 x i8] c"Basic ", align 1
@insert_authorization_header.negotiateW = internal constant [10 x i8] c"Negotiate ", align 1
@insert_authorization_header.ntlmW = internal constant [5 x i8] c"NTLM ", align 1
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown scheme %u\0A\00", align 1
@HTTP_ADDREQ_FLAG_ADD = common dso_local global i32 0, align 4
@HTTP_ADDREQ_FLAG_REPLACE = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @insert_authorization_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_authorization_header(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @insert_authorization_header.authW, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 2
  %20 = mul nsw i32 %19, 4
  %21 = sdiv i32 %20, 3
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %30 [
    i32 130, label %24
    i32 129, label %26
    i32 128, label %28
  ]

24:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @insert_authorization_header.basicW, i64 0, i64 0), i8** %13, align 8
  %25 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @insert_authorization_header.basicW, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  br label %34

26:                                               ; preds = %4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @insert_authorization_header.negotiateW, i64 0, i64 0), i8** %13, align 8
  %27 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @insert_authorization_header.negotiateW, i64 0, i64 0))
  store i32 %27, i32* %10, align 4
  br label %34

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @insert_authorization_header.ntlmW, i64 0, i64 0), i8** %13, align 8
  %29 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @insert_authorization_header.ntlmW, i64 0, i64 0))
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @RPC_S_SERVER_UNAVAILABLE, align 4
  store i32 %33, i32* %5, align 4
  br label %102

34:                                               ; preds = %28, %26, %24
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %38, %39
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i8* @HeapAlloc(i32 %35, i32 0, i32 %44)
  store i8* %45, i8** %14, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %100

47:                                               ; preds = %34
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @insert_authorization_header.authW, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %15, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i8* %58, i8* %59, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %15, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @encode_base64(i8* %69, i32 %70, i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 13, i8* %77, align 1
  %78 = load i8*, i8** %15, align 8
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 10, i8* %82, align 1
  %83 = load i8*, i8** %15, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i32, i32* %6, align 4
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* @HTTP_ADDREQ_FLAG_ADD, align 4
  %90 = load i32, i32* @HTTP_ADDREQ_FLAG_REPLACE, align 4
  %91 = or i32 %89, %90
  %92 = call i64 @HttpAddRequestHeadersW(i32 %87, i8* %88, i32 -1, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %47
  %95 = load i32, i32* @RPC_S_OK, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %94, %47
  %97 = call i32 (...) @GetProcessHeap()
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 @HeapFree(i32 %97, i32 0, i8* %98)
  br label %100

100:                                              ; preds = %96, %34
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %30
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @encode_base64(i8*, i32, i8*) #1

declare dso_local i64 @HttpAddRequestHeadersW(i32, i8*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
