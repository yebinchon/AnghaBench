; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3Savepoint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3Savepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@sqlite3Savepoint.az = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@SAVEPOINT_BEGIN = common dso_local global i32 0, align 4
@SAVEPOINT_RELEASE = common dso_local global i32 0, align 4
@SAVEPOINT_ROLLBACK = common dso_local global i32 0, align 4
@SQLITE_SAVEPOINT = common dso_local global i32 0, align 4
@OP_Savepoint = common dso_local global i32 0, align 4
@P4_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Savepoint(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i8* @sqlite3NameFromToken(i32 %11, i32* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %56

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = call i32* @sqlite3GetVdbe(%struct.TYPE_5__* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* @SAVEPOINT_BEGIN, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @SAVEPOINT_RELEASE, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %26 = icmp eq i32 %25, 2
  br label %27

27:                                               ; preds = %24, %21, %16
  %28 = phi i1 [ false, %21 ], [ false, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i32, i32* @SQLITE_SAVEPOINT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* @sqlite3Savepoint.az, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @sqlite3AuthCheck(%struct.TYPE_5__* %34, i32 %35, i8* %39, i8* %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33, %27
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @sqlite3DbFree(i32 %46, i8* %47)
  br label %56

49:                                               ; preds = %33
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @OP_Savepoint, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @P4_DYNAMIC, align 4
  %55 = call i32 @sqlite3VdbeAddOp4(i32* %50, i32 %51, i32 %52, i32 0, i32 0, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %49, %3
  ret void
}

declare dso_local i8* @sqlite3NameFromToken(i32, i32*) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_5__*, i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32, i8*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
