; ModuleID = '/home/carl/AnghaBench/timescaledb/src/net/extr_conn_plain.c_ts_plain_connect.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/net/extr_conn_plain.c_ts_plain_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@MAX_PORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@WSAHOST_NOT_FOUND = common dso_local global i32 0, align 4
@WSA_FLAG_OVERLAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_plain_connect(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  %18 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  %20 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 5
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* null, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MAX_PORT, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @set_error(i32 %32)
  store i32 -1, i32* %5, align 4
  br label %104

34:                                               ; preds = %27, %4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MAX_PORT, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @snprintf(i8* %42, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8* %45, i8** %8, align 8
  %46 = load i32, i32* @AI_NUMERICSERV, align 4
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 5
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %37, %34
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @getaddrinfo(i8* %49, i8* %50, %struct.addrinfo* %12, %struct.addrinfo** %11)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @SOCKET_ERROR, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %56, i32* @errno, align 4
  br label %95

57:                                               ; preds = %48
  %58 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @socket(i32 %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  store i32 %67, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @IS_SOCKET_ERROR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %92

74:                                               ; preds = %57
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = load i32, i32* @DEFAULT_TIMEOUT_MSEC, align 4
  %77 = call i64 @ts_plain_set_timeout(%struct.TYPE_4__* %75, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @SOCKET_ERROR, align 4
  store i32 %80, i32* %13, align 4
  br label %92

81:                                               ; preds = %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @connect(i32 %84, i32 %87, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %81, %79, %73
  %93 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %94 = call i32 @freeaddrinfo(%struct.addrinfo* %93)
  br label %95

95:                                               ; preds = %92, %54
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @IS_SOCKET_ERROR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  store i32 -1, i32* %5, align 4
  br label %104

103:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %99, %31
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @set_error(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @IS_SOCKET_ERROR(i32) #1

declare dso_local i64 @ts_plain_set_timeout(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
