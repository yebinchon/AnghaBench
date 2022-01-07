; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_getname.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_all = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sockaddr_all*, i8*, i64)* @getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getname(%union.sockaddr_all* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.sockaddr_all*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %union.sockaddr_all* %0, %union.sockaddr_all** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %18 = bitcast %union.sockaddr_all* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %25 = bitcast %union.sockaddr_all* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to i8*
  br label %33

28:                                               ; preds = %3
  %29 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %30 = bitcast %union.sockaddr_all* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to i8*
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i8* [ %27, %23 ], [ %32, %28 ]
  store i8* %34, i8** %10, align 8
  %35 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %36 = bitcast %union.sockaddr_all* %35 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %43 = bitcast %union.sockaddr_all* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %51

46:                                               ; preds = %33
  %47 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %48 = bitcast %union.sockaddr_all* %47 to %struct.TYPE_5__*
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i32 [ %45, %41 ], [ %50, %46 ]
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %union.sockaddr_all*, %union.sockaddr_all** %5, align 8
  %55 = bitcast %union.sockaddr_all* %54 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = trunc i64 %14 to i32
  %60 = call i64 @inet_ntop(i64 %57, i8* %58, i8* %16, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @snprintf(i8* %63, i64 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %65)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %70

67:                                               ; preds = %51
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ntohs(i32) #2

declare dso_local i64 @inet_ntop(i64, i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
