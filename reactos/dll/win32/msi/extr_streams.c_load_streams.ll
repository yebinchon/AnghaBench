; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_load_streams.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_load_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@MAX_STREAM_NAME_LEN = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@STGTY_STREAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"found new stream %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to open stream %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"loaded %u streams\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @load_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_streams(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %13 = load i32, i32* @MAX_STREAM_NAME_LEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IStorage_EnumElements(i32 %21, i32 0, i32* null, i32 0, i32** %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %27, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %98

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %89, %60, %49, %28
  store i64 0, i64* %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @IEnumSTATSTG_Next(i32* %30, i32 1, %struct.TYPE_8__* %7, i64* %9)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %29
  br label %90

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STGTY_STREAM, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 18496
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %39
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @CoTaskMemFree(i32* %51)
  br label %29

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @decode_streamname(i32* %55, i32* %17)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = call i64 @find_stream(%struct.TYPE_9__* %57, i32* %17)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @CoTaskMemFree(i32* %62)
  br label %29

64:                                               ; preds = %53
  %65 = call i32 @debugstr_w(i32* %17)
  %66 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @open_stream(%struct.TYPE_9__* %67, i32* %69, i32** %11)
  store i32 %70, i32* %8, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @CoTaskMemFree(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %80, i64* %10, align 8
  br label %90

81:                                               ; preds = %64
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i64 @append_stream(%struct.TYPE_9__* %82, i32* %17, i32* %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @ERROR_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %90

89:                                               ; preds = %81
  br label %29

90:                                               ; preds = %88, %77, %38
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @IEnumSTATSTG_Release(i32* %95)
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %90, %26
  %99 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IStorage_EnumElements(i32, i32, i32*, i32, i32**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IEnumSTATSTG_Next(i32*, i32, %struct.TYPE_8__*, i64*) #2

declare dso_local i32 @CoTaskMemFree(i32*) #2

declare dso_local i32 @decode_streamname(i32*, i32*) #2

declare dso_local i64 @find_stream(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @open_stream(%struct.TYPE_9__*, i32*, i32**) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i64 @append_stream(%struct.TYPE_9__*, i32*, i32*) #2

declare dso_local i32 @IEnumSTATSTG_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
