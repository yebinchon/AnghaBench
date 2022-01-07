; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ParseHttpFlowControlHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ParseHttpFlowControlHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid flags 0x%x\0A\00", align 1
@RPC_S_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid number of data items %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid type for field 1: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"invalid type for 0xd field data: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid type for field 2: 0x%08x\0A\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPCRT4_ParseHttpFlowControlHeader(%struct.TYPE_5__* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %26, i32* %7, align 4
  br label %96

27:                                               ; preds = %6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %39, i32* %7, align 4
  br label %96

40:                                               ; preds = %27
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @READ_HTTP_PAYLOAD_FIELD_TYPE(i8* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 13
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %48, i32* %7, align 4
  br label %96

49:                                               ; preds = %40
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %50)
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 3, i32 0
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %60)
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %65, i32* %7, align 4
  br label %96

66:                                               ; preds = %49
  %67 = load i8*, i8** %9, align 8
  %68 = call i8* @RPCRT4_NextHttpHeaderField(i8* %67)
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @READ_HTTP_PAYLOAD_FIELD_TYPE(i8* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %76, i32* %7, align 4
  br label %96

77:                                               ; preds = %66
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %78)
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %83)
  %85 = add nsw i64 %84, 4
  %86 = inttoptr i64 %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %89)
  %91 = add nsw i64 %90, 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @RPC_S_OK, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %77, %73, %59, %45, %33, %20
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @READ_HTTP_PAYLOAD_FIELD_TYPE(i8*) #1

declare dso_local i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8*) #1

declare dso_local i8* @RPCRT4_NextHttpHeaderField(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
