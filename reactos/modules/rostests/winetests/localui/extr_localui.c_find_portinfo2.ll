; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localui/extr_localui.c_find_portinfo2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localui/extr_localui.c_find_portinfo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@pi_buffer = common dso_local global i32* null, align 8
@pi_needed = common dso_local global i32 0, align 4
@pi_numports = common dso_local global i32 0, align 4
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"The service 'Spooler' is required for many tests\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"EnumPorts succeeded: got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"EnumPorts failed: got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32)* @find_portinfo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @find_portinfo2(i32 %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @pi_buffer, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = call i32 @EnumPortsW(i32* null, i32 2, i32* null, i32 0, i32* @pi_needed, i32* @pi_numports)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @RPC_S_SERVER_UNAVAILABLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @win_skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %62

18:                                               ; preds = %12, %8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* @pi_needed, align 4
  %27 = call i32* @HeapAlloc(i32 %25, i32 0, i32 %26)
  store i32* %27, i32** @pi_buffer, align 8
  %28 = load i32*, i32** @pi_buffer, align 8
  %29 = load i32, i32* @pi_needed, align 4
  %30 = call i32 @EnumPortsW(i32* null, i32 2, i32* %28, i32 %29, i32* @pi_needed, i32* @pi_numports)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %18, %1
  %37 = load i32*, i32** @pi_buffer, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32*, i32** @pi_buffer, align 8
  %41 = bitcast i32* %40 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %55, %39
  %43 = load i32, i32* @pi_numports, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @lstrcmpiW(i32 %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %2, align 8
  br label %62

55:                                               ; preds = %46
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 1
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %42

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %36
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %62

62:                                               ; preds = %61, %53, %16
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %63
}

declare dso_local i32 @EnumPortsW(i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @lstrcmpiW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
