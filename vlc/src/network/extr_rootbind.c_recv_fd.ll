; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_rootbind.c_recv_fd.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_rootbind.c_recv_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i8*, i32, %struct.iovec*, i64, i32* }
%struct.iovec = type { i32*, i32 }
%struct.cmsghdr = type { i64, i64, i64 }

@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_RIGHTS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @recv_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca %struct.iovec, align 8
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = call i32 @CMSG_SPACE(i32 4)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 5
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 3
  store %struct.iovec* %5, %struct.iovec** %18, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 1
  store i8* %15, i8** %20, align 8
  %21 = trunc i64 %13 to i32
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %5, i32 0, i32 0
  store i32* %7, i32** %23, align 8
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %5, i32 0, i32 1
  store i32 4, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @recvmsg(i32 %25, %struct.msghdr* %4, i32 0)
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %64

30:                                               ; preds = %1
  %31 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %4)
  store %struct.cmsghdr* %31, %struct.cmsghdr** %6, align 8
  br label %32

32:                                               ; preds = %59, %30
  %33 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %34 = icmp ne %struct.cmsghdr* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %37 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SOL_SOCKET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %43 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SCM_RIGHTS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %49 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @CMSG_LEN(i32 4)
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %55 = call i32 @CMSG_DATA(%struct.cmsghdr* %54)
  %56 = call i32 @memcpy(i32* %8, i32 %55, i32 4)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %64

58:                                               ; preds = %47, %41, %35
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %61 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %4, %struct.cmsghdr* %60)
  store %struct.cmsghdr* %61, %struct.cmsghdr** %6, align 8
  br label %32

62:                                               ; preds = %32
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %53, %29
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
