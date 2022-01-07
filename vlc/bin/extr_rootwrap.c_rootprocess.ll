; ModuleID = '/home/carl/AnghaBench/vlc/bin/extr_rootwrap.c_rootprocess.c'
source_filename = "/home/carl/AnghaBench/vlc/bin/extr_rootwrap.c_rootprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.sockaddr }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rootprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rootprocess(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %8

8:                                                ; preds = %91, %82, %54, %45, %30, %1
  %9 = load i32, i32* %2, align 4
  %10 = bitcast %union.anon* %3 to %struct.sockaddr_storage*
  %11 = call i32 @recv(i32 %9, %struct.sockaddr_storage* %10, i32 4, i32 0)
  %12 = sext i32 %11 to i64
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %95

14:                                               ; preds = %8
  %15 = bitcast %union.anon* %3 to %struct.sockaddr*
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %48 [
    i32 129, label %18
    i32 128, label %33
  ]

18:                                               ; preds = %14
  %19 = bitcast %union.anon* %3 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @is_allowed_port(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @EACCES, align 4
  %27 = call i32 @send_err(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %95

30:                                               ; preds = %24
  br label %8

31:                                               ; preds = %18
  store i32 4, i32* %4, align 4
  %32 = load i32, i32* @PF_INET, align 4
  store i32 %32, i32* %6, align 4
  br label %55

33:                                               ; preds = %14
  %34 = bitcast %union.anon* %3 to %struct.sockaddr_in6*
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_allowed_port(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @EACCES, align 4
  %42 = call i32 @send_err(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %95

45:                                               ; preds = %39
  br label %8

46:                                               ; preds = %33
  store i32 4, i32* %4, align 4
  %47 = load i32, i32* @PF_INET6, align 4
  store i32 %47, i32* %6, align 4
  br label %55

48:                                               ; preds = %14
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @EAFNOSUPPORT, align 4
  %51 = call i32 @send_err(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %95

54:                                               ; preds = %48
  br label %8

55:                                               ; preds = %46, %31
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SOCK_STREAM, align 4
  %58 = load i32, i32* @IPPROTO_TCP, align 4
  %59 = call i32 @socket(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %91

62:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SOL_SOCKET, align 4
  %65 = load i32, i32* @SO_REUSEADDR, align 4
  %66 = call i32 @setsockopt(i32 %63, i32 %64, i32 %65, i32* %7, i32 4)
  %67 = bitcast %union.anon* %3 to %struct.sockaddr*
  %68 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @IPPROTO_IPV6, align 4
  %74 = load i32, i32* @IPV6_V6ONLY, align 4
  %75 = call i32 @setsockopt(i32 %72, i32 %73, i32 %74, i32* %7, i32 4)
  br label %76

76:                                               ; preds = %71, %62
  %77 = load i32, i32* %5, align 4
  %78 = bitcast %union.anon* %3 to %struct.sockaddr*
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @bind(i32 %77, %struct.sockaddr* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @send_fd(i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @close(i32 %86)
  br label %8

88:                                               ; preds = %76
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @close(i32 %89)
  br label %91

91:                                               ; preds = %88, %55
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @send_err(i32 %92, i32 %93)
  br label %8

95:                                               ; preds = %29, %44, %53, %8
  ret void
}

declare dso_local i32 @recv(i32, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @is_allowed_port(i32) #1

declare dso_local i32 @send_err(i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @send_fd(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
