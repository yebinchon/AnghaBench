; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_notify_unmarshal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_notify_unmarshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { i32, i64 }
%struct.ifstub = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"attempted unmarshal of unknown IPID %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"attempted invalid normal unmarshal, norm_refs is zero\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stub_manager_notify_unmarshal(%struct.stub_manager* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stub_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifstub*, align 8
  store %struct.stub_manager* %0, %struct.stub_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.ifstub* @stub_manager_ipid_to_ifstub(%struct.stub_manager* %9, i32* %10)
  store %struct.ifstub* %11, %struct.ifstub** %7, align 8
  %12 = icmp ne %struct.ifstub* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @debugstr_guid(i32* %14)
  %16 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %20 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %19, i32 0, i32 0
  %21 = call i32 @EnterCriticalSection(i32* %20)
  %22 = load %struct.ifstub*, %struct.ifstub** %7, align 8
  %23 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %30 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %35 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %41

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %44 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %43, i32 0, i32 0
  %45 = call i32 @LeaveCriticalSection(i32* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.ifstub* @stub_manager_ipid_to_ifstub(%struct.stub_manager*, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
