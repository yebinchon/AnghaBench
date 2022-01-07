; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wtoi64.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wtoi64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@NB_STR2LONGLONG = common dso_local global i32 0, align 4
@str2longlong = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"(test %d): call failed: _atoi64(\22%s\22) has result 0x%s, expected: 0x%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wtoi64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wtoi64() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %100, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NB_STR2LONGLONG, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %103

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pRtlCreateUnicodeStringFromAsciiz(%struct.TYPE_5__* %2, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @p_wtoi64(i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %8
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %27, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i64 @ULL(i32 -2147483648, i32 0)
  br label %48

46:                                               ; preds = %35
  %47 = call i64 @ULL(i32 2147483647, i32 -1)
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  %50 = icmp eq i64 %36, %49
  br label %51

51:                                               ; preds = %48, %26
  %52 = phi i1 [ true, %26 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %1, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @wine_dbgstr_longlong(i64 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @wine_dbgstr_longlong(i64 %68)
  %70 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %60, i32 %62, i32 %69)
  br label %98

71:                                               ; preds = %8
  %72 = load i64, i64* %3, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %1, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @wine_dbgstr_longlong(i64 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2longlong, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @wine_dbgstr_longlong(i64 %95)
  %97 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %87, i32 %89, i32 %96)
  br label %98

98:                                               ; preds = %71, %51
  %99 = call i32 @pRtlFreeUnicodeString(%struct.TYPE_5__* %2)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %4

103:                                              ; preds = %4
  ret void
}

declare dso_local i32 @pRtlCreateUnicodeStringFromAsciiz(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @p_wtoi64(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @ULL(i32, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i64) #1

declare dso_local i32 @pRtlFreeUnicodeString(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
