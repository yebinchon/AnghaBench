; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_async_read_file_proc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_async_read_file_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64*, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"req %p buf %p size %u read_pos %u ret_read %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"res %u read %u\0A\00", align 1
@INTERNET_STATUS_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @async_read_file_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_read_file_proc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %4, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = ptrtoint %struct.TYPE_12__* %20 to i64
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %24, i64 %27, i64 %30, i64* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %68, %39
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i64 @HTTPREQ_Read(%struct.TYPE_12__* %47, i8* %53, i64 %58, i64* %8, i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %46
  br label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %40

72:                                               ; preds = %67, %40
  br label %106

73:                                               ; preds = %1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = call i32 @EnterCriticalSection(i32* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i64 @refill_read_buffer(%struct.TYPE_12__* %77, i32 %78, i64* %6)
  store i64 %79, i64* %5, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = call i32 @LeaveCriticalSection(i32* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %7, align 8
  br label %89

89:                                               ; preds = %87, %73
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93, %89
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i64 @drain_content(%struct.TYPE_12__* %98, i32 %99)
  %101 = load i64, i64* @ERROR_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @http_release_netconn(%struct.TYPE_12__* %97, i32 %103)
  br label %105

105:                                              ; preds = %96, %93
  br label %106

106:                                              ; preds = %105, %72
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %107, i64 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  store i64 %115, i64* %118, align 8
  br label %119

119:                                              ; preds = %114, %106
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @INTERNET_STATUS_RESPONSE_RECEIVED, align 4
  %127 = call i32 @INTERNET_SendCallback(%struct.TYPE_13__* %121, i32 %125, i32 %126, i64* %6, i32 8)
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* @ERROR_SUCCESS, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i64, i64* %5, align 8
  store i64 %132, i64* %7, align 8
  br label %133

133:                                              ; preds = %131, %119
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @ERROR_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @send_request_complete(%struct.TYPE_12__* %134, i32 %138, i64 %139)
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i64 @HTTPREQ_Read(%struct.TYPE_12__*, i8*, i64, i64*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @refill_read_buffer(%struct.TYPE_12__*, i32, i64*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @http_release_netconn(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @drain_content(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_13__*, i32, i32, i64*, i32) #1

declare dso_local i32 @send_request_complete(%struct.TYPE_12__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
