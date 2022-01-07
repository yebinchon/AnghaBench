; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetBrushOrgEx.c_Test_SetBrushOrgEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetBrushOrgEx.c_Test_SetBrushOrgEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"could not ceate DC\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SetBrushOrgEx() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = call i64 @CreateCompatibleDC(i32 0)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %9 = call i32 @TEST_SET(i64 0, i32 0, i32 0, %struct.TYPE_5__* null, i32 0, i32 %8)
  %10 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %11 = call i32 @TEST_SET(i64 0, i32 0, i32 0, %struct.TYPE_5__* inttoptr (i64 -1 to %struct.TYPE_5__*), i32 0, i32 %10)
  %12 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %13 = call i32 @TEST_SET(i64 0, i32 0, i32 0, %struct.TYPE_5__* %2, i32 0, i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @TEST_SET(i64 %14, i32 1, i32 2, %struct.TYPE_5__* %2, i32 1, i32 0)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @ok_long(i64 %17, i32 0)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ok_long(i64 %20, i32 0)
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @SetBrushOrgEx(i64 %22, i32 0, i32 0, %struct.TYPE_5__* %2)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ok_long(i64 %25, i32 1)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ok_long(i64 %28, i32 2)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @TEST_SET(i64 %32, i32 1, i32 2, %struct.TYPE_5__* inttoptr (i64 -1 to %struct.TYPE_5__*), i32 -1, i32 0)
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @SetBrushOrgEx(i64 %34, i32 0, i32 0, %struct.TYPE_5__* %2)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ok_long(i64 %37, i32 0)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ok_long(i64 %40, i32 0)
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @TEST_SET(i64 %42, i32 -10000, i32 -20000000, %struct.TYPE_5__* %2, i32 1, i32 0)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ok_long(i64 %45, i32 0)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ok_long(i64 %48, i32 0)
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @SetBrushOrgEx(i64 %50, i32 0, i32 0, %struct.TYPE_5__* %2)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ok_long(i64 %53, i32 -10000)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ok_long(i64 %56, i32 -20000000)
  ret void
}

declare dso_local i64 @CreateCompatibleDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @TEST_SET(i64, i32, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ok_long(i64, i32) #1

declare dso_local i32 @SetBrushOrgEx(i64, i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
