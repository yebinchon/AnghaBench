; ModuleID = '/home/carl/AnghaBench/timescaledb/src/net/extr_http.c_ts_http_send_and_recv.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/net/extr_http.c_ts_http_send_and_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_ERROR_NONE = common dso_local global i64 0, align 8
@HTTP_ERROR_REQUEST_BUILD = common dso_local global i64 0, align 8
@HTTP_ERROR_WRITE = common dso_local global i64 0, align 8
@HTTP_ERROR_CONN_CLOSED = common dso_local global i64 0, align 8
@HTTP_ERROR_INVALID_BUFFER_STATE = common dso_local global i64 0, align 8
@HTTP_ERROR_RESPONSE_INCOMPLETE = common dso_local global i64 0, align 8
@HTTP_ERROR_READ = common dso_local global i64 0, align 8
@HTTP_ERROR_RESPONSE_PARSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ts_http_send_and_recv(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* @HTTP_ERROR_NONE, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @ts_http_request_build(i32* %17, i64* %9)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* null, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @HTTP_ERROR_REQUEST_BUILD, align 8
  store i64 %22, i64* %4, align 8
  br label %109

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @ts_connection_write(i32* %28, i8* %32, i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %27
  %43 = load i64, i64* @HTTP_ERROR_WRITE, align 8
  store i64 %43, i64* %4, align 8
  br label %109

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @HTTP_ERROR_CONN_CLOSED, align 8
  store i64 %48, i64* %4, align 8
  br label %109

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %24

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %106, %57
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @HTTP_ERROR_NONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @ts_http_response_state_is_done(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  br i1 %68, label %69, label %107

69:                                               ; preds = %67
  store i64 0, i64* %13, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i8* @ts_http_response_state_next_buffer(i32* %70, i64* %13)
  store i8* %71, i8** %14, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64, i64* @HTTP_ERROR_INVALID_BUFFER_STATE, align 8
  store i64 %75, i64* %11, align 8
  br label %106

76:                                               ; preds = %69
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i64, i64* @HTTP_ERROR_RESPONSE_INCOMPLETE, align 8
  store i64 %80, i64* %11, align 8
  br label %105

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i64 @ts_connection_read(i32* %82, i8* %83, i64 %84)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* @HTTP_ERROR_READ, align 8
  store i64 %89, i64* %11, align 8
  br label %104

90:                                               ; preds = %81
  %91 = load i64, i64* %15, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* @HTTP_ERROR_CONN_CLOSED, align 8
  store i64 %94, i64* %11, align 8
  br label %103

95:                                               ; preds = %90
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @ts_http_response_state_parse(i32* %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* @HTTP_ERROR_RESPONSE_PARSE, align 8
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %100, %95
  br label %103

103:                                              ; preds = %102, %93
  br label %104

104:                                              ; preds = %103, %88
  br label %105

105:                                              ; preds = %104, %79
  br label %106

106:                                              ; preds = %105, %74
  br label %58

107:                                              ; preds = %67
  %108 = load i64, i64* %11, align 8
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %107, %47, %42, %21
  %110 = load i64, i64* %4, align 8
  ret i64 %110
}

declare dso_local i8* @ts_http_request_build(i32*, i64*) #1

declare dso_local i32 @ts_connection_write(i32*, i8*, i64) #1

declare dso_local i32 @ts_http_response_state_is_done(i32*) #1

declare dso_local i8* @ts_http_response_state_next_buffer(i32*, i64*) #1

declare dso_local i64 @ts_connection_read(i32*, i8*, i64) #1

declare dso_local i32 @ts_http_response_state_parse(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
