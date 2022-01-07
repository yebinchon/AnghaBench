; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_QueryDataAvailable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_QueryDataAvailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"(%p %p %x %lx)\0A\00", align 1
@IRF_ASYNC = common dso_local global i32 0, align 4
@IRF_NO_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"these dwFlags aren't implemented: 0x%x\0A\00", align 1
@INTERNET_FLAG_ASYNC = common dso_local global i32 0, align 4
@INTERNET_HANDLE_IN_USE = common dso_local global i64 0, align 8
@ERROR_INTERNET_INTERNAL_ERROR = common dso_local global i64 0, align 8
@INTERNET_STATUS_RECEIVING_RESPONSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@INTERNET_STATUS_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i32, i32)* @HTTPREQ_QueryDataAvailable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTPREQ_QueryDataAvailable(%struct.TYPE_16__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = bitcast %struct.TYPE_16__* %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %10, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %23, i32* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IRF_ASYNC, align 4
  %30 = load i32, i32* @IRF_NO_WAIT, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @IRF_ASYNC, align 4
  %38 = load i32, i32* @IRF_NO_WAIT, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35, %4
  %44 = load i32*, i32** %7, align 8
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @INTERNET_FLAG_ASYNC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %43
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = call i64 @TryEnterCriticalSection(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %141

65:                                               ; preds = %60, %43
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = call i32 @EnterCriticalSection(i32* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ERROR_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* @INTERNET_HANDLE_IN_USE, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %93

82:                                               ; preds = %72
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @INTERNET_HANDLE_IN_USE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* @ERROR_INTERNET_INTERNAL_ERROR, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = call i32 @end_of_read_data(%struct.TYPE_17__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %99
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = call i32 @LeaveCriticalSection(i32* %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @INTERNET_STATUS_RECEIVING_RESPONSE, align 4
  %114 = call i32 @INTERNET_SendCallback(%struct.TYPE_12__* %108, i32 %112, i32 %113, i32* null, i32 0)
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = call i32 @EnterCriticalSection(i32* %116)
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @refill_read_buffer(%struct.TYPE_17__* %119, i32 %120, i32* %12)
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %103, %99, %93
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @INTERNET_HANDLE_IN_USE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i64, i64* @ERROR_SUCCESS, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %137

132:                                              ; preds = %122
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %132, %128
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = call i32 @LeaveCriticalSection(i32* %139)
  br label %143

141:                                              ; preds = %60
  %142 = load i32, i32* @WSAEWOULDBLOCK, align 4
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @async_read(%struct.TYPE_17__* %148, i32* null, i32 0, i32 0, i32* %149)
  store i32 %150, i32* %5, align 4
  br label %174

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @ERROR_SUCCESS, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %5, align 4
  br label %174

158:                                              ; preds = %151
  %159 = load i32, i32* %12, align 4
  %160 = load i32*, i32** %7, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @INTERNET_STATUS_RESPONSE_RECEIVED, align 4
  %171 = call i32 @INTERNET_SendCallback(%struct.TYPE_12__* %165, i32 %169, i32 %170, i32* %12, i32 4)
  br label %172

172:                                              ; preds = %163, %158
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %156, %147
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @TryEnterCriticalSection(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @end_of_read_data(%struct.TYPE_17__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_12__*, i32, i32, i32*, i32) #1

declare dso_local i32 @refill_read_buffer(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @async_read(%struct.TYPE_17__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
