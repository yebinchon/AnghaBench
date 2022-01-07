; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlIntegerToChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlIntegerToChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@NB_INT2STR = common dso_local global i64 0, align 8
@int2str = common dso_local global %struct.TYPE_3__* null, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"(test a): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"(test b): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"(test c): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"(test d): RtlIntegerToChar(%u, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlIntegerToChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlIntegerToChar() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @NB_INT2STR, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i64, i64* %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  %12 = call i32 @one_RtlIntegerToChar_test(i64 %8, %struct.TYPE_3__* %11)
  br label %13

13:                                               ; preds = %7
  %14 = load i64, i64* %2, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %2, align 8
  br label %3

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @pRtlIntegerToChar(i32 %20, i32 20, i32 %24, i32* null)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %40 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %33, i32 20, i32 %37, i64 %38, i64 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @pRtlIntegerToChar(i32 %44, i32 20, i32 0, i32* null)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %56 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 20, i32 0, i64 %54, i64 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pRtlIntegerToChar(i32 %60, i32 %64, i32 0, i32* null)
  store i64 %65, i64* %1, align 8
  %66 = load i64, i64* %1, align 8
  %67 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %80 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %77, i32 0, i64 %78, i64 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @pRtlIntegerToChar(i32 %84, i32 %88, i32 %92, i32* null)
  store i64 %93, i64* %1, align 8
  %94 = load i64, i64* %1, align 8
  %95 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @int2str, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %1, align 8
  %111 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %112 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %105, i32 %109, i64 %110, i64 %111)
  ret void
}

declare dso_local i32 @one_RtlIntegerToChar_test(i64, %struct.TYPE_3__*) #1

declare dso_local i64 @pRtlIntegerToChar(i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
