; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@MYPORT = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = load i32, i32* @IPPROTO_UDP, align 4
  %16 = call i32 @socket(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %2
  %22 = call i32 (...) @init_leases_list()
  %23 = load i32, i32* @AF_INET, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @MYPORT, align 4
  %26 = call i32 @htons(i32 %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @INADDR_ANY, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %32 = call i32 @memset(i32* %31, i8 signext 0, i32 8)
  %33 = load i32, i32* %6, align 4
  %34 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %35 = call i32 @bind(i32 %33, %struct.sockaddr* %34, i32 4)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %21
  store i32 4, i32* %9, align 4
  br label %41

41:                                               ; preds = %59, %58, %54, %50, %40
  %42 = load i32, i32* %6, align 4
  %43 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %44 = call i32 @recvfrom(i32 %42, i32* %11, i32 4, i32 0, %struct.sockaddr* %43, i32* %9)
  store i32 %44, i32* %10, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = call i64 @display_dhcp_packet(i32* %11, i32* %12)
  %48 = call i64 @parse_dhcp_options(i32* %11, i32* %12)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %41

51:                                               ; preds = %46
  %52 = call i64 @display_dhcp_packet(i32* %11, i32* %12)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %41

55:                                               ; preds = %51
  %56 = call i64 @process_dhcp_packet(i32* %11, i32* %12)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %41

59:                                               ; preds = %55
  br label %41

60:                                               ; preds = %41
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @close(i32 %61)
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_leases_list(...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @display_dhcp_packet(i32*, i32*) #1

declare dso_local i64 @parse_dhcp_options(i32*, i32*) #1

declare dso_local i64 @process_dhcp_packet(i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
