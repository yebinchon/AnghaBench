; ModuleID = '/home/carl/AnghaBench/timescaledb/src/net/extr_conn_ssl.c_ssl_errmsg.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/net/extr_conn_ssl.c_ssl_errmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32* }

@ssl_errmsg.errbuf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"SSL error zero return\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SSL error want read\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SSL error want write\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"SSL error want connect\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SSL error want accept\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SSL error want X509 lookup\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"EOF in SSL operation\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"unknown SSL syscall error\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SSL error syscall\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"no SSL error\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SSL error code %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*)* @ssl_errmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ssl_errmsg(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = bitcast %struct.TYPE_6__* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* null, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SSL_get_error(i32* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %58 [
    i32 136, label %32
    i32 135, label %32
    i32 128, label %33
    i32 131, label %34
    i32 130, label %35
    i32 132, label %36
    i32 133, label %37
    i32 129, label %38
    i32 134, label %39
  ]

32:                                               ; preds = %25, %25
  br label %59

33:                                               ; preds = %25
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %84

34:                                               ; preds = %25
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %84

35:                                               ; preds = %25
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %84

36:                                               ; preds = %25
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %84

37:                                               ; preds = %25
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %84

38:                                               ; preds = %25
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %84

39:                                               ; preds = %25
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %84

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @IS_SOCKET_ERROR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = call i8* @ts_plain_errmsg(%struct.TYPE_6__* %54)
  store i8* %55, i8** %2, align 8
  br label %84

56:                                               ; preds = %46
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %84

57:                                               ; preds = %39
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %84

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @IS_SOCKET_ERROR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = call i8* @ts_plain_errmsg(%struct.TYPE_6__* %71)
  store i8* %72, i8** %2, align 8
  br label %84

73:                                               ; preds = %63
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %84

74:                                               ; preds = %60
  %75 = load i64, i64* %7, align 8
  %76 = call i8* @ERR_reason_error_string(i64 %75)
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* null, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i8*, i8** %5, align 8
  store i8* %80, i8** %2, align 8
  br label %84

81:                                               ; preds = %74
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ssl_errmsg.errbuf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 %82)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ssl_errmsg.errbuf, i64 0, i64 0), i8** %2, align 8
  br label %84

84:                                               ; preds = %81, %79, %73, %67, %57, %56, %50, %45, %38, %37, %36, %35, %34, %33
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i64 @IS_SOCKET_ERROR(i32) #1

declare dso_local i8* @ts_plain_errmsg(%struct.TYPE_6__*) #1

declare dso_local i8* @ERR_reason_error_string(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
