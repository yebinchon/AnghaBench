; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-mdns.c_manager_mdns_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-mdns.c_manager_mdns_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@RESOLVE_SUPPORT_NO = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Another mDNS responder prohibits binding the socket to the same port. Turning off mDNS support.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_mdns_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @manager_mdns_ipv4_fd(%struct.TYPE_7__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EADDRINUSE, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %44

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %51

26:                                               ; preds = %21
  %27 = call i64 (...) @socket_ipv6_is_supported()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = call i32 @manager_mdns_ipv6_fd(%struct.TYPE_7__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @EADDRINUSE, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %44

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %26
  store i32 0, i32* %2, align 4
  br label %51

44:                                               ; preds = %36, %20
  %45 = call i32 @log_warning(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = call i32 @manager_mdns_stop(%struct.TYPE_7__* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %43, %40, %24, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @manager_mdns_ipv4_fd(%struct.TYPE_7__*) #1

declare dso_local i64 @socket_ipv6_is_supported(...) #1

declare dso_local i32 @manager_mdns_ipv6_fd(%struct.TYPE_7__*) #1

declare dso_local i32 @log_warning(i8*) #1

declare dso_local i32 @manager_mdns_stop(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
