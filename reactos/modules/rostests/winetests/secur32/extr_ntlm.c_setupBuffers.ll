; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_setupBuffers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_setupBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i32, i32*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_12__*, i8* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"in_buf: sec_buffer == NULL\0A\00", align 1
@SEC_E_INSUFFICIENT_MEMORY = common dso_local global i32 0, align 4
@SECBUFFER_VERSION = common dso_local global i8* null, align 8
@SECBUFFER_TOKEN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"in_buf: sec_buffer->pvBuffer == NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"HeapAlloc in_buf returned NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"out_buf: sec_buffer == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"out_buf: sec_buffer->pvBuffer == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"HeapAlloc out_buf returned NULL\0A\00", align 1
@SEC_E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @setupBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setupBuffers(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = call i32 (...) @GetProcessHeap()
  %9 = call i8* @HeapAlloc(i32 %8, i32 0, i32 4)
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %12, align 8
  %13 = call i32 (...) @GetProcessHeap()
  %14 = call i8* @HeapAlloc(i32 %13, i32 0, i32 4)
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %72

27:                                               ; preds = %2
  %28 = call i32 (...) @GetProcessHeap()
  %29 = call i8* @HeapAlloc(i32 %28, i32 0, i32 4)
  %30 = bitcast i8* %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @SEC_E_INSUFFICIENT_MEMORY, align 4
  store i32 %35, i32* %3, align 4
  br label %130

36:                                               ; preds = %27
  %37 = load i8*, i8** @SECBUFFER_VERSION, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @HeapAlloc(i32 %59, i32 0, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = icmp eq i32* %64, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %36
  %69 = call i32 @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @SEC_E_INSUFFICIENT_MEMORY, align 4
  store i32 %70, i32* %3, align 4
  br label %130

71:                                               ; preds = %36
  br label %75

72:                                               ; preds = %2
  %73 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @SEC_E_INSUFFICIENT_MEMORY, align 4
  store i32 %74, i32* %3, align 4
  br label %130

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %125

80:                                               ; preds = %75
  %81 = call i32 (...) @GetProcessHeap()
  %82 = call i8* @HeapAlloc(i32 %81, i32 0, i32 4)
  %83 = bitcast i8* %82 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %7, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = icmp eq %struct.TYPE_12__* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = call i32 @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @SEC_E_INSUFFICIENT_MEMORY, align 4
  store i32 %88, i32* %3, align 4
  br label %130

89:                                               ; preds = %80
  %90 = load i8*, i8** @SECBUFFER_VERSION, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  store i8* %90, i8** %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = call i32 (...) @GetProcessHeap()
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @HeapAlloc(i32 %112, i32 0, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = icmp eq i32* %117, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %89
  %122 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* @SEC_E_INSUFFICIENT_MEMORY, align 4
  store i32 %123, i32* %3, align 4
  br label %130

124:                                              ; preds = %89
  br label %128

125:                                              ; preds = %75
  %126 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* @SEC_E_INSUFFICIENT_MEMORY, align 4
  store i32 %127, i32* %3, align 4
  br label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @SEC_E_OK, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %125, %121, %86, %72, %68, %33
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @trace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
