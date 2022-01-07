; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_ftp.c_FtpProtocol_open_request.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_ftp.c_FtpProtocol_open_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INTERNET_FLAG_EXISTING_CONNECT = common dso_local global i32 0, align 4
@INTERNET_FLAG_PASSIVE = common dso_local global i32 0, align 4
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"InternetOpenUrl failed: %d\0A\00", align 1
@INET_E_RESOURCE_NOT_FOUND = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*)* @FtpProtocol_open_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FtpProtocol_open_request(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_5__* @impl_from_Protocol(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @IUri_GetAbsoluteUri(i32* %17, i32* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %56

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @INTERNET_FLAG_EXISTING_CONNECT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @INTERNET_FLAG_PASSIVE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = ptrtoint %struct.TYPE_4__* %33 to i32
  %35 = call i32 @InternetOpenUrlW(i32 %25, i32 %26, i32* null, i32 0, i32 %31, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @SysFreeString(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %24
  %47 = call i64 (...) @GetLastError()
  %48 = load i64, i64* @ERROR_IO_PENDING, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = call i64 (...) @GetLastError()
  %52 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @INET_E_RESOURCE_NOT_FOUND, align 4
  store i32 %53, i32* %6, align 4
  br label %56

54:                                               ; preds = %46, %24
  %55 = load i32, i32* @S_OK, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %50, %22
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_5__* @impl_from_Protocol(i32*) #1

declare dso_local i32 @IUri_GetAbsoluteUri(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @InternetOpenUrlW(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
