; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_Read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"retrieved %u bytes (res %u)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*, i64, i64*, i32)* @HTTPREQ_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HTTPREQ_Read(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = call i32 @EnterCriticalSection(i32* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @min(i64 %23, i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @memcpy(i8* %28, i64 %35, i64 %36)
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %22, %5
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %12, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @read_http_stream(%struct.TYPE_6__* %54, i32* %58, i64 %61, i64* %11, i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %12, align 8
  br label %81

71:                                               ; preds = %53
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %78, %75, %71
  br label %81

81:                                               ; preds = %80, %67
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = call i32 @LeaveCriticalSection(i32* %84)
  %86 = load i64, i64* %12, align 8
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %88, i64 %89)
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %82
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @ERROR_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @http_release_netconn(%struct.TYPE_6__* %99, i32 %100)
  br label %116

102:                                              ; preds = %94
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i64 @drain_content(%struct.TYPE_6__* %106, i32 %107)
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @http_release_netconn(%struct.TYPE_6__* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %105, %102
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %82
  %118 = load i64, i64* %13, align 8
  ret i64 %118
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @read_http_stream(%struct.TYPE_6__*, i32*, i64, i64*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i32 @http_release_netconn(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @drain_content(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
