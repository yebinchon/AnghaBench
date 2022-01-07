; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIpForwardTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIpForwardTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"GetIpForwardTable is not supported\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"GetIpForwardTable(NULL, NULL, FALSE) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [89 x i8] c"GetIpForwardTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"GetIpForwardTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"IP forward table: %u entries\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dest %s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" mask %s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%u: %s gw %s if %u type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetIpForwardTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetIpForwardTable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca %struct.TYPE_8__, align 4
  br i1 true, label %7, label %129

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i64 @pGetIpForwardTable(%struct.TYPE_7__* null, i32* null, i32 %8)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %129

15:                                               ; preds = %7
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i64 @pGetIpForwardTable(%struct.TYPE_7__* null, i32* %2, i32 %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %128

33:                                               ; preds = %15
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i32, i32* %2, align 4
  %36 = call %struct.TYPE_7__* @HeapAlloc(i32 %34, i32 0, i32 %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %3, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @pGetIpForwardTable(%struct.TYPE_7__* %37, i32* %2, i32 %38)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @NO_ERROR, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @NO_ERROR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %124

49:                                               ; preds = %33
  %50 = load i32, i32* @winetest_debug, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %124

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %55)
  store i64 0, i64* %4, align 8
  br label %57

57:                                               ; preds = %120, %52
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %123

63:                                               ; preds = %57
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @ntoa(i32 %71)
  %73 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @ntoa(i32 %85)
  %87 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @ntoa(i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %108
  %110 = bitcast %struct.TYPE_9__* %109 to { i64, i64 }*
  %111 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 4
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %110, i32 0, i32 1
  %114 = load i64, i64* %113, align 4
  %115 = call i32 @U1(i64 %112, i64 %114)
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %88, i8* %89, i8* %97, i32 %104, i32 %118)
  br label %120

120:                                              ; preds = %63
  %121 = load i64, i64* %4, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %4, align 8
  br label %57

123:                                              ; preds = %57
  br label %124

124:                                              ; preds = %123, %49, %33
  %125 = call i32 (...) @GetProcessHeap()
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = call i32 @HeapFree(i32 %125, i32 0, %struct.TYPE_7__* %126)
  br label %128

128:                                              ; preds = %124, %15
  br label %129

129:                                              ; preds = %13, %128, %0
  ret void
}

declare dso_local i64 @pGetIpForwardTable(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @ntoa(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @U1(i64, i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
