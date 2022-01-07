; ModuleID = '/home/carl/AnghaBench/sway/common/extr_ipc-client.c_ipc_recv_response.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_ipc-client.c_ipc_recv_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_response = type { i32, i32, i8* }

@IPC_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to receive IPC response\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unable to allocate memory for IPC response\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipc_response* @ipc_recv_response(i32 %0) #0 {
  %2 = alloca %struct.ipc_response*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipc_response*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @IPC_HEADER_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %37, %1
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @IPC_HEADER_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %16, i64 %26
  %28 = load i32, i32* @IPC_HEADER_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %29, %30
  %32 = call i64 @recv(i32 %25, i8* %27, i64 %31, i32 0)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 @sway_abort(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %19

41:                                               ; preds = %19
  %42 = call i8* @malloc(i32 16)
  %43 = bitcast i8* %42 to %struct.ipc_response*
  store %struct.ipc_response* %43, %struct.ipc_response** %9, align 8
  %44 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %45 = icmp ne %struct.ipc_response* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %108

47:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  %48 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %49 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %48, i32 0, i32 0
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @memcpy(i32* %49, i32* %51, i32 4)
  %53 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %54 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %53, i32 0, i32 1
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = call i32 @memcpy(i32* %54, i32* %56, i32 4)
  %58 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %59 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = call i8* @malloc(i32 %61)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %47
  br label %105

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %70 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %80 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %82, %83
  %85 = call i64 @recv(i32 %75, i8* %78, i64 %84, i32 0)
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = call i32 @sway_abort(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %74
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %67

94:                                               ; preds = %67
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %97 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %103 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  store %struct.ipc_response* %104, %struct.ipc_response** %2, align 8
  store i32 1, i32* %12, align 4
  br label %111

105:                                              ; preds = %65
  %106 = load %struct.ipc_response*, %struct.ipc_response** %9, align 8
  %107 = call i32 @free(%struct.ipc_response* %106)
  br label %108

108:                                              ; preds = %105, %46
  %109 = load i32, i32* @SWAY_ERROR, align 4
  %110 = call i32 @sway_log(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ipc_response* null, %struct.ipc_response** %2, align 8
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %108, %94
  %112 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load %struct.ipc_response*, %struct.ipc_response** %2, align 8
  ret %struct.ipc_response* %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

declare dso_local i32 @sway_abort(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @free(%struct.ipc_response*) #2

declare dso_local i32 @sway_log(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
