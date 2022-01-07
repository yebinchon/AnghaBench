; ModuleID = '/home/carl/AnghaBench/systemd/src/reply-password/extr_reply-password.c_send_on_socket.c'
source_filename = "/home/carl/AnghaBench/systemd/src/reply-password/extr_reply-password.c_send_on_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_union = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"Specified socket path for AF_UNIX socket invalid, refusing: %s\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to send: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i64)* @send_on_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_on_socket(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.sockaddr_union, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = bitcast %union.sockaddr_union* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @assert(i8* %21)
  %23 = bitcast %union.sockaddr_union* %10 to i32*
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @sockaddr_un_set_path(i32* %23, i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (i32, i8*, ...) @log_error_errno(i32 %29, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %5, align 4
  br label %45

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @MSG_NOSIGNAL, align 4
  %37 = bitcast %union.sockaddr_union* %10 to i32*
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @sendto(i32 %33, i8* %34, i64 %35, i32 %36, i32* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 (i32, i8*, ...) @log_error_errno(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %41, %28
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i8*) #2

declare dso_local i32 @sockaddr_un_set_path(i32*, i8*) #2

declare dso_local i32 @log_error_errno(i32, i8*, ...) #2

declare dso_local i64 @sendto(i32, i8*, i64, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
