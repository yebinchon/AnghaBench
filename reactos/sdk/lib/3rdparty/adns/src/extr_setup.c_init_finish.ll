; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_init_finish.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_init_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.protoent = type { i32 }
%struct.in_addr = type { i32 }

@adns_if_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"adns: no nameservers, using localhost\0A\00", align 1
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@ADNS_CLEAR_ERRNO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@ADNS_CAPTURE_ERRNO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @init_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_finish(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.protoent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_addr, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @adns_if_debug, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @fprintf(i64 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %16, %11
  %29 = load i32, i32* @INADDR_LOOPBACK, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @addserver(%struct.TYPE_6__* %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %1
  %37 = call %struct.protoent* @getprotobyname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.protoent* %37, %struct.protoent** %4, align 8
  %38 = load %struct.protoent*, %struct.protoent** %4, align 8
  %39 = icmp ne %struct.protoent* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %41, i32* %5, align 4
  br label %75

42:                                               ; preds = %36
  %43 = load i32, i32* @ADNS_CLEAR_ERRNO, align 4
  %44 = load i32, i32* @AF_INET, align 4
  %45 = load i32, i32* @SOCK_DGRAM, align 4
  %46 = load %struct.protoent*, %struct.protoent** %4, align 8
  %47 = getelementptr inbounds %struct.protoent, %struct.protoent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @socket(i32 %44, i32 %45, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @ADNS_CAPTURE_ERRNO, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %5, align 4
  br label %75

59:                                               ; preds = %42
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @adns__setnonblock(%struct.TYPE_6__* %60, i64 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %79

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @adns_socket_close(i64 %73)
  br label %75

75:                                               ; preds = %70, %57, %40
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = call i32 @free(%struct.TYPE_6__* %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @addserver(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @adns__setnonblock(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @adns_socket_close(i64) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
