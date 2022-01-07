; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbInternalHangup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbInternalHangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, i32)* }
%struct.TYPE_10__ = type { i32 }

@NRC_BRIDGE = common dso_local global i32 0, align 4
@NRC_SNUMOUT = common dso_local global i32 0, align 4
@NRC_ILLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @nbInternalHangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbInternalHangup(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @NRC_BRIDGE, align 4
  store i32 %10, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @NRC_SNUMOUT, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %11
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i32)* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %28(i32 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %16
  %38 = load i32, i32* @NRC_ILLCMD, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = call i32 @EnterCriticalSection(i32* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = call i32 @memset(%struct.TYPE_10__* %43, i32 0, i32 4)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = call i32 @LeaveCriticalSection(i32* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %14, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
