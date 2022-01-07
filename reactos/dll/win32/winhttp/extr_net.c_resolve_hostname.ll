; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_resolve_hostname.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_resolve_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32, i32, i32 }
%struct.hostent = type { i32, i32, i32 }
%struct.sockaddr_in = type { i8*, i32, %struct.sockaddr_storage }

@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@cs_gethostbyname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get address of %s (%d)\0A\00", align 1
@h_errno = common dso_local global i32 0, align 4
@ERROR_WINHTTP_NAME_NOT_RESOLVED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.sockaddr_storage*)* @resolve_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_hostname(i32* %0, i32 %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hostent*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %12 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @strdupWA(i32* %13)
  store i8* %14, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = call i32 @EnterCriticalSection(i32* @cs_gethostbyname)
  %20 = load i8*, i8** %8, align 8
  %21 = call %struct.hostent* @gethostbyname(i8* %20)
  store %struct.hostent* %21, %struct.hostent** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @heap_free(i8* %22)
  %24 = load %struct.hostent*, %struct.hostent** %9, align 8
  %25 = icmp ne %struct.hostent* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @debugstr_w(i32* %27)
  %29 = load i32, i32* @h_errno, align 4
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = call i32 @LeaveCriticalSection(i32* @cs_gethostbyname)
  %32 = load i32, i32* @ERROR_WINHTTP_NAME_NOT_RESOLVED, align 4
  store i32 %32, i32* %4, align 4
  br label %56

33:                                               ; preds = %18
  %34 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %35 = call i32 @memset(%struct.sockaddr_storage* %34, i32 0, i32 24)
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 2
  %38 = load %struct.hostent*, %struct.hostent** %9, align 8
  %39 = getelementptr inbounds %struct.hostent, %struct.hostent* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hostent*, %struct.hostent** %9, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(%struct.sockaddr_storage* %37, i32 %40, i32 %43)
  %45 = load %struct.hostent*, %struct.hostent** %9, align 8
  %46 = getelementptr inbounds %struct.hostent, %struct.hostent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @htons(i32 %50)
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = call i32 @LeaveCriticalSection(i32* @cs_gethostbyname)
  %55 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %33, %26, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @strdupWA(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
