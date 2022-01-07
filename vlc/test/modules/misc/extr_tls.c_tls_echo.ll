; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/misc/extr_tls.c_tls_echo.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/misc/extr_tls.c_tls_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@server_creds = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @tls_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tls_echo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.pollfd, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* @server_creds, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @vlc_tls_SessionHandshake(i32 %10, i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 1, label %16
    i32 2, label %19
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @POLLIN, align 4
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @POLLOUT, align 4
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  br label %24

22:                                               ; preds = %14
  %23 = call i32 (...) @vlc_assert_unreachable()
  br label %24

24:                                               ; preds = %22, %19, %16
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 0
  %27 = call i32 @vlc_tls_GetPollFD(i8* %25, i32* %26)
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = call i32 @poll(%struct.pollfd* %7, i32 1, i32 -1)
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %61

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %38 = call i32 @vlc_tls_Read(i8* %36, i8* %37, i32 256, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @vlc_tls_Write(i8* %41, i8* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %61

48:                                               ; preds = %40
  br label %35

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @vlc_tls_Shutdown(i8* %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %49
  br label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @vlc_tls_Close(i8* %58)
  %60 = load i8*, i8** %4, align 8
  store i8* %60, i8** %2, align 8
  br label %64

61:                                               ; preds = %56, %47, %33
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @vlc_tls_Close(i8* %62)
  store i8* null, i8** %2, align 8
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i32 @vlc_tls_SessionHandshake(i32, i8*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @vlc_tls_GetPollFD(i8*, i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @vlc_tls_Read(i8*, i8*, i32, i32) #1

declare dso_local i32 @vlc_tls_Write(i8*, i8*, i32) #1

declare dso_local i64 @vlc_tls_Shutdown(i8*, i32) #1

declare dso_local i32 @vlc_tls_Close(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
