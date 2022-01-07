; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_large_int.c_test_RtlLargeIntegerToChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_large_int.c_test_RtlLargeIntegerToChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@NB_LARGEINT2STR = common dso_local global i32 0, align 4
@largeint2str = common dso_local global %struct.TYPE_3__* null, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"(test a): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"(test b): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [81 x i8] c"(test c): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [81 x i8] c"(test d): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlLargeIntegerToChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlLargeIntegerToChar() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @NB_LARGEINT2STR, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = call i32 @one_RtlLargeIntegerToChar_test(i32 %9, %struct.TYPE_3__* %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %4

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pRtlLargeIntegerToChar(i32* %3, i32 20, i32 %26, i32* null)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wine_dbgstr_longlong(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %43 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %36, i32 20, i32 %40, i64 %41, i64 %42)
  %44 = call i64 @pRtlLargeIntegerToChar(i32* %3, i32 20, i32 0, i32* null)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wine_dbgstr_longlong(i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %60 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 20, i32 %57, i64 %58, i64 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pRtlLargeIntegerToChar(i32* %3, i32 %64, i32 0, i32* null)
  store i64 %65, i64* %1, align 8
  %66 = load i64, i64* %1, align 8
  %67 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wine_dbgstr_longlong(i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %81 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %78, i32 0, i64 %79, i64 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @pRtlLargeIntegerToChar(i32* %3, i32 %85, i32 %89, i32* null)
  store i64 %90, i64* %1, align 8
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @wine_dbgstr_longlong(i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @largeint2str, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %1, align 8
  %109 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %110 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %103, i32 %107, i64 %108, i64 %109)
  ret void
}

declare dso_local i32 @one_RtlLargeIntegerToChar_test(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @pRtlLargeIntegerToChar(i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
