; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_HttpEndRequestW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_HttpEndRequestW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32*, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Not connected\0A\00", align 1
@ERROR_INTERNET_OPERATION_CANCELLED = common dso_local global i64 0, align 8
@INTERNET_STATUS_RECEIVING_RESPONSE = common dso_local global i32 0, align 4
@ERROR_HTTP_HEADER_NOT_FOUND = common dso_local global i64 0, align 8
@INTERNET_STATUS_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INTERNET_FLAG_NO_AUTO_REDIRECT = common dso_local global i32 0, align 4
@szGET = common dso_local global i32 0, align 4
@szHEAD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i64, i32)* @HTTP_HttpEndRequestW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HTTP_HttpEndRequestW(%struct.TYPE_18__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @is_valid_netconn(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = call i32 @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = load i64, i64* @ERROR_INTERNET_OPERATION_CANCELLED, align 8
  %21 = call i32 @send_request_complete(%struct.TYPE_18__* %19, i32 0, i64 %20)
  %22 = load i64, i64* @ERROR_INTERNET_OPERATION_CANCELLED, align 8
  store i64 %22, i64* %4, align 8
  br label %173

23:                                               ; preds = %3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INTERNET_STATUS_RECEIVING_RESPONSE, align 4
  %31 = call i32 @INTERNET_SendCallback(%struct.TYPE_19__* %25, i32 %29, i32 %30, i32* null, i32 0)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = call i64 @HTTP_GetResponseHeaders(%struct.TYPE_18__* %32, i32* %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %23
  %39 = load i64, i64* @ERROR_HTTP_HEADER_NOT_FOUND, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INTERNET_STATUS_RESPONSE_RECEIVED, align 4
  %48 = call i32 @INTERNET_SendCallback(%struct.TYPE_19__* %42, i32 %46, i32 %47, i32* %8, i32 8)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = call i32 @http_process_keep_alive(%struct.TYPE_18__* %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = call i32 @HTTP_ProcessCookies(%struct.TYPE_18__* %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = call i32 @HTTP_ProcessExpires(%struct.TYPE_18__* %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = call i32 @HTTP_ProcessLastModified(%struct.TYPE_18__* %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = call i64 @set_content_length(%struct.TYPE_18__* %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %40
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @http_release_netconn(%struct.TYPE_18__* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %144

75:                                               ; preds = %71
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @INTERNET_FLAG_NO_AUTO_REDIRECT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %144, label %83

83:                                               ; preds = %75
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %143 [
    i32 130, label %87
    i32 131, label %87
    i32 128, label %87
    i32 129, label %87
  ]

87:                                               ; preds = %83, %83, %83, %83
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = call i32* @get_redirect_url(%struct.TYPE_18__* %88)
  store i32* %89, i32** %10, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %143

93:                                               ; preds = %87
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @szGET, align 4
  %98 = call i32 @strcmpW(i32* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %93
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @szHEAD, align 4
  %105 = call i32 @strcmpW(i32* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 129
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @heap_free(i32* %115)
  %117 = load i32, i32* @szGET, align 4
  %118 = call i32* @heap_strdupW(i32 %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  br label %121

121:                                              ; preds = %112, %107, %100, %93
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = load i32, i32* @FALSE, align 4
  %125 = call i64 @drain_content(%struct.TYPE_18__* %123, i32 %124)
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @http_release_netconn(%struct.TYPE_18__* %122, i32 %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i64 @HTTP_HandleRedirect(%struct.TYPE_18__* %130, i32* %131)
  store i64 %132, i64* %9, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @heap_free(i32* %133)
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @ERROR_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %121
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i64 @HTTP_HttpSendRequestW(%struct.TYPE_18__* %139, i32* null, i32 0, i32* null, i32 0, i32 0, i32 %140)
  store i64 %141, i64* %9, align 8
  br label %142

142:                                              ; preds = %138, %121
  br label %143

143:                                              ; preds = %142, %83, %92
  br label %144

144:                                              ; preds = %143, %75, %71
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* @ERROR_SUCCESS, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = call i32 @create_cache_entry(%struct.TYPE_18__* %149)
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* @ERROR_SUCCESS, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = call i32 @HTTP_ReceiveRequestData(%struct.TYPE_18__* %161)
  br label %171

163:                                              ; preds = %155, %151
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @ERROR_SUCCESS, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @send_request_complete(%struct.TYPE_18__* %164, i32 %168, i64 %169)
  br label %171

171:                                              ; preds = %163, %160
  %172 = load i64, i64* %9, align 8
  store i64 %172, i64* %4, align 8
  br label %173

173:                                              ; preds = %171, %17
  %174 = load i64, i64* %4, align 8
  ret i64 %174
}

declare dso_local i32 @is_valid_netconn(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @send_request_complete(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_19__*, i32, i32, i32*, i32) #1

declare dso_local i64 @HTTP_GetResponseHeaders(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @http_process_keep_alive(%struct.TYPE_18__*) #1

declare dso_local i32 @HTTP_ProcessCookies(%struct.TYPE_18__*) #1

declare dso_local i32 @HTTP_ProcessExpires(%struct.TYPE_18__*) #1

declare dso_local i32 @HTTP_ProcessLastModified(%struct.TYPE_18__*) #1

declare dso_local i64 @set_content_length(%struct.TYPE_18__*) #1

declare dso_local i32 @http_release_netconn(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @get_redirect_url(%struct.TYPE_18__*) #1

declare dso_local i32 @strcmpW(i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32* @heap_strdupW(i32) #1

declare dso_local i64 @drain_content(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @HTTP_HandleRedirect(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @HTTP_HttpSendRequestW(%struct.TYPE_18__*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @create_cache_entry(%struct.TYPE_18__*) #1

declare dso_local i32 @HTTP_ReceiveRequestData(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
