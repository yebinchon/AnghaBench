; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3CodeDropTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3CodeDropTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_23__* }

@OP_VBegin = common dso_local global i32 0, align 4
@TF_Autoincrement = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DELETE FROM %Q.sqlite_sequence WHERE name=%Q\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"DELETE FROM %Q.%s WHERE tbl_name=%Q and type!='trigger'\00", align 1
@MASTER_NAME = common dso_local global i32 0, align 4
@OP_VDestroy = common dso_local global i32 0, align 4
@OP_DropTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3CodeDropTable(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %10, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i64 %20
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %12, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = call i32* @sqlite3GetVdbe(%struct.TYPE_25__* %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @sqlite3BeginWriteOperation(%struct.TYPE_25__* %28, i32 1, i32 %29)
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = call i64 @IsVirtual(%struct.TYPE_24__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @OP_VBegin, align 4
  %37 = call i32 @sqlite3VdbeAddOp0(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = call %struct.TYPE_23__* @sqlite3TriggerList(%struct.TYPE_25__* %39, %struct.TYPE_24__* %40)
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %11, align 8
  br label %42

42:                                               ; preds = %64, %38
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %44 = icmp ne %struct.TYPE_23__* %43, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %56, %62
  br label %64

64:                                               ; preds = %53, %45
  %65 = phi i1 [ true, %45 ], [ %63, %53 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %70 = call i32 @sqlite3DropTriggerPtr(%struct.TYPE_25__* %68, %struct.TYPE_23__* %69)
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %11, align 8
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TF_Autoincrement, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.TYPE_25__*, i8*, i32, i32, ...) @sqlite3NestedParse(%struct.TYPE_25__* %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %74
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MASTER_NAME, align 4
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.TYPE_25__*, i8*, i32, i32, ...) @sqlite3NestedParse(%struct.TYPE_25__* %91, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %90
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %104 = call i64 @IsVirtual(%struct.TYPE_24__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = call i32 @destroyTable(%struct.TYPE_25__* %107, %struct.TYPE_24__* %108)
  br label %110

110:                                              ; preds = %106, %102, %90
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = call i64 @IsVirtual(%struct.TYPE_24__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* @OP_VDestroy, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sqlite3VdbeAddOp4(i32* %115, i32 %116, i32 %117, i32 0, i32 0, i32 %120, i32 0)
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %123 = call i32 @sqlite3MayAbort(%struct.TYPE_25__* %122)
  br label %124

124:                                              ; preds = %114, %110
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @OP_DropTable, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @sqlite3VdbeAddOp4(i32* %125, i32 %126, i32 %127, i32 0, i32 0, i32 %130, i32 0)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @sqlite3ChangeCookie(%struct.TYPE_25__* %132, i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @sqliteViewResetAll(%struct.TYPE_22__* %135, i32 %136)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_25__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BeginWriteOperation(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @sqlite3TriggerList(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3DropTriggerPtr(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3NestedParse(%struct.TYPE_25__*, i8*, i32, i32, ...) #1

declare dso_local i32 @destroyTable(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3ChangeCookie(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqliteViewResetAll(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
