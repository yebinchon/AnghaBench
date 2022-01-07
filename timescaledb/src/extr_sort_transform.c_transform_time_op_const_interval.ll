; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_sort_transform.c_transform_time_op_const_interval.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_sort_transform.c_transform_time_op_const_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Const = common dso_local global i32 0, align 4
@TIMESTAMPOID = common dso_local global i64 0, align 8
@INTERVALOID = common dso_local global i64 0, align 8
@TIMESTAMPTZOID = common dso_local global i64 0, align 8
@DATEOID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@Var = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @transform_time_op_const_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transform_time_op_const_interval(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @list_length(i32 %10)
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %87

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @lsecond(i32 %16)
  %18 = load i32, i32* @Const, align 4
  %19 = call i64 @IsA(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @linitial(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  %27 = call i64 @exprType(i32* %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @lsecond(i32 %30)
  %32 = call i64 @exprType(i32* %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @TIMESTAMPOID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @INTERVALOID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %36, %21
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @TIMESTAMPTZOID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @INTERVALOID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %44, %40
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @DATEOID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @INTERVALOID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %52, %44, %36
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @get_opname(i32 %59)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @NAMEDATALEN, align 4
  %63 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* @NAMEDATALEN, align 4
  %68 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65, %56
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @linitial(i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32* @ts_sort_transform_expr(i32* %75)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @Var, align 4
  %79 = call i64 @IsA(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32*, i32** %7, align 8
  %83 = call i32* @copyObject(i32* %82)
  store i32* %83, i32** %2, align 8
  br label %90

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85, %52, %48
  br label %87

87:                                               ; preds = %86, %13, %1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = bitcast %struct.TYPE_3__* %88 to i32*
  store i32* %89, i32** %2, align 8
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32*, i32** %2, align 8
  ret i32* %91
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local i32* @lsecond(i32) #1

declare dso_local i64 @exprType(i32*) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i8* @get_opname(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @ts_sort_transform_expr(i32*) #1

declare dso_local i32* @copyObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
