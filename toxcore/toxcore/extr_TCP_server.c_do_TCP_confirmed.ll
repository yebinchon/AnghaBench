; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_do_TCP_confirmed.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_do_TCP_confirmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64 }

@TCP_STATUS_CONFIRMED = common dso_local global i64 0, align 8
@TCP_PING_FREQUENCY = common dso_local global i64 0, align 8
@TCP_PACKET_PING = common dso_local global i32 0, align 4
@TCP_PING_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @do_TCP_confirmed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_TCP_confirmed(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca [9 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %95, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %98

14:                                               ; preds = %8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %18
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_STATUS_CONFIRMED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %95

26:                                               ; preds = %14
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCP_PING_FREQUENCY, align 8
  %31 = call i64 @is_timeout(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %26
  %34 = load i32, i32* @TCP_PACKET_PING, align 4
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = call i64 (...) @random_64b()
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @memcpy(i32* %44, i64* %6, i32 8)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %48 = call i32 @write_packet_TCP_secure_connection(%struct.TYPE_9__* %46, i32* %47, i32 36, i32 1)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = call i64 (...) @unix_time()
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %72

58:                                               ; preds = %42
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TCP_PING_FREQUENCY, align 8
  %63 = load i64, i64* @TCP_PING_TIMEOUT, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i64 @is_timeout(i64 %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @kill_accepted(%struct.TYPE_8__* %68, i64 %69)
  br label %95

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TCP_PING_TIMEOUT, align 8
  %83 = call i64 @is_timeout(i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @kill_accepted(%struct.TYPE_8__* %86, i64 %87)
  br label %95

89:                                               ; preds = %78, %73
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = call i32 @send_pending_data(%struct.TYPE_9__* %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @do_confirmed_recv(%struct.TYPE_8__* %92, i64 %93)
  br label %95

95:                                               ; preds = %89, %85, %67, %25
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %3, align 8
  br label %8

98:                                               ; preds = %8
  ret void
}

declare dso_local i64 @is_timeout(i64, i64) #1

declare dso_local i64 @random_64b(...) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @write_packet_TCP_secure_connection(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i64 @unix_time(...) #1

declare dso_local i32 @kill_accepted(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @send_pending_data(%struct.TYPE_9__*) #1

declare dso_local i32 @do_confirmed_recv(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
