; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_request.c_addr_to_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_request.c_addr_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unsupported address family %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sockaddr_storage*)* @addr_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @addr_to_str(%struct.sockaddr_storage* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sockaddr_storage*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %3, align 8
  %8 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %13 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %25 [
    i32 129, label %15
    i32 128, label %20
  ]

15:                                               ; preds = %1
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %17 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %6, align 8
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %22 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr_in6*
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  store i8* %24, i8** %6, align 8
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %27 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %41

30:                                               ; preds = %20, %15
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %32 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = trunc i64 %9 to i32
  %36 = call i32 @inet_ntop(i32 %33, i8* %34, i8* %11, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %41

39:                                               ; preds = %30
  %40 = call i32* @strdupAW(i8* %11)
  store i32* %40, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %38, %25
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #2

declare dso_local i32* @strdupAW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
