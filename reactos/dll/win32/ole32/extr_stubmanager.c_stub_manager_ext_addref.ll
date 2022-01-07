; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_ext_addref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_ext_addref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { i32, i32, i64, i32, i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"added %u refs to %p (oid %s), rc is now %u\0A\00", align 1
@EXTCONN_STRONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stub_manager_ext_addref(%struct.stub_manager* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stub_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stub_manager* %0, %struct.stub_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %10 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %9, i32 0, i32 4
  %11 = call i32 @EnterCriticalSection(i32* %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %16 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ false, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ULONG_MAX, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %27 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = call i32 @min(i32 %23, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %33 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 8
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %40 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %20
  %46 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %47 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %46, i32 0, i32 4
  %48 = call i32 @LeaveCriticalSection(i32* %47)
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %51 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %52 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wine_dbgstr_longlong(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %49, %struct.stub_manager* %50, i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %45
  %60 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %61 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %66 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @EXTCONN_STRONG, align 4
  %69 = call i32 @IExternalConnection_AddConnection(i64 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %64, %59, %45
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, %struct.stub_manager*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @IExternalConnection_AddConnection(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
