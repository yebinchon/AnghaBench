; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrToInt64ExA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrToInt64ExA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@StrToInt_results = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"No result returned from '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"converted '%s' wrong (%s)\0A\00", align 1
@STIF_SUPPORT_HEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrToInt64ExA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrToInt64ExA() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrToInt_results, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  br label %5

5:                                                ; preds = %42, %0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @pStrToInt64ExA(i64 %13, i32 0, i32* %2)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, -1
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i1 [ true, %10 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, i64, ...) @ok(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @wine_dbgstr_longlong(i32 %39)
  %41 = call i32 (i32, i8*, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %40)
  br label %42

42:                                               ; preds = %29, %20
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 1
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %1, align 8
  br label %5

45:                                               ; preds = %5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrToInt_results, align 8
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %1, align 8
  br label %47

47:                                               ; preds = %85, %45
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @STIF_SUPPORT_HEX, align 4
  %57 = call i64 @pStrToInt64ExA(i64 %55, i32 %56, i32* %2)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %61, -1
  br label %63

63:                                               ; preds = %60, %52
  %64 = phi i1 [ true, %52 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, i64, ...) @ok(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %3, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  %73 = load i32, i32* %2, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @wine_dbgstr_longlong(i32 %82)
  %84 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %81, i32 %83)
  br label %85

85:                                               ; preds = %72, %63
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 1
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %1, align 8
  br label %47

88:                                               ; preds = %47
  ret void
}

declare dso_local i64 @pStrToInt64ExA(i64, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
