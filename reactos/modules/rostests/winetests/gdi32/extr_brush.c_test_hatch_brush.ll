; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_brush.c_test_hatch_brush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_brush.c_test_hatch_brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@HS_API_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%u: CreateHatchBrush failed err %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wrong size %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"wrong color %08x\0A\00", align 1
@HS_DIAGCROSS = common dso_local global i32 0, align 4
@BS_HATCHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"wrong style %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"wrong hatch %lu/%u\0A\00", align 1
@BS_SOLID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"wrong hatch %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%u: CreateHatchBrush succeeded\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hatch_brush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hatch_brush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %92, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 20
  br i1 %7, label %8, label %95

8:                                                ; preds = %5
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @RGB(i32 12, i32 34, i32 56)
  %12 = call i64 @CreateHatchBrush(i32 %10, i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @HS_API_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %1, align 4
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @GetObjectW(i64 %23, i32 12, %struct.TYPE_3__* %4)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 12
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @RGB(i32 12, i32 34, i32 56)
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @ok(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @HS_DIAGCROSS, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BS_HATCHED, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %1, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %58)
  br label %76

60:                                               ; preds = %16
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BS_SOLID, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, i32, ...) @ok(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %60, %42
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @DeleteObject(i64 %77)
  br label %91

79:                                               ; preds = %8
  %80 = load i64, i64* %3, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = call i32 (...) @GetLastError()
  %87 = icmp eq i32 %86, -559038737
  %88 = zext i1 %87 to i32
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %79, %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %5

95:                                               ; preds = %5
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateHatchBrush(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
