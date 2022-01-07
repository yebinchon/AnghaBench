; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHCreateWorkerWindowA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHCreateWorkerWindowA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"expected window\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WorkerA\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"expected WorkerA class, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"got %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"shlwapi.dll\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get class info\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_WINDOWEDGE = common dso_local global i32 0, align 4
@WS_EX_LAYOUTRTL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"0x%08lx\0A\00", align 1
@WS_EX_TOOLWINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHCreateWorkerWindowA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateWorkerWindowA() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 @pSHCreateWorkerWindowA(i32 0, i32* null, i32 0, i32 0, i32 0, i32 0)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %13 = call i32 @GetClassNameA(i64 %11, i8* %12, i32 20)
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %15 = call i64 @lstrcmpA(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @GetWindowLongPtrA(i64 %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %28 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @GetClassInfoA(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %1)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 4
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @DestroyWindow(i64 %61)
  %63 = call i64 @pSHCreateWorkerWindowA(i32 0, i32* null, i32 0, i32 0, i32 0, i32 -559038737)
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %70 = call i32 @GetClassNameA(i64 %68, i8* %69, i32 20)
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %72 = call i64 @lstrcmpA(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @GetWindowLongPtrA(i64 %77, i32 0)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, -559038737
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i64, i64* %3, align 8
  %85 = load i32, i32* @GWL_EXSTYLE, align 4
  %86 = call i32 @GetWindowLongA(i64 %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @WS_EX_WINDOWEDGE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %0
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @WS_EX_WINDOWEDGE, align 4
  %93 = load i32, i32* @WS_EX_LAYOUTRTL, align 4
  %94 = or i32 %92, %93
  %95 = icmp eq i32 %91, %94
  br label %96

96:                                               ; preds = %90, %0
  %97 = phi i1 [ true, %0 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %99)
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @DestroyWindow(i64 %101)
  %103 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %104 = call i64 @pSHCreateWorkerWindowA(i32 0, i32* null, i32 %103, i32 0, i32 0, i32 0)
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i32, i32* @GWL_EXSTYLE, align 4
  %107 = call i32 @GetWindowLongA(i64 %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @WS_EX_WINDOWEDGE, align 4
  %110 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %111 = or i32 %109, %110
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @WS_EX_WINDOWEDGE, align 4
  %116 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @WS_EX_LAYOUTRTL, align 4
  %119 = or i32 %117, %118
  %120 = icmp eq i32 %114, %119
  br label %121

121:                                              ; preds = %113, %96
  %122 = phi i1 [ true, %96 ], [ %120, %113 ]
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %4, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %124)
  %126 = load i64, i64* %3, align 8
  %127 = call i32 @DestroyWindow(i64 %126)
  ret void
}

declare dso_local i64 @pSHCreateWorkerWindowA(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetClassNameA(i64, i8*, i32) #1

declare dso_local i64 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @GetWindowLongPtrA(i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @GetClassInfoA(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @GetWindowLongA(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
