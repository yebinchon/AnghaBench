; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_print_sockaddr_info_change.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_print_sockaddr_info_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"Peer IP:Port change detected: old IP:Port %s:%d, new IP:Port %s:%d\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sockaddr*, %struct.sockaddr*)* @print_sockaddr_info_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sockaddr_info_change(i32* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %21 = bitcast %struct.sockaddr* %20 to i8*
  %22 = bitcast i8* %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %7, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = bitcast %struct.sockaddr* %23 to i8*
  %25 = bitcast i8* %24 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %25, %struct.sockaddr_in** %8, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @inet_ntoa(i32 %29)
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @inet_ntoa(i32 %37)
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohs(i32 %41)
  %43 = call i32 @msg_Info(i32* %26, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %34, i8* %38, i32 %42)
  br label %88

44:                                               ; preds = %3
  %45 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_INET6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %44
  %51 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %52 = bitcast %struct.sockaddr* %51 to i8*
  %53 = bitcast i8* %52 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %53, %struct.sockaddr_in6** %9, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %55 = bitcast %struct.sockaddr* %54 to i8*
  %56 = bitcast i8* %55 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %56, %struct.sockaddr_in6** %10, align 8
  %57 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %11, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %12, align 8
  %61 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %62 = zext i32 %61 to i64
  %63 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %13, align 8
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %68 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %67, i32 0, i32 1
  %69 = call i32 @inet_ntop(i32 %66, i32* %68, i8* %60, i32 4)
  %70 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 1
  %75 = call i32 @inet_ntop(i32 %72, i32* %74, i8* %63, i32 4)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ntohs(i32 %79)
  %81 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ntohs(i32 %83)
  %85 = call i32 @msg_Info(i32* %76, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %80, i8* %63, i32 %84)
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %87

87:                                               ; preds = %50, %44
  br label %88

88:                                               ; preds = %87, %19
  ret void
}

declare dso_local i32 @msg_Info(i32*, i8*, i8*, i32, i8*, i32) #1

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
