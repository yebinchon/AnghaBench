; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowCheckIntValue.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowCheckIntValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@windowCheckIntValue.azErr = internal global [3 x i8*] [i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [53 x i8] c"frame starting offset must be a non-negative integer\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"frame ending offset must be a non-negative integer\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"second argument to nth_value must be a positive integer\00", align 1
@windowCheckIntValue.aOp = internal global [3 x i32] [i32 129, i32 129, i32 128], align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@P4_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @windowCheckIntValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowCheckIntValue(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @sqlite3GetVdbe(i32* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @sqlite3GetTempReg(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 2
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = phi i1 [ true, %15 ], [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @OP_Integer, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @sqlite3VdbeAddOp2(i32* %25, i32 %26, i32 0, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @OP_MustBeInt, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sqlite3VdbeCurrentAddr(i32* %32)
  %34 = add nsw i32 %33, 2
  %35 = call i32 @sqlite3VdbeAddOp2(i32* %29, i32 %30, i32 %31, i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @VdbeCoverageIf(i32* %36, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @VdbeCoverageIf(i32* %41, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i32
  %50 = call i32 @VdbeCoverageIf(i32* %46, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* @windowCheckIntValue.aOp, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @sqlite3VdbeCurrentAddr(i32* %57)
  %59 = add nsw i32 %58, 2
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @sqlite3VdbeAddOp3(i32* %51, i32 %55, i32 %56, i32 %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @VdbeCoverageNeverNullIf(i32* %62, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @VdbeCoverageNeverNullIf(i32* %67, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i32
  %76 = call i32 @VdbeCoverageNeverNullIf(i32* %72, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @sqlite3MayAbort(i32* %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @OP_Halt, align 4
  %81 = load i32, i32* @SQLITE_ERROR, align 4
  %82 = load i32, i32* @OE_Abort, align 4
  %83 = call i32 @sqlite3VdbeAddOp2(i32* %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* @windowCheckIntValue.azErr, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @P4_STATIC, align 4
  %90 = call i32 @sqlite3VdbeAppendP4(i32* %84, i8* %88, i32 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @sqlite3ReleaseTempReg(i32* %91, i32 %92)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverageNeverNullIf(i32*, i32) #1

declare dso_local i32 @sqlite3MayAbort(i32*) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
