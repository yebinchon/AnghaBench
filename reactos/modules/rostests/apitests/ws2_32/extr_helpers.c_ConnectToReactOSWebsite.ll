; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_helpers.c_ConnectToReactOSWebsite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_helpers.c_ConnectToReactOSWebsite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64* }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"test.winehq.org\00", align 1
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConnectToReactOSWebsite(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %2, align 4
  %6 = call %struct.hostent* @gethostbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.hostent* %6, %struct.hostent** %4, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load %struct.hostent*, %struct.hostent** %4, align 8
  %10 = getelementptr inbounds %struct.hostent, %struct.hostent* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = call i32 @htons(i32 80)
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %22 = call i32 @connect(i32 %20, %struct.sockaddr* %21, i32 12)
  %23 = call i32 @SCKTEST(i32 %22)
  ret i32 1
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @SCKTEST(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
