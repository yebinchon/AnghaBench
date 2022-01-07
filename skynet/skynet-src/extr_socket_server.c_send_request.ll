; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_request.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.request_package = type { i8** }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"socket-server : send ctrl command error %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.request_package*, i8, i32)* @send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_request(%struct.socket_server* %0, %struct.request_package* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.request_package*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.request_package* %1, %struct.request_package** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %10 = load i8, i8* %7, align 1
  %11 = sext i8 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.request_package*, %struct.request_package** %6, align 8
  %14 = getelementptr inbounds %struct.request_package, %struct.request_package* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 6
  store i8* %12, i8** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.request_package*, %struct.request_package** %6, align 8
  %21 = getelementptr inbounds %struct.request_package, %struct.request_package* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 7
  store i8* %19, i8** %23, align 8
  br label %24

24:                                               ; preds = %46, %4
  %25 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %26 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.request_package*, %struct.request_package** %6, align 8
  %29 = getelementptr inbounds %struct.request_package, %struct.request_package* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 6
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 2
  %34 = call i32 @write(i32 %27, i8** %31, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %24
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @stderr, align 4
  %43 = load i64, i64* @errno, align 8
  %44 = call i8* @strerror(i64 %43)
  %45 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %41, %37
  br label %24

47:                                               ; preds = %24
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 2
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  ret void
}

declare dso_local i32 @write(i32, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
