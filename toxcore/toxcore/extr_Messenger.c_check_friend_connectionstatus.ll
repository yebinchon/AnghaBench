; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_check_friend_connectionstatus.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_check_friend_connectionstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*, i64, i64, i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }

@NOFRIEND = common dso_local global i64 0, align 8
@FRIEND_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64)* @check_friend_connectionstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_friend_connectionstatus(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @NOFRIEND, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %95

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FRIEND_ONLINE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @FRIEND_ONLINE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %95

33:                                               ; preds = %13
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @break_files(%struct.TYPE_9__* %37, i64 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @clear_receipts(%struct.TYPE_9__* %40, i64 %41)
  br label %68

43:                                               ; preds = %33
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %43, %36
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %69, i64* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @check_friend_tcp_udp(%struct.TYPE_9__* %76, i64 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_9__*, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_9__*, i64, i64, i32)* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %68
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_9__*, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i32)** %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %86(%struct.TYPE_9__* %87, i64 %88, i64 %89, i32 %92)
  br label %94

94:                                               ; preds = %83, %68
  br label %95

95:                                               ; preds = %12, %94, %13
  ret void
}

declare dso_local i32 @break_files(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @clear_receipts(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @check_friend_tcp_udp(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
