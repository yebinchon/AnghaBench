; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_int_release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_int_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"after %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stub_manager_int_release(%struct.stub_manager* %0) #0 {
  %2 = alloca %struct.stub_manager*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.stub_manager* %0, %struct.stub_manager** %2, align 8
  %5 = load %struct.stub_manager*, %struct.stub_manager** %2, align 8
  %6 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @EnterCriticalSection(i32* %9)
  %11 = load %struct.stub_manager*, %struct.stub_manager** %2, align 8
  %12 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.stub_manager*, %struct.stub_manager** %2, align 8
  %21 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %20, i32 0, i32 0
  %22 = call i32 @list_remove(i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @LeaveCriticalSection(i32* %25)
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.stub_manager*, %struct.stub_manager** %2, align 8
  %31 = call i32 @stub_manager_delete(%struct.stub_manager* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @stub_manager_delete(%struct.stub_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
