; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-llmnr.c_manager_llmnr_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-llmnr.c_manager_llmnr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@RESOLVE_SUPPORT_NO = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Another LLMNR responder prohibits binding the socket to the same port. Turning off LLMNR support.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_llmnr_start(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @manager_llmnr_ipv4_udp_fd(%struct.TYPE_9__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EADDRINUSE, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %70

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = call i32 @manager_llmnr_ipv4_tcp_fd(%struct.TYPE_9__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EADDRINUSE, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %70

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %77

39:                                               ; preds = %34
  %40 = call i64 (...) @socket_ipv6_is_supported()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @manager_llmnr_ipv6_udp_fd(%struct.TYPE_9__* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EADDRINUSE, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %70

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %77

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i32 @manager_llmnr_ipv6_tcp_fd(%struct.TYPE_9__* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EADDRINUSE, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %70

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %39
  store i32 0, i32* %2, align 4
  br label %77

70:                                               ; preds = %62, %49, %33, %20
  %71 = call i32 @log_warning(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %72 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = call i32 @manager_llmnr_stop(%struct.TYPE_9__* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %69, %66, %53, %37, %24, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @manager_llmnr_ipv4_udp_fd(%struct.TYPE_9__*) #1

declare dso_local i32 @manager_llmnr_ipv4_tcp_fd(%struct.TYPE_9__*) #1

declare dso_local i64 @socket_ipv6_is_supported(...) #1

declare dso_local i32 @manager_llmnr_ipv6_udp_fd(%struct.TYPE_9__*) #1

declare dso_local i32 @manager_llmnr_ipv6_tcp_fd(%struct.TYPE_9__*) #1

declare dso_local i32 @log_warning(i8*) #1

declare dso_local i32 @manager_llmnr_stop(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
