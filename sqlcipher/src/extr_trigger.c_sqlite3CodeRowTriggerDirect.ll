; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3CodeRowTriggerDirect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3CodeRowTriggerDirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i64 }

@SQLITE_RecTriggers = common dso_local global i32 0, align 4
@OP_Program = common dso_local global i32 0, align 4
@P4_SUBPROGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Call: %s.%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fkey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3CodeRowTriggerDirect(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = call i32* @sqlite3GetVdbe(%struct.TYPE_14__* %16)
  store i32* %17, i32** %13, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.TYPE_12__* @getRowTrigger(%struct.TYPE_14__* %18, %struct.TYPE_13__* %19, i32* %20, i32 %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %14, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %30, %25, %6
  %38 = phi i1 [ true, %25 ], [ true, %6 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %94

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SQLITE_RecTriggers, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 0, %55
  br label %57

57:                                               ; preds = %48, %43
  %58 = phi i1 [ false, %43 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %15, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @OP_Program, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* @P4_SUBPROGRAM, align 4
  %73 = call i32 @sqlite3VdbeAddOp4(i32* %60, i32 %61, i32 %62, i32 %63, i32 %67, i8* %71, i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %57
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  br label %84

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i8* [ %82, %79 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %83 ]
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @onErrorText(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @VdbeComment(i32* %89)
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @sqlite3VdbeChangeP5(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %84, %37
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @getRowTrigger(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @onErrorText(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
