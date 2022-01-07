; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetTcpTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetTcpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"GetTcpTable is not supported\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@ERROR_NO_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"GetTcpTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"GetTcpTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"TCP table: %u entries\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"local %s:%u\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%u: %s remote %s:%u state %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetTcpTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetTcpTable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [40 x i8], align 16
  %6 = alloca %struct.TYPE_8__, align 4
  br i1 true, label %7, label %125

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i64 @pGetTcpTable(%struct.TYPE_7__* null, i32* %2, i32 %8)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %125

15:                                               ; preds = %7
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @ERROR_NO_DATA, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @broken(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i1 [ true, %15 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %26
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32, i32* %2, align 4
  %37 = call %struct.TYPE_7__* @HeapAlloc(i32 %35, i32 0, i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %3, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i64 @pGetTcpTable(%struct.TYPE_7__* %38, i32* %2, i32 %39)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @NO_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %1, align 8
  %48 = load i64, i64* @NO_ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %120

50:                                               ; preds = %34
  %51 = load i32, i32* @winetest_debug, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %120

53:                                               ; preds = %50
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  store i64 0, i64* %4, align 8
  br label %58

58:                                               ; preds = %116, %53
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %58
  %65 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @ntoa(i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohs(i32 %80)
  %82 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %73, i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @ntoa(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ntohs(i32 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %104
  %106 = bitcast %struct.TYPE_9__* %105 to { i64, i64 }*
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 4
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1
  %110 = load i64, i64* %109, align 4
  %111 = call i32 @U(i64 %108, i64 %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %83, i8* %84, i8* %92, i32 %100, i32 %114)
  br label %116

116:                                              ; preds = %64
  %117 = load i64, i64* %4, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %4, align 8
  br label %58

119:                                              ; preds = %58
  br label %120

120:                                              ; preds = %119, %50, %34
  %121 = call i32 (...) @GetProcessHeap()
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = call i32 @HeapFree(i32 %121, i32 0, %struct.TYPE_7__* %122)
  br label %124

124:                                              ; preds = %120, %26
  br label %125

125:                                              ; preds = %13, %124, %0
  ret void
}

declare dso_local i64 @pGetTcpTable(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @U(i64, i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
