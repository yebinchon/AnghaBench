; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_attach.c_sqlite3FixSrcList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_attach.c_sqlite3FixSrcList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i64, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"%s %T cannot reference objects in database %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3FixSrcList(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = icmp eq %struct.TYPE_14__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @NEVER(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  store %struct.SrcList_item* %21, %struct.SrcList_item** %8, align 8
  br label %22

22:                                               ; preds = %108, %15
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %113

28:                                               ; preds = %22
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %28
  %34 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %35 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %40 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @sqlite3StrICmp(i64 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %56 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @sqlite3ErrorMsg(%struct.TYPE_11__* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i64 %57)
  store i32 1, i32* %3, align 4
  br label %114

59:                                               ; preds = %38, %33
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %66 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @sqlite3DbFree(i32 %64, i64 %67)
  %69 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %70 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %75 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %59, %28
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %79 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @sqlite3FixSelect(%struct.TYPE_15__* %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %114

84:                                               ; preds = %76
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %87 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @sqlite3FixExpr(%struct.TYPE_15__* %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %114

92:                                               ; preds = %84
  %93 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %94 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %101 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @sqlite3FixExprList(%struct.TYPE_15__* %99, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %114

107:                                              ; preds = %98, %92
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  %111 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %112 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %111, i32 1
  store %struct.SrcList_item* %112, %struct.SrcList_item** %8, align 8
  br label %22

113:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %106, %91, %83, %45, %14
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i64 @sqlite3StrICmp(i64, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_11__*, i8*, i32, i32, i64) #1

declare dso_local i32 @sqlite3DbFree(i32, i64) #1

declare dso_local i64 @sqlite3FixSelect(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @sqlite3FixExpr(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @sqlite3FixExprList(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
