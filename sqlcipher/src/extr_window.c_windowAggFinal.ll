; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_windowAggFinal.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_windowAggFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, %struct.TYPE_8__*, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }

@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_AggFinal = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_AggValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @windowAggFinal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowAggFinal(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @sqlite3GetVdbe(i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  br label %19

19:                                               ; preds = %137, %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %141

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TK_UNBOUNDED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @OP_Null, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sqlite3VdbeAddOp2(i32* %43, i32 %44, i32 0, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @OP_Last, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sqlite3VdbeAddOp1(i32* %49, i32 %50, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @VdbeCoverage(i32* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @OP_Column, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sqlite3VdbeAddOp3(i32* %57, i32 %58, i32 %61, i32 0, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @sqlite3VdbeCurrentAddr(i32* %67)
  %69 = sub nsw i64 %68, 2
  %70 = call i32 @sqlite3VdbeJumpHere(i32* %66, i64 %69)
  br label %136

71:                                               ; preds = %36, %27, %22
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %135

83:                                               ; preds = %71
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = call i32 @windowArgCount(%struct.TYPE_7__* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %83
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @OP_AggFinal, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @sqlite3VdbeAddOp2(i32* %89, i32 %90, i32 %93, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* @P4_FUNCDEF, align 4
  %101 = call i32 @sqlite3VdbeAppendP4(i32* %96, %struct.TYPE_8__* %99, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @OP_Copy, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @sqlite3VdbeAddOp2(i32* %102, i32 %103, i32 %106, i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @OP_Null, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @sqlite3VdbeAddOp2(i32* %111, i32 %112, i32 0, i32 %115)
  br label %134

117:                                              ; preds = %83
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* @OP_AggValue, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @sqlite3VdbeAddOp3(i32* %118, i32 %119, i32 %122, i32 %123, i32 %126)
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load i32, i32* @P4_FUNCDEF, align 4
  %133 = call i32 @sqlite3VdbeAppendP4(i32* %128, %struct.TYPE_8__* %131, i32 %132)
  br label %134

134:                                              ; preds = %117, %88
  br label %135

135:                                              ; preds = %134, %76
  br label %136

136:                                              ; preds = %135, %42
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 7
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  store %struct.TYPE_7__* %140, %struct.TYPE_7__** %8, align 8
  br label %19

141:                                              ; preds = %19
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i64) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @windowArgCount(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
