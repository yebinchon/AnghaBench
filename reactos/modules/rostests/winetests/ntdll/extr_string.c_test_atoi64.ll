; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_atoi64.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_atoi64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@NB_STR2LONGLONG = common dso_local global i32 0, align 4
@str2longlong = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"(test %d): call failed: _atoi64(\22%s\22) has result 0x%s, expected: 0x%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_atoi64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_atoi64() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %95, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @NB_STR2LONGLONG, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %98

7:                                                ; preds = %3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @p_atoi64(i32 %13)
  store i64 %14, i64* %2, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %7
  %23 = load i64, i64* %2, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %23, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %2, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i64 @ULL(i32 -2147483648, i32 0)
  br label %44

42:                                               ; preds = %31
  %43 = call i64 @ULL(i32 2147483647, i32 -1)
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = icmp eq i64 %32, %45
  br label %47

47:                                               ; preds = %44, %22
  %48 = phi i1 [ true, %22 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %1, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %2, align 8
  %58 = call i32 @wine_dbgstr_longlong(i64 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @wine_dbgstr_longlong(i64 %64)
  %66 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %56, i32 %58, i32 %65)
  br label %94

67:                                               ; preds = %7
  %68 = load i64, i64* %2, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %68, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %1, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %2, align 8
  %85 = call i32 @wine_dbgstr_longlong(i64 %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2longlong, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @wine_dbgstr_longlong(i64 %91)
  %93 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %83, i32 %85, i32 %92)
  br label %94

94:                                               ; preds = %67, %47
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %3

98:                                               ; preds = %3
  ret void
}

declare dso_local i64 @p_atoi64(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @ULL(i32, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
