; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_sock_get_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_sock_get_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSAEINTR = common dso_local global i32 0, align 4
@WSAEBADF = common dso_local global i32 0, align 4
@WSAEACCES = common dso_local global i32 0, align 4
@WSAEFAULT = common dso_local global i32 0, align 4
@WSAEINVAL = common dso_local global i32 0, align 4
@WSAEMFILE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAEINPROGRESS = common dso_local global i32 0, align 4
@WSAEALREADY = common dso_local global i32 0, align 4
@WSAENOTSOCK = common dso_local global i32 0, align 4
@WSAEDESTADDRREQ = common dso_local global i32 0, align 4
@WSAEMSGSIZE = common dso_local global i32 0, align 4
@WSAEPROTOTYPE = common dso_local global i32 0, align 4
@WSAENOPROTOOPT = common dso_local global i32 0, align 4
@WSAEPROTONOSUPPORT = common dso_local global i32 0, align 4
@WSAESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@WSAEOPNOTSUPP = common dso_local global i32 0, align 4
@WSAEPFNOSUPPORT = common dso_local global i32 0, align 4
@WSAEAFNOSUPPORT = common dso_local global i32 0, align 4
@WSAEADDRINUSE = common dso_local global i32 0, align 4
@WSAEADDRNOTAVAIL = common dso_local global i32 0, align 4
@WSAENETDOWN = common dso_local global i32 0, align 4
@WSAENETUNREACH = common dso_local global i32 0, align 4
@WSAENETRESET = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4
@WSAENOBUFS = common dso_local global i32 0, align 4
@WSAEISCONN = common dso_local global i32 0, align 4
@WSAENOTCONN = common dso_local global i32 0, align 4
@WSAESHUTDOWN = common dso_local global i32 0, align 4
@WSAETOOMANYREFS = common dso_local global i32 0, align 4
@WSAETIMEDOUT = common dso_local global i32 0, align 4
@WSAECONNREFUSED = common dso_local global i32 0, align 4
@WSAELOOP = common dso_local global i32 0, align 4
@WSAENAMETOOLONG = common dso_local global i32 0, align 4
@WSAEHOSTDOWN = common dso_local global i32 0, align 4
@WSAEHOSTUNREACH = common dso_local global i32 0, align 4
@WSAENOTEMPTY = common dso_local global i32 0, align 4
@WSAEPROCLIM = common dso_local global i32 0, align 4
@WSAEUSERS = common dso_local global i32 0, align 4
@WSAEDQUOT = common dso_local global i32 0, align 4
@WSAESTALE = common dso_local global i32 0, align 4
@WSAEREMOTE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sock_set_error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sock_get_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_get_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %91 [
    i32 157, label %5
    i32 167, label %7
    i32 141, label %9
    i32 172, label %9
    i32 161, label %11
    i32 156, label %13
    i32 153, label %15
    i32 128, label %17
    i32 158, label %19
    i32 168, label %21
    i32 143, label %23
    i32 163, label %25
    i32 152, label %27
    i32 136, label %29
    i32 146, label %31
    i32 137, label %33
    i32 133, label %35
    i32 142, label %37
    i32 140, label %39
    i32 169, label %41
    i32 171, label %43
    i32 170, label %45
    i32 150, label %47
    i32 148, label %49
    i32 149, label %51
    i32 166, label %53
    i32 139, label %55
    i32 164, label %55
    i32 147, label %57
    i32 155, label %59
    i32 145, label %61
    i32 134, label %63
    i32 130, label %65
    i32 131, label %67
    i32 165, label %69
    i32 154, label %71
    i32 151, label %73
    i32 160, label %75
    i32 159, label %77
    i32 144, label %79
    i32 138, label %81
    i32 129, label %83
    i32 162, label %85
    i32 132, label %87
    i32 135, label %89
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @WSAEINTR, align 4
  store i32 %6, i32* %2, align 4
  br label %95

7:                                                ; preds = %1
  %8 = load i32, i32* @WSAEBADF, align 4
  store i32 %8, i32* %2, align 4
  br label %95

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @WSAEACCES, align 4
  store i32 %10, i32* %2, align 4
  br label %95

11:                                               ; preds = %1
  %12 = load i32, i32* @WSAEFAULT, align 4
  store i32 %12, i32* %2, align 4
  br label %95

13:                                               ; preds = %1
  %14 = load i32, i32* @WSAEINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %95

15:                                               ; preds = %1
  %16 = load i32, i32* @WSAEMFILE, align 4
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load i32, i32* @WSAEWOULDBLOCK, align 4
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load i32, i32* @WSAEINPROGRESS, align 4
  store i32 %20, i32* %2, align 4
  br label %95

21:                                               ; preds = %1
  %22 = load i32, i32* @WSAEALREADY, align 4
  store i32 %22, i32* %2, align 4
  br label %95

23:                                               ; preds = %1
  %24 = load i32, i32* @WSAENOTSOCK, align 4
  store i32 %24, i32* %2, align 4
  br label %95

25:                                               ; preds = %1
  %26 = load i32, i32* @WSAEDESTADDRREQ, align 4
  store i32 %26, i32* %2, align 4
  br label %95

27:                                               ; preds = %1
  %28 = load i32, i32* @WSAEMSGSIZE, align 4
  store i32 %28, i32* %2, align 4
  br label %95

29:                                               ; preds = %1
  %30 = load i32, i32* @WSAEPROTOTYPE, align 4
  store i32 %30, i32* %2, align 4
  br label %95

31:                                               ; preds = %1
  %32 = load i32, i32* @WSAENOPROTOOPT, align 4
  store i32 %32, i32* %2, align 4
  br label %95

33:                                               ; preds = %1
  %34 = load i32, i32* @WSAEPROTONOSUPPORT, align 4
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %1
  %36 = load i32, i32* @WSAESOCKTNOSUPPORT, align 4
  store i32 %36, i32* %2, align 4
  br label %95

37:                                               ; preds = %1
  %38 = load i32, i32* @WSAEOPNOTSUPP, align 4
  store i32 %38, i32* %2, align 4
  br label %95

39:                                               ; preds = %1
  %40 = load i32, i32* @WSAEPFNOSUPPORT, align 4
  store i32 %40, i32* %2, align 4
  br label %95

41:                                               ; preds = %1
  %42 = load i32, i32* @WSAEAFNOSUPPORT, align 4
  store i32 %42, i32* %2, align 4
  br label %95

43:                                               ; preds = %1
  %44 = load i32, i32* @WSAEADDRINUSE, align 4
  store i32 %44, i32* %2, align 4
  br label %95

45:                                               ; preds = %1
  %46 = load i32, i32* @WSAEADDRNOTAVAIL, align 4
  store i32 %46, i32* %2, align 4
  br label %95

47:                                               ; preds = %1
  %48 = load i32, i32* @WSAENETDOWN, align 4
  store i32 %48, i32* %2, align 4
  br label %95

49:                                               ; preds = %1
  %50 = load i32, i32* @WSAENETUNREACH, align 4
  store i32 %50, i32* %2, align 4
  br label %95

51:                                               ; preds = %1
  %52 = load i32, i32* @WSAENETRESET, align 4
  store i32 %52, i32* %2, align 4
  br label %95

53:                                               ; preds = %1
  %54 = load i32, i32* @WSAECONNABORTED, align 4
  store i32 %54, i32* %2, align 4
  br label %95

55:                                               ; preds = %1, %1
  %56 = load i32, i32* @WSAECONNRESET, align 4
  store i32 %56, i32* %2, align 4
  br label %95

57:                                               ; preds = %1
  %58 = load i32, i32* @WSAENOBUFS, align 4
  store i32 %58, i32* %2, align 4
  br label %95

59:                                               ; preds = %1
  %60 = load i32, i32* @WSAEISCONN, align 4
  store i32 %60, i32* %2, align 4
  br label %95

61:                                               ; preds = %1
  %62 = load i32, i32* @WSAENOTCONN, align 4
  store i32 %62, i32* %2, align 4
  br label %95

63:                                               ; preds = %1
  %64 = load i32, i32* @WSAESHUTDOWN, align 4
  store i32 %64, i32* %2, align 4
  br label %95

65:                                               ; preds = %1
  %66 = load i32, i32* @WSAETOOMANYREFS, align 4
  store i32 %66, i32* %2, align 4
  br label %95

67:                                               ; preds = %1
  %68 = load i32, i32* @WSAETIMEDOUT, align 4
  store i32 %68, i32* %2, align 4
  br label %95

69:                                               ; preds = %1
  %70 = load i32, i32* @WSAECONNREFUSED, align 4
  store i32 %70, i32* %2, align 4
  br label %95

71:                                               ; preds = %1
  %72 = load i32, i32* @WSAELOOP, align 4
  store i32 %72, i32* %2, align 4
  br label %95

73:                                               ; preds = %1
  %74 = load i32, i32* @WSAENAMETOOLONG, align 4
  store i32 %74, i32* %2, align 4
  br label %95

75:                                               ; preds = %1
  %76 = load i32, i32* @WSAEHOSTDOWN, align 4
  store i32 %76, i32* %2, align 4
  br label %95

77:                                               ; preds = %1
  %78 = load i32, i32* @WSAEHOSTUNREACH, align 4
  store i32 %78, i32* %2, align 4
  br label %95

79:                                               ; preds = %1
  %80 = load i32, i32* @WSAENOTEMPTY, align 4
  store i32 %80, i32* %2, align 4
  br label %95

81:                                               ; preds = %1
  %82 = load i32, i32* @WSAEPROCLIM, align 4
  store i32 %82, i32* %2, align 4
  br label %95

83:                                               ; preds = %1
  %84 = load i32, i32* @WSAEUSERS, align 4
  store i32 %84, i32* %2, align 4
  br label %95

85:                                               ; preds = %1
  %86 = load i32, i32* @WSAEDQUOT, align 4
  store i32 %86, i32* %2, align 4
  br label %95

87:                                               ; preds = %1
  %88 = load i32, i32* @WSAESTALE, align 4
  store i32 %88, i32* %2, align 4
  br label %95

89:                                               ; preds = %1
  %90 = load i32, i32* @WSAEREMOTE, align 4
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %1
  %92 = load i32, i32* %3, align 4
  store i32 %92, i32* @errno, align 4
  %93 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @WSAEFAULT, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
