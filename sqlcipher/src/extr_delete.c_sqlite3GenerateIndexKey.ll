; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3GenerateIndexKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3GenerateIndexKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i32, i32, i64*, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_14__ = type { i64 }

@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@XN_EXPR = common dso_local global i64 0, align 8
@OP_RealAffinity = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@P4_TRANSIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i32 %4, i32* %5, %struct.TYPE_16__* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %17, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_15__* %33)
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %47 = call i32 @sqlite3ExprIfFalseDup(%struct.TYPE_15__* %40, i64 %43, i32 %45, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %52

50:                                               ; preds = %27
  %51 = load i32*, i32** %14, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %32
  br label %53

53:                                               ; preds = %52, %8
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  br label %69

65:                                               ; preds = %56, %53
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %64, %61 ], [ %68, %65 ]
  store i32 %70, i32* %20, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = load i32, i32* %20, align 4
  %73 = call i32 @sqlite3GetTempRange(%struct.TYPE_15__* %71, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %75 = icmp ne %struct.TYPE_16__* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %76
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  br label %86

86:                                               ; preds = %85, %80, %69
  store i32 0, i32* %18, align 4
  br label %87

87:                                               ; preds = %133, %86
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %136

91:                                               ; preds = %87
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %93 = icmp ne %struct.TYPE_16__* %92, null
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %101, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %94
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @XN_EXPR, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %133

121:                                              ; preds = %110, %94, %91
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @sqlite3ExprCodeLoadIndexColumn(%struct.TYPE_15__* %122, %struct.TYPE_16__* %123, i32 %124, i32 %125, i32 %128)
  %130 = load i32*, i32** %17, align 8
  %131 = load i32, i32* @OP_RealAffinity, align 4
  %132 = call i32 @sqlite3VdbeDeletePriorOpcode(i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %121, %120
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %18, align 4
  br label %87

136:                                              ; preds = %87
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %136
  %140 = load i32*, i32** %17, align 8
  %141 = load i32, i32* @OP_MakeRecord, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @sqlite3VdbeAddOp3(i32* %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %139
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %157 = call i8* @sqlite3IndexAffinityStr(i32 %155, %struct.TYPE_16__* %156)
  store i8* %157, i8** %21, align 8
  %158 = load i32*, i32** %17, align 8
  %159 = load i8*, i8** %21, align 8
  %160 = load i32, i32* @P4_TRANSIENT, align 4
  %161 = call i32 @sqlite3VdbeChangeP4(i32* %158, i32 -1, i8* %159, i32 %160)
  br label %162

162:                                              ; preds = %152, %139
  br label %163

163:                                              ; preds = %162, %136
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_15__* %164, i32 %165, i32 %166)
  %168 = load i32, i32* %19, align 4
  ret i32 %168
}

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3ExprIfFalseDup(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3ExprCodeLoadIndexColumn(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeDeletePriorOpcode(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i8* @sqlite3IndexAffinityStr(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
