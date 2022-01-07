; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetAdaptersInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetAdaptersInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }

@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"GetAdaptersInfo is not supported\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"GetAdaptersInfo returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@ERROR_NO_DATA = common dso_local global i64 0, align 8
@ERROR_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"GetAdaptersInfo returned %d, expected ERROR_NO_DATA or ERROR_BUFFER_OVERFLOW\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"GetAdaptersInfo(buf, &dwSize) returned %d, expected NO_ERROR\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"A valid IP must be present\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"A valid mask must be present\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Adapter '%s', IP %s, Mask %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetAdaptersInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetAdaptersInfo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  br i1 true, label %5, label %96

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %6 = call i64 @pGetAdaptersInfo(%struct.TYPE_11__* null, i32* null)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %96

12:                                               ; preds = %5
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = call i64 @pGetAdaptersInfo(%struct.TYPE_11__* null, i32* %2)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @ERROR_NO_DATA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i1 [ true, %12 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @ERROR_NO_DATA, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %95

36:                                               ; preds = %27
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %36
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* %2, align 4
  %43 = call %struct.TYPE_11__* @HeapAlloc(i32 %41, i32 0, i32 %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %4, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = call i64 @pGetAdaptersInfo(%struct.TYPE_11__* %44, i32* %2)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @NO_ERROR, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %1, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %3, align 8
  br label %53

53:                                               ; preds = %56, %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32* %80, i32* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %3, align 8
  br label %53

90:                                               ; preds = %53
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, %struct.TYPE_11__* %92)
  br label %94

94:                                               ; preds = %90, %36
  br label %95

95:                                               ; preds = %94, %35
  br label %96

96:                                               ; preds = %10, %95, %0
  ret void
}

declare dso_local i64 @pGetAdaptersInfo(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @trace(i8*, i32, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
