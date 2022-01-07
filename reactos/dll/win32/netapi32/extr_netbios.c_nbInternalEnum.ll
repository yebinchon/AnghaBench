; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbInternalEnum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbInternalEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (...)* }

@gNBTable = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"before mark\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"marked, before store, %d transports\0A\00", align 1
@gNumTransports = common dso_local global i64 0, align 8
@gTransports = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"before sweep\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nbInternalEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbInternalEnum() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @EnterCriticalSection(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 1))
  %3 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %29, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 0), align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 3), align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 3), align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i64, i64* @FALSE, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 3), align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i64 %23, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %15, %8
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %1, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %1, align 8
  br label %4

32:                                               ; preds = %4
  %33 = load i64, i64* @gNumTransports, align 8
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  store i64 0, i64* %1, align 8
  br label %35

35:                                               ; preds = %56, %32
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @gNumTransports, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gTransports, align 8
  %41 = load i64, i64* %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (...)*, i32 (...)** %44, align 8
  %46 = icmp ne i32 (...)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gTransports, align 8
  %49 = load i64, i64* %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = call i32 (...) %53()
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %1, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %1, align 8
  br label %35

59:                                               ; preds = %35
  %60 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %61

61:                                               ; preds = %85, %59
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 0), align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 3), align 8
  %67 = load i64, i64* %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 3), align 8
  %74 = load i64, i64* %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 3), align 8
  %81 = load i64, i64* %1, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = call i32 @nbShutdownAdapter(%struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %79, %72, %65
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %1, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %1, align 8
  br label %61

88:                                               ; preds = %61
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 2), align 4
  %90 = call i32 @LeaveCriticalSection(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gNBTable, i32 0, i32 1))
  ret void
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @nbShutdownAdapter(%struct.TYPE_6__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
