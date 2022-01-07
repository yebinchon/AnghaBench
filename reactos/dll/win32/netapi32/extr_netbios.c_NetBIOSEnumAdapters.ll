; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_NetBIOSEnumAdapters.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_NetBIOSEnumAdapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"transport 0x%08x, callback %p, closure %p\0A\00", align 1
@ALL_TRANSPORTS = common dso_local global i32 0, align 4
@gNBTable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NetBIOSEnumAdapters(i64 %0, i32 (i64, i32, i64, i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32 (i64, i32, i64, i32*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 (i64, i32, i64, i32*, i8*)* %1, i32 (i64, i32, i64, i32*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32 (i64, i32, i64, i32*, i8*)*, i32 (i64, i32, i64, i32*, i8*)** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %11, i32 (i64, i32, i64, i32*, i8*)* %12, i8* %13)
  %15 = load i32 (i64, i32, i64, i32*, i8*)*, i32 (i64, i32, i64, i32*, i8*)** %5, align 8
  %16 = icmp ne i32 (i64, i32, i64, i32*, i8*)* %15, null
  br i1 %16, label %17, label %102

17:                                               ; preds = %3
  %18 = load i32, i32* @ALL_TRANSPORTS, align 4
  %19 = call i64 @memcmp(i64* %4, i32 %18, i32 8)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %22 = call i32 @EnterCriticalSection(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 1))
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 3), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* @TRUE, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 3), align 8
  %27 = call i32 (...) @nbInternalEnum()
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 3), align 8
  br label %29

29:                                               ; preds = %25, %17
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 0), align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 2), align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %34
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %45, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %30

52:                                               ; preds = %30
  %53 = load i64, i64* %9, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %52
  store i64 0, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 0), align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 2), align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 2), align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %70, %67
  %79 = load i32 (i64, i32, i64, i32*, i8*)*, i32 (i64, i32, i64, i32*, i8*)** %5, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  %83 = trunc i64 %81 to i32
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 2), align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 2), align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 %79(i64 %80, i32 %83, i64 %88, i32* %92, i8* %93)
  br label %95

95:                                               ; preds = %78, %70, %60
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %8, align 8
  br label %56

99:                                               ; preds = %56
  br label %100

100:                                              ; preds = %99, %52
  %101 = call i32 @LeaveCriticalSection(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gNBTable, i32 0, i32 1))
  br label %102

102:                                              ; preds = %100, %3
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i32 (i64, i32, i64, i32*, i8*)*, i8*) #1

declare dso_local i64 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @nbInternalEnum(...) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
