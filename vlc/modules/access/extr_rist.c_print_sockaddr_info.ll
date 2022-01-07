; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_print_sockaddr_info.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_print_sockaddr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Peer IP:Port %s:%d\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sockaddr*)* @print_sockaddr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sockaddr_info(i32* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %16 = bitcast %struct.sockaddr* %15 to i8*
  %17 = bitcast i8* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @inet_ntoa(i32 %21)
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i32 @msg_Info(i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %26)
  br label %56

28:                                               ; preds = %2
  %29 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %36 = bitcast %struct.sockaddr* %35 to i8*
  %37 = bitcast i8* %36 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %37, %struct.sockaddr_in6** %6, align 8
  %38 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %7, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %8, align 8
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  %47 = call i32 @inet_ntop(i32 %44, i32* %46, i8* %41, i32 4)
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  %53 = call i32 @msg_Info(i32* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %52)
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  br label %55

55:                                               ; preds = %34, %28
  br label %56

56:                                               ; preds = %55, %14
  ret void
}

declare dso_local i32 @msg_Info(i32*, i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
