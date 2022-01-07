; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3Reindex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3Reindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_27__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"unable to identify the object to be reindexed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Reindex(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %6, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %13, align 8
  %19 = load i64, i64* @SQLITE_OK, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %21 = call i64 @sqlite3ReadSchema(%struct.TYPE_28__* %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %131

24:                                               ; preds = %3
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %26 = icmp eq %struct.TYPE_27__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %29 = call i32 @reindexDatabases(%struct.TYPE_28__* %28, i8* null)
  br label %131

30:                                               ; preds = %24
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %32 = icmp eq %struct.TYPE_27__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @NEVER(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %36, %30
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @assert(i64 %44)
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %47, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = call i8* @sqlite3NameFromToken(%struct.TYPE_26__* %48, %struct.TYPE_27__* %49)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %131

54:                                               ; preds = %41
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %57 = call i32 @ENC(%struct.TYPE_26__* %56)
  %58 = load i8*, i8** %15, align 8
  %59 = call i32* @sqlite3FindCollSeq(%struct.TYPE_26__* %55, i32 %57, i8* %58, i32 0)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @reindexDatabases(%struct.TYPE_28__* %63, i8* %64)
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @sqlite3DbFree(%struct.TYPE_26__* %66, i8* %67)
  br label %131

69:                                               ; preds = %54
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @sqlite3DbFree(%struct.TYPE_26__* %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %36
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %78 = call i32 @sqlite3TwoPartName(%struct.TYPE_28__* %75, %struct.TYPE_27__* %76, %struct.TYPE_27__* %77, %struct.TYPE_27__** %14)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %131

82:                                               ; preds = %74
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %85 = call i8* @sqlite3NameFromToken(%struct.TYPE_26__* %83, %struct.TYPE_27__* %84)
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %131

89:                                               ; preds = %82
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %9, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32* @sqlite3FindTable(%struct.TYPE_26__* %98, i8* %99, i8* %100)
  store i32* %101, i32** %10, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %89
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @reindexTable(%struct.TYPE_28__* %105, i32* %106, i32 0)
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @sqlite3DbFree(%struct.TYPE_26__* %108, i8* %109)
  br label %131

111:                                              ; preds = %89
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32* @sqlite3FindIndex(%struct.TYPE_26__* %112, i8* %113, i8* %114)
  store i32* %115, i32** %11, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @sqlite3DbFree(%struct.TYPE_26__* %116, i8* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @sqlite3BeginWriteOperation(%struct.TYPE_28__* %122, i32 0, i32 %123)
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @sqlite3RefillIndex(%struct.TYPE_28__* %125, i32* %126, i32 -1)
  br label %131

128:                                              ; preds = %111
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %130 = call i32 @sqlite3ErrorMsg(%struct.TYPE_28__* %129, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121, %104, %88, %81, %62, %53, %27, %23
  ret void
}

declare dso_local i64 @sqlite3ReadSchema(%struct.TYPE_28__*) #1

declare dso_local i32 @reindexDatabases(%struct.TYPE_28__*, i8*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i8* @sqlite3NameFromToken(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32* @sqlite3FindCollSeq(%struct.TYPE_26__*, i32, i8*, i32) #1

declare dso_local i32 @ENC(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @sqlite3TwoPartName(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__**) #1

declare dso_local i32* @sqlite3FindTable(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @reindexTable(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32* @sqlite3FindIndex(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @sqlite3BeginWriteOperation(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3RefillIndex(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_28__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
