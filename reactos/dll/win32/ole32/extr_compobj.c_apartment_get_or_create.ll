; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_get_or_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_get_or_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@csApartment = common dso_local global i32 0, align 4
@MainApartment = common dso_local global %struct.TYPE_9__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Created main-threaded apartment with OXID %s\0A\00", align 1
@MTA = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"entering the multithreaded apartment %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32)* @apartment_get_or_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @apartment_get_or_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.TYPE_9__* (...) @COM_CurrentApt()
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = call i32 @EnterCriticalSection(i32* @csApartment)
  %14 = load i32, i32* %2, align 4
  %15 = call i8* @apartment_construct(i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MainApartment, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %12
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** @MainApartment, align 8
  %21 = load i64, i64* @TRUE, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wine_dbgstr_longlong(i32 %26)
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %19, %12
  %30 = call i32 @LeaveCriticalSection(i32* @csApartment)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i32 @apartment_createwindowifneeded(%struct.TYPE_9__* %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %58

39:                                               ; preds = %7
  %40 = call i32 @EnterCriticalSection(i32* @csApartment)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MTA, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MTA, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wine_dbgstr_longlong(i32 %46)
  %48 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MTA, align 8
  %50 = call i32 @apartment_addref(%struct.TYPE_9__* %49)
  br label %55

51:                                               ; preds = %39
  %52 = load i32, i32* %2, align 4
  %53 = call i8* @apartment_construct(i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** @MTA, align 8
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MTA, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %3, align 8
  %57 = call i32 @LeaveCriticalSection(i32* @csApartment)
  br label %58

58:                                               ; preds = %55, %38
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call %struct.TYPE_10__* (...) @COM_CurrentInfo()
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  br label %62

62:                                               ; preds = %58, %1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %63
}

declare dso_local %struct.TYPE_9__* @COM_CurrentApt(...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i8* @apartment_construct(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @apartment_createwindowifneeded(%struct.TYPE_9__*) #1

declare dso_local i32 @apartment_addref(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @COM_CurrentInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
