; ModuleID = '/home/carl/AnghaBench/tmux/extr_client.c_client_connect.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_client.c_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"socket is %s\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"trying connect\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"connect failed: %s\00", align 1
@ECONNREFUSED = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%s.lock\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"didn't get lock (%d)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"got lock (%d)\00", align 1
@client_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, i8*, i32)* @client_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_connect(%struct.event_base* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_un, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %14 = call i32 @memset(%struct.sockaddr_un* %8, i32 0, i32 8)
  %15 = load i32, i32* @AF_UNIX, align 4
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlcpy(i32 %18, i8* %19, i32 4)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp uge i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @ENAMETOOLONG, align 8
  store i64 %24, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %127

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %76, %74, %25
  %29 = load i32, i32* @AF_UNIX, align 4
  %30 = load i32, i32* @SOCK_STREAM, align 4
  %31 = call i32 @socket(i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %127

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  %37 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*
  %38 = call i32 @connect(i32 %36, %struct.sockaddr* %37, i32 8)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %101

40:                                               ; preds = %34
  %41 = load i64, i64* @errno, align 8
  %42 = call i32 @strerror(i64 %41)
  %43 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @ECONNREFUSED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @ENOENT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %116

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %116

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @xasprintf(i8** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @client_get_lock(i8* %64)
  store i32 %65, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @free(i8* %70)
  store i8* null, i8** %13, align 8
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, -2
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %28

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  store i32 1, i32* %12, align 4
  br label %28

79:                                               ; preds = %56
  %80 = load i32, i32* %11, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @unlink(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @ENOENT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @close(i32 %93)
  store i32 -1, i32* %4, align 4
  br label %127

95:                                               ; preds = %86, %82, %79
  %96 = load i32, i32* @client_proc, align 4
  %97 = load %struct.event_base*, %struct.event_base** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @server_start(i32 %96, %struct.event_base* %97, i32 %98, i8* %99)
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %95, %34
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @close(i32 %110)
  br label %112

112:                                              ; preds = %107, %104, %101
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @setblocking(i32 %113, i32 0)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %127

116:                                              ; preds = %55, %51
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @close(i32 %122)
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @close(i32 %125)
  store i32 -1, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %112, %90, %33, %23
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i64 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @client_get_lock(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @server_start(i32, %struct.event_base*, i32, i8*) #1

declare dso_local i32 @setblocking(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
