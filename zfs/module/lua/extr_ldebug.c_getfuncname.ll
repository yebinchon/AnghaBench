; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_ldebug.c_getfuncname.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_ldebug.c_getfuncname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"for iterator\00", align 1
@TM_INDEX = common dso_local global i64 0, align 8
@TM_NEWINDEX = common dso_local global i64 0, align 8
@TM_EQ = common dso_local global i64 0, align 8
@TM_ADD = common dso_local global i64 0, align 8
@TM_SUB = common dso_local global i64 0, align 8
@TM_MUL = common dso_local global i64 0, align 8
@TM_DIV = common dso_local global i64 0, align 8
@TM_MOD = common dso_local global i64 0, align 8
@TM_POW = common dso_local global i64 0, align 8
@TM_UNM = common dso_local global i64 0, align 8
@TM_LEN = common dso_local global i64 0, align 8
@TM_LT = common dso_local global i64 0, align 8
@TM_LE = common dso_local global i64 0, align 8
@TM_CONCAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"metamethod\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8**)* @getfuncname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getfuncname(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_6__* @ci_func(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @currentpc(i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @GET_OPCODE(i32 %25)
  switch i32 %26, label %64 [
    i32 146, label %27
    i32 130, label %27
    i32 129, label %34
    i32 134, label %36
    i32 141, label %36
    i32 142, label %36
    i32 132, label %38
    i32 133, label %38
    i32 143, label %40
    i32 147, label %42
    i32 131, label %44
    i32 136, label %46
    i32 144, label %48
    i32 137, label %50
    i32 135, label %52
    i32 128, label %54
    i32 139, label %56
    i32 138, label %58
    i32 140, label %60
    i32 145, label %62
  ]

27:                                               ; preds = %3, %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @GETARG_A(i32 %30)
  %32 = load i8**, i8*** %7, align 8
  %33 = call i8* @getobjname(%struct.TYPE_5__* %28, i32 %29, i32 %31, i8** %32)
  store i8* %33, i8** %4, align 8
  br label %75

34:                                               ; preds = %3
  %35 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %75

36:                                               ; preds = %3, %3, %3
  %37 = load i64, i64* @TM_INDEX, align 8
  store i64 %37, i64* %8, align 8
  br label %65

38:                                               ; preds = %3, %3
  %39 = load i64, i64* @TM_NEWINDEX, align 8
  store i64 %39, i64* %8, align 8
  br label %65

40:                                               ; preds = %3
  %41 = load i64, i64* @TM_EQ, align 8
  store i64 %41, i64* %8, align 8
  br label %65

42:                                               ; preds = %3
  %43 = load i64, i64* @TM_ADD, align 8
  store i64 %43, i64* %8, align 8
  br label %65

44:                                               ; preds = %3
  %45 = load i64, i64* @TM_SUB, align 8
  store i64 %45, i64* %8, align 8
  br label %65

46:                                               ; preds = %3
  %47 = load i64, i64* @TM_MUL, align 8
  store i64 %47, i64* %8, align 8
  br label %65

48:                                               ; preds = %3
  %49 = load i64, i64* @TM_DIV, align 8
  store i64 %49, i64* %8, align 8
  br label %65

50:                                               ; preds = %3
  %51 = load i64, i64* @TM_MOD, align 8
  store i64 %51, i64* %8, align 8
  br label %65

52:                                               ; preds = %3
  %53 = load i64, i64* @TM_POW, align 8
  store i64 %53, i64* %8, align 8
  br label %65

54:                                               ; preds = %3
  %55 = load i64, i64* @TM_UNM, align 8
  store i64 %55, i64* %8, align 8
  br label %65

56:                                               ; preds = %3
  %57 = load i64, i64* @TM_LEN, align 8
  store i64 %57, i64* %8, align 8
  br label %65

58:                                               ; preds = %3
  %59 = load i64, i64* @TM_LT, align 8
  store i64 %59, i64* %8, align 8
  br label %65

60:                                               ; preds = %3
  %61 = load i64, i64* @TM_LE, align 8
  store i64 %61, i64* %8, align 8
  br label %65

62:                                               ; preds = %3
  %63 = load i64, i64* @TM_CONCAT, align 8
  store i64 %63, i64* %8, align 8
  br label %65

64:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %75

65:                                               ; preds = %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36
  %66 = load i32*, i32** %5, align 8
  %67 = call %struct.TYPE_7__* @G(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @getstr(i32 %72)
  %74 = load i8**, i8*** %7, align 8
  store i8* %73, i8** %74, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %75

75:                                               ; preds = %65, %64, %34, %27
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local %struct.TYPE_6__* @ci_func(i32*) #1

declare dso_local i32 @currentpc(i32*) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i8* @getobjname(%struct.TYPE_5__*, i32, i32, i8**) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i8* @getstr(i32) #1

declare dso_local %struct.TYPE_7__* @G(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
