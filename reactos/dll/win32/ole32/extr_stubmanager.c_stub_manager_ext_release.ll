; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_ext_release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_ext_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"removed %u refs from %p (oid %s), rc is now %u\0A\00", align 1
@EXTCONN_STRONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stub_manager_ext_release(%struct.stub_manager* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stub_manager*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.stub_manager* %0, %struct.stub_manager** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %12 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %11, i32 0, i32 4
  %13 = call i32 @EnterCriticalSection(i32* %12)
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %16 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @min(i64 %14, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %21 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %28 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %26, %4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %36 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %45 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ false, %40 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %53 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %52, i32 0, i32 4
  %54 = call i32 @LeaveCriticalSection(i32* %53)
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %57 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %58 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @wine_dbgstr_longlong(i32 %59)
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %55, %struct.stub_manager* %56, i32 %60, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %49
  %66 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %67 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %72 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @EXTCONN_STRONG, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @IExternalConnection_ReleaseConnection(i64 %73, i32 %74, i32 0, i32 %75)
  br label %77

77:                                               ; preds = %70, %65, %49
  %78 = load i64, i64* %10, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %82 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %90 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88, %85, %80
  %94 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %95 = call i32 @stub_manager_int_release(%struct.stub_manager* %94)
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96, %77
  %98 = load i64, i64* %10, align 8
  ret i64 %98
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i64, %struct.stub_manager*, i32, i64) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @IExternalConnection_ReleaseConnection(i64, i32, i32, i32) #1

declare dso_local i32 @stub_manager_int_release(%struct.stub_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
