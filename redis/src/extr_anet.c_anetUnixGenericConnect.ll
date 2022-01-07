; ModuleID = '/home/carl/AnghaBench/redis/src/extr_anet.c_anetUnixGenericConnect.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_anet.c_anetUnixGenericConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_LOCAL = common dso_local global i32 0, align 4
@ANET_ERR = common dso_local global i32 0, align 4
@ANET_CONNECT_NONBLOCK = common dso_local global i32 0, align 4
@ANET_OK = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"connect: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anetUnixGenericConnect(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @AF_LOCAL, align 4
  %12 = call i32 @anetCreateSocket(i8* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @ANET_ERR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ANET_ERR, align 4
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load i32, i32* @AF_LOCAL, align 4
  %19 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strncpy(i32 %21, i8* %22, i32 3)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ANET_CONNECT_NONBLOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @anetNonBlock(i8* %29, i32 %30)
  %32 = load i64, i64* @ANET_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load i32, i32* @ANET_ERR, align 4
  store i32 %37, i32* %4, align 4
  br label %65

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* %8, align 4
  %41 = bitcast %struct.sockaddr_un* %9 to %struct.sockaddr*
  %42 = call i32 @connect(i32 %40, %struct.sockaddr* %41, i32 8)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINPROGRESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ANET_CONNECT_NONBLOCK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %48, %44
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @strerror(i64 %57)
  %59 = call i32 @anetSetError(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32, i32* @ANET_ERR, align 4
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %39
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %55, %53, %34, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @anetCreateSocket(i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @anetNonBlock(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @anetSetError(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
