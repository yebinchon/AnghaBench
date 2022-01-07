; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3TableAffinity.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3TableAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8 }

@SQLITE_AFF_BLOB = common dso_local global i8 0, align 1
@OP_Affinity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3TableAffinity(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @sqlite3VdbeDb(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = call i64 @sqlite3DbMallocRaw(i32 0, i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @sqlite3OomFault(i32* %27)
  br label %104

29:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %30

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br label %72

72:                                               ; preds = %62, %59
  %73 = phi i1 [ false, %59 ], [ %71, %62 ]
  br i1 %73, label %53, label %74

74:                                               ; preds = %72
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %3
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @sqlite3Strlen30NN(i8* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %78
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* @OP_Affinity, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @sqlite3VdbeAddOp4(i32* %91, i32 %92, i32 %93, i32 %94, i32 0, i8* %95, i32 %96)
  br label %103

98:                                               ; preds = %87
  %99 = load i32*, i32** %4, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @sqlite3VdbeChangeP4(i32* %99, i32 -1, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %90
  br label %104

104:                                              ; preds = %26, %103, %78
  ret void
}

declare dso_local i32* @sqlite3VdbeDb(i32*) #1

declare dso_local i64 @sqlite3DbMallocRaw(i32, i32) #1

declare dso_local i32 @sqlite3OomFault(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Strlen30NN(i8*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
