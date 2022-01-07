; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowPartitionCache.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowPartitionCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@OP_Column = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Gosub = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"call flush_partition\00", align 1
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32, i32, i32*)* @windowPartitionCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowPartitionCache(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %13, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = call i32* @sqlite3GetVdbe(%struct.TYPE_18__* %29)
  store i32* %30, i32** %14, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32*, i32** %12, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 2
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %79, %6
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* @OP_Column, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @sqlite3VdbeAddOp3(i32* %71, i32 %72, i32 %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %66

82:                                               ; preds = %66
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* @OP_MakeRecord, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @sqlite3VdbeAddOp3(i32* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = icmp ne %struct.TYPE_19__* %91, null
  br i1 %92, label %93, label %148

93:                                               ; preds = %82
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  store %struct.TYPE_19__* %96, %struct.TYPE_19__** %22, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %24, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %107 = call i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_18__* %105, %struct.TYPE_19__* %106, i32 0, i32 0)
  store i32* %107, i32** %25, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* @OP_Compare, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %23, align 4
  %115 = call i32 @sqlite3VdbeAddOp3(i32* %108, i32 %109, i32 %110, i32 %113, i32 %114)
  store i32 %115, i32* %21, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = load i32*, i32** %25, align 8
  %118 = bitcast i32* %117 to i8*
  %119 = load i32, i32* @P4_KEYINFO, align 4
  %120 = call i32 @sqlite3VdbeAppendP4(i32* %116, i8* %118, i32 %119)
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* @OP_Jump, align 4
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 2
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %125, 4
  %127 = load i32, i32* %21, align 4
  %128 = add nsw i32 %127, 2
  %129 = call i32 @sqlite3VdbeAddOp3(i32* %121, i32 %122, i32 %124, i32 %126, i32 %128)
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @VdbeCoverageEqNe(i32* %130)
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* @OP_Copy, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %23, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @sqlite3VdbeAddOp3(i32* %132, i32 %133, i32 %134, i32 %137, i32 %139)
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* @OP_Gosub, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @sqlite3VdbeAddOp2(i32* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32*, i32** %14, align 8
  %147 = call i32 @VdbeComment(i32* bitcast ([21 x i8]* @.str to i32*))
  br label %148

148:                                              ; preds = %93, %82
  %149 = load i32*, i32** %14, align 8
  %150 = load i32, i32* @OP_NewRowid, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %20, align 4
  %155 = call i32 @sqlite3VdbeAddOp2(i32* %149, i32 %150, i32 %153, i32 %154)
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* @OP_Insert, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = call i32 @sqlite3VdbeAddOp3(i32* %156, i32 %157, i32 %160, i32 %161, i32 %162)
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @sqlite3WhereEnd(i32* %164)
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* @OP_Gosub, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @sqlite3VdbeAddOp2(i32* %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32*, i32** %14, align 8
  %172 = call i32 @VdbeComment(i32* bitcast ([21 x i8]* @.str to i32*))
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @VdbeCoverageEqNe(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
