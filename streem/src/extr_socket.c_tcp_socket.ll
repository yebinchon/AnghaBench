; ModuleID = '/home/carl/AnghaBench/streem/src/extr_socket.c_tcp_socket.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_socket.c_tcp_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i64, i32, i32, %struct.addrinfo* }

@.str = private unnamed_addr constant [3 x i8] c"Sv\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@STRM_NG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"socket error: connect\00", align 1
@STRM_IO_READ = common dso_local global i32 0, align 4
@STRM_IO_WRITE = common dso_local global i32 0, align 4
@STRM_IO_FLUSH = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @tcp_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_socket(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [12 x i8], align 1
  %17 = alloca [7 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @strm_get_args(i32* %21, i32 %22, i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %18, i32* %19)
  %25 = load i32, i32* %19, align 4
  %26 = call i64 @strm_number_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %30 = load i32, i32* %19, align 4
  %31 = call i64 @strm_value_int(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  store i8* %34, i8** %15, align 8
  br label %41

35:                                               ; preds = %4
  %36 = load i32, i32* %19, align 4
  %37 = call i32 @strm_value_str(i32 %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %40 = call i8* @strm_str_cstr(i32 %38, i8* %39)
  store i8* %40, i8** %15, align 8
  br label %41

41:                                               ; preds = %35, %28
  %42 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 32)
  %43 = load i32, i32* @AF_UNSPEC, align 4
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @SOCK_STREAM, align 4
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %50 = call i8* @strm_str_cstr(i32 %48, i8* %49)
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @getaddrinfo(i8* %50, i8* %51, %struct.addrinfo* %10, %struct.addrinfo** %11)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i8* @gai_strerror(i32 %57)
  %59 = call i32 @strm_raise(i32* %56, i8* %58)
  %60 = load i32, i32* @STRM_NG, align 4
  store i32 %60, i32* %5, align 4
  br label %117

61:                                               ; preds = %41
  %62 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %62, %struct.addrinfo** %12, align 8
  br label %63

63:                                               ; preds = %94, %61
  %64 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %65 = icmp ne %struct.addrinfo* %64, null
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  %67 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @socket(i32 %69, i32 %72, i64 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %94

80:                                               ; preds = %66
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @connect(i32 %81, i32 %84, i32 %87)
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %98

91:                                               ; preds = %80
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @closesocket(i32 %92)
  br label %94

94:                                               ; preds = %91, %79
  %95 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 5
  %97 = load %struct.addrinfo*, %struct.addrinfo** %96, align 8
  store %struct.addrinfo* %97, %struct.addrinfo** %12, align 8
  br label %63

98:                                               ; preds = %90, %63
  %99 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %100 = call i32 @freeaddrinfo(%struct.addrinfo* %99)
  %101 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %102 = icmp eq %struct.addrinfo* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @strm_raise(i32* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @STRM_NG, align 4
  store i32 %106, i32* %5, align 4
  br label %117

107:                                              ; preds = %98
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @STRM_IO_READ, align 4
  %110 = load i32, i32* @STRM_IO_WRITE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @STRM_IO_FLUSH, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @strm_io_new(i32 %108, i32 %113)
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @STRM_OK, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %107, %103, %55
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @strm_number_p(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strm_value_int(i32) #1

declare dso_local i32 @strm_value_str(i32) #1

declare dso_local i8* @strm_str_cstr(i32, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i64) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @strm_io_new(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
