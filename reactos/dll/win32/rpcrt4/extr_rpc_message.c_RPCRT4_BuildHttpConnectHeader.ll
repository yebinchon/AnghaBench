; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_BuildHttpConnectHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_BuildHttpConnectHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NDR_LOCAL_DATA_REPRESENTATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @RPCRT4_BuildHttpConnectHeader(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %11, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %17, 16
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @NDR_LOCAL_DATA_REPRESENTATION, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 4, i32 6
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.TYPE_4__* @RPCRT4_BuildHttpHeader(i32 %21, i32 0, i32 %25, i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @WRITE_HTTP_PAYLOAD_FIELD_UINT32(i8* %36, i32 6, i32 1)
  %38 = load i8*, i8** %12, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WRITE_HTTP_PAYLOAD_FIELD_UUID(i8* %38, i32 3, i32 %40)
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WRITE_HTTP_PAYLOAD_FIELD_UUID(i8* %42, i32 3, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @WRITE_HTTP_PAYLOAD_FIELD_UINT32(i8* %49, i32 0, i32 65536)
  br label %60

51:                                               ; preds = %31
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @WRITE_HTTP_PAYLOAD_FIELD_UINT32(i8* %52, i32 4, i32 1073741824)
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @WRITE_HTTP_PAYLOAD_FIELD_UINT32(i8* %54, i32 5, i32 300000)
  %56 = load i8*, i8** %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WRITE_HTTP_PAYLOAD_FIELD_UUID(i8* %56, i32 12, i32 %58)
  br label %60

60:                                               ; preds = %51, %48
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %5, align 8
  br label %62

62:                                               ; preds = %60, %30
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %63
}

declare dso_local %struct.TYPE_4__* @RPCRT4_BuildHttpHeader(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_HTTP_PAYLOAD_FIELD_UINT32(i8*, i32, i32) #1

declare dso_local i32 @WRITE_HTTP_PAYLOAD_FIELD_UUID(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
