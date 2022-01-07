; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5NextMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5NextMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@FTS5_PLAN_MATCH = common dso_local global i32 0, align 4
@FTS5_PLAN_SOURCE = common dso_local global i32 0, align 4
@FTS5CSR_EOF = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fts5NextMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5NextMethod(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 3
  %13 = zext i1 %12 to i32
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FTS5_PLAN_MATCH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FTS5_PLAN_SOURCE, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ true, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = icmp eq i32 %13, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* @FTS5CSR_EOF, align 4
  %33 = call i32 @CsrFlagTest(%struct.TYPE_7__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %67

42:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32 @fts5CursorReseek(%struct.TYPE_7__* %43, i32* %6)
  store i32 %44, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %101

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sqlite3Fts5ExprNext(i32 %54, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sqlite3Fts5ExprEof(i32 %62)
  %64 = call i32 @CsrFlagSet(%struct.TYPE_7__* %59, i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = call i32 @fts5CsrNewrow(%struct.TYPE_7__* %65)
  br label %99

67:                                               ; preds = %25
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %79 [
    i32 128, label %71
    i32 129, label %76
  ]

71:                                               ; preds = %67
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = load i32, i32* @FTS5CSR_EOF, align 4
  %74 = call i32 @CsrFlagSet(%struct.TYPE_7__* %72, i32 %73)
  %75 = load i32, i32* @SQLITE_OK, align 4
  store i32 %75, i32* %5, align 4
  br label %98

76:                                               ; preds = %67
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = call i32 @fts5SorterNext(%struct.TYPE_7__* %77)
  store i32 %78, i32* %5, align 4
  br label %98

79:                                               ; preds = %67
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sqlite3_step(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SQLITE_ROW, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = load i32, i32* @FTS5CSR_EOF, align 4
  %90 = call i32 @CsrFlagSet(%struct.TYPE_7__* %88, i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sqlite3_reset(i32 %93)
  store i32 %94, i32* %5, align 4
  br label %97

95:                                               ; preds = %79
  %96 = load i32, i32* @SQLITE_OK, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %87
  br label %98

98:                                               ; preds = %97, %76, %71
  br label %99

99:                                               ; preds = %98, %51
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %49
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CsrFlagTest(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fts5CursorReseek(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @sqlite3Fts5ExprNext(i32, i32) #1

declare dso_local i32 @CsrFlagSet(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqlite3Fts5ExprEof(i32) #1

declare dso_local i32 @fts5CsrNewrow(%struct.TYPE_7__*) #1

declare dso_local i32 @fts5SorterNext(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
