; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ParseHttpPrepareHeader2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ParseHttpPrepareHeader2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid flags 0x%x\0A\00", align 1
@RPC_S_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid number of data items %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid type for field 1: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid type for field 2: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid type for field 3: 0x%08x\0A\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPCRT4_ParseHttpPrepareHeader2(%struct.TYPE_5__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %24, i32* %6, align 4
  br label %86

25:                                               ; preds = %5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %37, i32* %6, align 4
  br label %86

38:                                               ; preds = %25
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @READ_HTTP_PAYLOAD_FIELD_TYPE(i8* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 6
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %46, i32* %6, align 4
  br label %86

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i8* @RPCRT4_NextHttpHeaderField(i8* %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @READ_HTTP_PAYLOAD_FIELD_TYPE(i8* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %62, i32* %6, align 4
  br label %86

63:                                               ; preds = %47
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %64)
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i8* @RPCRT4_NextHttpHeaderField(i8* %69)
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @READ_HTTP_PAYLOAD_FIELD_TYPE(i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %78, i32* %6, align 4
  br label %86

79:                                               ; preds = %63
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @GET_HTTP_PAYLOAD_FIELD_DATA(i8* %80)
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @RPC_S_OK, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %79, %75, %59, %43, %31, %18
  %87 = load i32, i32* %6, align 4
  ret i32 %87
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
