; ModuleID = '/home/carl/AnghaBench/vlc/bin/extr_rootwrap.c_send_fd.c'
source_filename = "/home/carl/AnghaBench/vlc/bin/extr_rootwrap.c_send_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i8*, i32, %struct.iovec*, i64, i32* }
%struct.iovec = type { i32*, i32 }
%struct.cmsghdr = type { i32, i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SCM_RIGHTS = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @send_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_fd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca %struct.iovec, align 8
  %7 = alloca %struct.cmsghdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = call i32 @CMSG_SPACE(i32 4)
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 5
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 3
  store %struct.iovec* %6, %struct.iovec** %17, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 1
  store i8* %14, i8** %19, align 8
  %20 = trunc i64 %12 to i32
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 0
  store i32* %10, i32** %22, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 1
  store i32 4, i32* %23, align 8
  %24 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %5)
  store %struct.cmsghdr* %24, %struct.cmsghdr** %7, align 8
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %27 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SCM_RIGHTS, align 4
  %29 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %30 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = call i32 @CMSG_LEN(i32 4)
  %32 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %33 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %35 = call i32 @CMSG_DATA(%struct.cmsghdr* %34)
  %36 = call i32 @memcpy(i32 %35, i32* %4, i32 4)
  %37 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %38 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MSG_NOSIGNAL, align 4
  %43 = call i32 @sendmsg(i32 %41, %struct.msghdr* %5, i32 %42)
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 4
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 -1
  %48 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %48)
  ret i32 %47
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
