; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbReset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64*, i32 }

@.str = private unnamed_addr constant [22 x i8] c": adapter %p, ncb %p\0A\00", align 1
@NRC_BRIDGE = common dso_local global i64 0, align 8
@NRC_INVADDRESS = common dso_local global i64 0, align 8
@DEFAULT_NUM_SESSIONS = common dso_local global i64 0, align 8
@NRC_GOODRET = common dso_local global i64 0, align 8
@NRC_TOOMANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @nbReset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nbReset(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %9, %struct.TYPE_8__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @NRC_BRIDGE, align 8
  store i64 %15, i64* %3, align 8
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @NRC_INVADDRESS, align 8
  store i64 %20, i64* %3, align 8
  br label %114

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = call i32 @InterlockedIncrement(i32* %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %105

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NBCmdQueueCancelAll(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = call i32 @EnterCriticalSection(i32* %32)
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %58, %26
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = call i32 @nbInternalHangup(%struct.TYPE_9__* %50, %struct.TYPE_10__* %55)
  br label %57

57:                                               ; preds = %49, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %34

61:                                               ; preds = %34
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* @DEFAULT_NUM_SESSIONS, align 8
  br label %81

75:                                               ; preds = %66
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  br label %81

81:                                               ; preds = %75, %73
  %82 = phi i64 [ %74, %73 ], [ %80, %75 ]
  store i64 %82, i64* %8, align 8
  br label %92

83:                                               ; preds = %61
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i64, i64* @DEFAULT_NUM_SESSIONS, align 8
  store i64 %89, i64* %8, align 8
  br label %91

90:                                               ; preds = %83
  store i64 0, i64* %8, align 8
  br label %91

91:                                               ; preds = %90, %88
  br label %92

92:                                               ; preds = %91, %81
  %93 = load i64, i64* %8, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @nbResizeAdapter(%struct.TYPE_9__* %96, i64 %97)
  store i64 %98, i64* %6, align 8
  br label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @NRC_GOODRET, align 8
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = call i32 @LeaveCriticalSection(i32* %103)
  br label %107

105:                                              ; preds = %21
  %106 = load i64, i64* @NRC_TOOMANY, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = call i32 @InterlockedDecrement(i32* %109)
  %111 = load i64, i64* %6, align 8
  %112 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load i64, i64* %6, align 8
  store i64 %113, i64* %3, align 8
  br label %114

114:                                              ; preds = %107, %19, %14
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @NBCmdQueueCancelAll(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @nbInternalHangup(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @nbResizeAdapter(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
