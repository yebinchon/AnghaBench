; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkDropTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkDropTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__* }

@SQLITE_ForeignKeys = common dso_local global i32 0, align 4
@SQLITE_DeferFKs = common dso_local global i32 0, align 4
@OP_FkIfZero = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_FOREIGNKEY = common dso_local global i32 0, align 4
@P4_STATIC = common dso_local global i32 0, align 4
@P5_ConstraintFK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3FkDropTable(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SQLITE_ForeignKeys, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %119

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = call i32 @IsVirtual(%struct.TYPE_15__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %119, label %24

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32* @sqlite3GetVdbe(%struct.TYPE_16__* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = call i64 @sqlite3FkReferences(%struct.TYPE_15__* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %24
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %10, align 8
  br label %43

43:                                               ; preds = %60, %39
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = icmp ne %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SQLITE_DeferFKs, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %46
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %10, align 8
  br label %43

64:                                               ; preds = %58, %43
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %119

68:                                               ; preds = %64
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_16__* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @OP_FkIfZero, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @sqlite3VdbeAddOp2(i32* %71, i32 %72, i32 1, i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @VdbeCoverage(i32* %75)
  br label %77

77:                                               ; preds = %68, %24
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @sqlite3SrcListDup(%struct.TYPE_14__* %81, i32* %82, i32 0)
  %84 = call i32 @sqlite3DeleteFrom(%struct.TYPE_16__* %80, i32 %83, i32 0, i32 0, i32 0)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SQLITE_DeferFKs, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %77
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @OE_Abort, align 4
  %96 = call i32 @sqlite3VdbeVerifyAbortable(i32* %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* @OP_FkIfZero, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @sqlite3VdbeCurrentAddr(i32* %99)
  %101 = add nsw i32 %100, 2
  %102 = call i32 @sqlite3VdbeAddOp2(i32* %97, i32 %98, i32 0, i32 %101)
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @VdbeCoverage(i32* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = load i32, i32* @SQLITE_CONSTRAINT_FOREIGNKEY, align 4
  %107 = load i32, i32* @OE_Abort, align 4
  %108 = load i32, i32* @P4_STATIC, align 4
  %109 = load i32, i32* @P5_ConstraintFK, align 4
  %110 = call i32 @sqlite3HaltConstraint(%struct.TYPE_16__* %105, i32 %106, i32 %107, i32 0, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %93, %77
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @sqlite3VdbeResolveLabel(i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %111
  br label %119

119:                                              ; preds = %67, %118, %20, %3
  ret void
}

declare dso_local i32 @IsVirtual(%struct.TYPE_15__*) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3FkReferences(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3DeleteFrom(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3SrcListDup(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeVerifyAbortable(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3HaltConstraint(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
