; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateBitmapIndirect.c_Test_CreateBitmapIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateBitmapIndirect.c_Test_CreateBitmapIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"CreateBitmapIndirect failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"CreateBitmapIndirect succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CreateBitmapIndirect() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 6
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store i32 2, i32* %9, align 4
  %10 = call i64 @CreateBitmapIndirect(%struct.TYPE_4__* %2)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @DeleteObject(i64 %15)
  %17 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %2, i32 32)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store i32 1, i32* %24, align 4
  %25 = call i64 @CreateBitmapIndirect(%struct.TYPE_4__* %2)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %2, i32 32)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store i32 3, i32* %37, align 4
  %38 = call i64 @CreateBitmapIndirect(%struct.TYPE_4__* %2)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %2, i32 32)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store i32 4, i32* %50, align 4
  %51 = call i64 @CreateBitmapIndirect(%struct.TYPE_4__* %2)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %2, i32 32)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 8, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 61440, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store i32 32768, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store i32 %64, i32* %65, align 4
  %66 = call i64 @CreateBitmapIndirect(%struct.TYPE_4__* %2)
  store i64 %66, i64* %1, align 8
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @DeleteObject(i64 %67)
  ret void
}

declare dso_local i64 @CreateBitmapIndirect(%struct.TYPE_4__*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
