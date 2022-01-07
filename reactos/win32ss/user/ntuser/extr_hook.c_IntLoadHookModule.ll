; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_hook.c_IntLoadHookModule.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_hook.c_IntLoadHookModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"IntLoadHookModule. Client PID: %p\0A\00", align 1
@WH_APIHOOK = common dso_local global i32 0, align 4
@W32PF_APIHOOKLOADED = common dso_local global i32 0, align 4
@strUahModule = common dso_local global i32 0, align 4
@strUahInitFunc = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"co_IntClientLoadLibrary returned %d\0A\00", align 1
@STUB = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IntLoadHookModule(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = call %struct.TYPE_3__* (...) @PsGetCurrentProcessWin32Process()
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @PsGetProcessId(i32 %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @WH_APIHOOK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @W32PF_APIHOOKLOADED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @W32PF_APIHOOKLOADED, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @TRUE, align 8
  %37 = call i64 @co_IntClientLoadLibrary(i32* @strUahModule, i32* @strUahInitFunc, i64 %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @W32PF_APIHOOKLOADED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %29
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %4, align 8
  br label %82

51:                                               ; preds = %22, %19
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @W32PF_APIHOOKLOADED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @TRUE, align 8
  %64 = call i64 @co_IntClientLoadLibrary(i32* null, i32* null, i64 %62, i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @W32PF_APIHOOKLOADED, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %4, align 8
  br label %82

76:                                               ; preds = %54, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %4, align 8
  br label %82

79:                                               ; preds = %3
  %80 = load i32, i32* @STUB, align 4
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %79, %77, %74, %49
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local %struct.TYPE_3__* @PsGetCurrentProcessWin32Process(...) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @PsGetProcessId(i32) #1

declare dso_local i64 @co_IntClientLoadLibrary(i32*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
