; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_WININET_Release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_WININET_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { {}*, {}* }

@.str = private unnamed_addr constant [25 x i8] c"object %p refcount = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"closing connection %p\0A\00", align 1
@WH_HHTTPSESSION = common dso_local global i64 0, align 8
@WH_HFTPSESSION = common dso_local global i64 0, align 8
@INET_OPENURL = common dso_local global i32 0, align 4
@INTERNET_STATUS_HANDLE_CLOSING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"destroying object %p\0A\00", align 1
@WH_HINIT = common dso_local global i64 0, align 8
@WININET_cs = common dso_local global i32 0, align 4
@handle_table = common dso_local global i32** null, align 8
@next_handle = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WININET_Release(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 6
  %7 = call i32 @InterlockedDecrement(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %105, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = call i32 @invalidate_handle(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = bitcast {}** %19 to i32 (%struct.TYPE_11__*)**
  %21 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_11__*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = bitcast {}** %29 to i32 (%struct.TYPE_11__*)**
  %31 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = call i32 %31(%struct.TYPE_11__* %32)
  br label %34

34:                                               ; preds = %23, %13
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WH_HHTTPSESSION, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WH_HFTPSESSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @INET_OPENURL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46, %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @INTERNET_STATUS_HANDLE_CLOSING, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = call i32 @INTERNET_SendCallback(%struct.TYPE_11__* %54, i32 %57, i32 %58, i64* %60, i32 4)
  br label %62

62:                                               ; preds = %53, %46
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WH_HINIT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = call i32 @list_remove(i32* %72)
  br label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = bitcast {}** %78 to i32 (%struct.TYPE_11__*)**
  %80 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = call i32 %80(%struct.TYPE_11__* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %74
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %4, align 8
  %91 = call i32 @EnterCriticalSection(i32* @WININET_cs)
  %92 = load i32**, i32*** @handle_table, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  store i32* null, i32** %94, align 8
  %95 = load i64, i64* @next_handle, align 8
  %96 = load i64, i64* %4, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i64, i64* %4, align 8
  store i64 %99, i64* @next_handle, align 8
  br label %100

100:                                              ; preds = %98, %87
  %101 = call i32 @LeaveCriticalSection(i32* @WININET_cs)
  br label %102

102:                                              ; preds = %100, %74
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = call i32 @heap_free(%struct.TYPE_11__* %103)
  br label %105

105:                                              ; preds = %102, %1
  %106 = load i32, i32* @TRUE, align 4
  ret i32 %106
}

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i32 @invalidate_handle(%struct.TYPE_11__*) #1

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_11__*, i32, i32, i64*, i32) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @heap_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
