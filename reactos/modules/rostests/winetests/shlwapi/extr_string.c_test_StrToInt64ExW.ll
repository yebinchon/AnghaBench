; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrToInt64ExW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrToInt64ExW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@StrToInt_results = common dso_local global %struct.TYPE_3__* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No result returned from '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"converted '%s' wrong (%s)\0A\00", align 1
@STIF_SUPPORT_HEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrToInt64ExW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrToInt64ExW() #0 {
  %1 = alloca [256 x i32], align 16
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrToInt_results, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %2, align 8
  br label %6

6:                                                ; preds = %49, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %6
  store i32 -1, i32* %3, align 4
  %12 = load i32, i32* @CP_ACP, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = call i32 @MultiByteToWideChar(i32 %12, i32 0, i64 %15, i32 -1, i32* %16, i32 %18)
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %21 = call i64 @pStrToInt64ExW(i32* %20, i32 0, i32* %3)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, -1
  br label %27

27:                                               ; preds = %24, %11
  %28 = phi i1 [ true, %11 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @wine_dbgstr_longlong(i32 %46)
  %48 = call i32 (i32, i8*, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %47)
  br label %49

49:                                               ; preds = %36, %27
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 1
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %2, align 8
  br label %6

52:                                               ; preds = %6
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrToInt_results, align 8
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %2, align 8
  br label %54

54:                                               ; preds = %98, %52
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  %60 = load i32, i32* @CP_ACP, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = call i32 @MultiByteToWideChar(i32 %60, i32 0, i64 %63, i32 -1, i32* %64, i32 %66)
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %69 = load i32, i32* @STIF_SUPPORT_HEX, align 4
  %70 = call i64 @pStrToInt64ExW(i32* %68, i32 %69, i32* %3)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, -1
  br label %76

76:                                               ; preds = %73, %59
  %77 = phi i1 [ true, %59 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @wine_dbgstr_longlong(i32 %95)
  %97 = call i32 (i32, i8*, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %94, i32 %96)
  br label %98

98:                                               ; preds = %85, %76
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 1
  store %struct.TYPE_3__* %100, %struct.TYPE_3__** %2, align 8
  br label %54

101:                                              ; preds = %54
  ret void
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @pStrToInt64ExW(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
