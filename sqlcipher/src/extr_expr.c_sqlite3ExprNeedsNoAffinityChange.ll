; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprNeedsNoAffinityChange.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprNeedsNoAffinityChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, %struct.TYPE_3__* }

@SQLITE_AFF_BLOB = common dso_local global i8 0, align 1
@TK_UPLUS = common dso_local global i64 0, align 8
@TK_UMINUS = common dso_local global i64 0, align 8
@TK_REGISTER = common dso_local global i32 0, align 4
@SQLITE_AFF_INTEGER = common dso_local global i8 0, align 1
@SQLITE_AFF_NUMERIC = common dso_local global i8 0, align 1
@SQLITE_AFF_REAL = common dso_local global i8 0, align 1
@SQLITE_AFF_TEXT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ExprNeedsNoAffinityChange(%struct.TYPE_3__* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %113

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %28, %13
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TK_UPLUS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TK_UMINUS, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ true, %14 ], [ %25, %20 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %4, align 8
  br label %14

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TK_REGISTER, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %32
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %112 [
    i32 129, label %46
    i32 130, label %61
    i32 128, label %76
    i32 132, label %83
    i32 131, label %84
  ]

46:                                               ; preds = %44
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @SQLITE_AFF_INTEGER, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i8, i8* %5, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ true, %46 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %113

61:                                               ; preds = %44
  %62 = load i8, i8* %5, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @SQLITE_AFF_REAL, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i8, i8* %5, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i1 [ true, %61 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %113

76:                                               ; preds = %44
  %77 = load i8, i8* %5, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %113

83:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %113

84:                                               ; preds = %44
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %84
  %96 = load i8, i8* %5, align 1
  %97 = sext i8 %96 to i32
  %98 = load i8, i8* @SQLITE_AFF_INTEGER, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8, i8* %5, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br label %107

107:                                              ; preds = %101, %95
  %108 = phi i1 [ true, %95 ], [ %106, %101 ]
  br label %109

109:                                              ; preds = %107, %84
  %110 = phi i1 [ false, %84 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %109, %83, %76, %73, %58, %12
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
