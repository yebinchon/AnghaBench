; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_recv.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, i64, i32, i32, i64, i32 }

@LOG_VERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recv on sd %d %zd of %zu\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"recv on sd %d eof rb %zu sb %zu\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"recv on sd %d not ready - eintr\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"recv on sd %d not ready - eagain\00", align 1
@NC_EAGAIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"recv on sd %d failed: %s\00", align 1
@NC_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @conn_recv(%struct.conn* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.conn* %0, %struct.conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.conn*, %struct.conn** %5, align 8
  %18 = getelementptr inbounds %struct.conn, %struct.conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ASSERT(i32 %19)
  br label %21

21:                                               ; preds = %75, %3
  %22 = load %struct.conn*, %struct.conn** %5, align 8
  %23 = getelementptr inbounds %struct.conn, %struct.conn* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @nc_read(i32 %24, i8* %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* @LOG_VERB, align 4
  %29 = load %struct.conn*, %struct.conn** %5, align 8
  %30 = getelementptr inbounds %struct.conn, %struct.conn* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32, i64 %33)
  %35 = load i64, i64* %8, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %21
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.conn*, %struct.conn** %5, align 8
  %43 = getelementptr inbounds %struct.conn, %struct.conn* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.conn*, %struct.conn** %5, align 8
  %47 = getelementptr inbounds %struct.conn, %struct.conn* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %111

51:                                               ; preds = %21
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.conn*, %struct.conn** %5, align 8
  %56 = getelementptr inbounds %struct.conn, %struct.conn* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.conn*, %struct.conn** %5, align 8
  %58 = getelementptr inbounds %struct.conn, %struct.conn* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* @LOG_INFO, align 4
  %60 = load %struct.conn*, %struct.conn** %5, align 8
  %61 = getelementptr inbounds %struct.conn, %struct.conn* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.conn*, %struct.conn** %5, align 8
  %64 = getelementptr inbounds %struct.conn, %struct.conn* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.conn*, %struct.conn** %5, align 8
  %67 = getelementptr inbounds %struct.conn, %struct.conn* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %65, i32 %68)
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %4, align 8
  br label %111

71:                                               ; preds = %51
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EINTR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @LOG_VERB, align 4
  %77 = load %struct.conn*, %struct.conn** %5, align 8
  %78 = getelementptr inbounds %struct.conn, %struct.conn* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %21

81:                                               ; preds = %71
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @EAGAIN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EWOULDBLOCK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85, %81
  %90 = load %struct.conn*, %struct.conn** %5, align 8
  %91 = getelementptr inbounds %struct.conn, %struct.conn* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* @LOG_VERB, align 4
  %93 = load %struct.conn*, %struct.conn** %5, align 8
  %94 = getelementptr inbounds %struct.conn, %struct.conn* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* @NC_EAGAIN, align 8
  store i64 %97, i64* %4, align 8
  br label %111

98:                                               ; preds = %85
  %99 = load %struct.conn*, %struct.conn** %5, align 8
  %100 = getelementptr inbounds %struct.conn, %struct.conn* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i64, i64* @errno, align 8
  %102 = load %struct.conn*, %struct.conn** %5, align 8
  %103 = getelementptr inbounds %struct.conn, %struct.conn* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = load %struct.conn*, %struct.conn** %5, align 8
  %105 = getelementptr inbounds %struct.conn, %struct.conn* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* @errno, align 8
  %108 = call i32 @strerror(i64 %107)
  %109 = call i32 @log_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %108)
  %110 = load i64, i64* @NC_ERROR, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %98, %89, %54, %44
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @nc_read(i32, i8*, i64) #1

declare dso_local i32 @log_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @log_error(i8*, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
