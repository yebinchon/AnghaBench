; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3OpenTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3OpenTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@OP_OpenWrite = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3OpenTable(i32* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %14 = call i32 @IsVirtual(%struct.TYPE_9__* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @sqlite3GetVdbe(i32* %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @OP_OpenWrite, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @OP_OpenRead, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %5
  %29 = phi i1 [ true, %5 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @OP_OpenWrite, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sqlite3TableLock(i32* %32, i32 %33, i32 %36, i32 %41, i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = call i64 @HasRowid(%struct.TYPE_9__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %28
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sqlite3VdbeAddOp4Int(i32* %50, i32 %51, i32 %52, i32 %55, i32 %56, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @VdbeComment(i32* %66)
  br label %102

68:                                               ; preds = %28
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = call %struct.TYPE_10__* @sqlite3PrimaryKeyIndex(%struct.TYPE_9__* %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %12, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @sqlite3VdbeAddOp3(i32* %84, i32 %85, i32 %86, i32 %89, i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %94 = call i32 @sqlite3VdbeSetP4KeyInfo(i32* %92, %struct.TYPE_10__* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i32*
  %101 = call i32 @VdbeComment(i32* %100)
  br label %102

102:                                              ; preds = %68, %49
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsVirtual(%struct.TYPE_9__*) #1

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @sqlite3TableLock(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @HasRowid(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local %struct.TYPE_10__* @sqlite3PrimaryKeyIndex(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
