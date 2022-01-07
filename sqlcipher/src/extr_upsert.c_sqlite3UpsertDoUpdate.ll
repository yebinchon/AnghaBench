; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_upsert.c_sqlite3UpsertDoUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_upsert.c_sqlite3UpsertDoUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32*, i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Begin DO UPDATE of UPSERT\00", align 1
@OP_IdxRowid = common dso_local global i32 0, align 4
@OP_SeekRowid = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@OE_Abort = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"corrupt database\00", align 1
@P4_STATIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"End DO UPDATE of UPSERT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3UpsertDoUpdate(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, %struct.TYPE_22__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = icmp ne %struct.TYPE_19__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @VdbeNoopComment(i32* bitcast ([26 x i8]* @.str to i32*))
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %41 = icmp ne %struct.TYPE_22__* %40, null
  br i1 %41, label %42, label %160

42:                                               ; preds = %5
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %160

46:                                               ; preds = %42
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = call i64 @HasRowid(%struct.TYPE_20__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = call i32 @sqlite3GetTempReg(%struct.TYPE_21__* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @OP_IdxRowid, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @sqlite3VdbeAddOp2(i32* %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @OP_SeekRowid, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @sqlite3VdbeAddOp3(i32* %58, i32 %59, i32 %60, i32 0, i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @VdbeCoverage(i32* %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_21__* %65, i32 %66)
  br label %159

68:                                               ; preds = %46
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = call %struct.TYPE_22__* @sqlite3PrimaryKeyIndex(%struct.TYPE_20__* %69)
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %16, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  store i32 0, i32* %19, align 4
  br label %83

83:                                               ; preds = %135, %68
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %138

87:                                               ; preds = %83
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp uge i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @sqlite3ColumnOfIndex(%struct.TYPE_22__* %98, i64 %105)
  store i32 %106, i32* %20, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* @OP_Column, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @sqlite3VdbeAddOp3(i32* %107, i32 %108, i32 %109, i32 %110, i32 %113)
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i32*
  %134 = call i32 @VdbeComment(i32* %133)
  br label %135

135:                                              ; preds = %87
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %83

138:                                              ; preds = %83
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* @OE_Abort, align 4
  %141 = call i32 @sqlite3VdbeVerifyAbortable(i32* %139, i32 %140)
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* @OP_Found, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @sqlite3VdbeAddOp4Int(i32* %142, i32 %143, i32 %144, i32 0, i32 %145, i32 %146)
  store i32 %147, i32* %19, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @VdbeCoverage(i32* %148)
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* @OP_Halt, align 4
  %152 = load i32, i32* @SQLITE_CORRUPT, align 4
  %153 = load i32, i32* @OE_Abort, align 4
  %154 = load i32, i32* @P4_STATIC, align 4
  %155 = call i32 @sqlite3VdbeAddOp4(i32* %150, i32 %151, i32 %152, i32 %153, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @sqlite3VdbeJumpHere(i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %138, %50
  br label %160

160:                                              ; preds = %159, %42, %5
  %161 = load i32*, i32** %12, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32* @sqlite3SrcListDup(i32* %161, i32 %164, i32 0)
  store i32* %165, i32** %13, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @OE_Abort, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %176 = call i32 @sqlite3Update(%struct.TYPE_21__* %166, i32* %167, i32 %170, i32 %173, i32 %174, i32 0, i32 0, %struct.TYPE_19__* %175)
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  store i32 0, i32* %178, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @VdbeNoopComment(i32* bitcast ([24 x i8]* @.str.3 to i32*))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VdbeNoopComment(i32*) #1

declare dso_local i64 @HasRowid(%struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @sqlite3PrimaryKeyIndex(%struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3ColumnOfIndex(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeVerifyAbortable(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32* @sqlite3SrcListDup(i32*, i32, i32) #1

declare dso_local i32 @sqlite3Update(%struct.TYPE_21__*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
