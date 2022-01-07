; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_buildTerms.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_buildTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_22__*, i8*, i32, %struct.TYPE_21__**)*, i32 (%struct.TYPE_21__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_21__*)* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, i8*, i32)* @buildTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buildTerms(%struct.TYPE_23__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %10, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_22__*, i8*, i32, %struct.TYPE_21__**)*, i32 (%struct.TYPE_22__*, i8*, i32, %struct.TYPE_21__**)** %26, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 %27(%struct.TYPE_22__* %28, i8* %29, i32 -1, %struct.TYPE_21__** %11)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %5, align 4
  br label %140

36:                                               ; preds = %4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %39, align 8
  br label %40

40:                                               ; preds = %114, %36
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32 (%struct.TYPE_21__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i8**, i32*, i32*, i32*, i32*)** %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %48 = call i32 %46(%struct.TYPE_21__* %47, i8** %12, i32* %13, i32* %14, i32* %15, i32* %16)
  store i32 %48, i32* %17, align 4
  %49 = icmp eq i32 %41, %48
  br i1 %49, label %50, label %125

50:                                               ; preds = %40
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %12, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %53, %50
  %60 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %60, i32* %17, align 4
  br label %125

61:                                               ; preds = %56
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call %struct.TYPE_24__* @fts2HashFind(i32* %63, i8* %64, i32 %65)
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %18, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %68 = icmp eq %struct.TYPE_24__* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  store i32 0, i32* %19, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DL_DEFAULT, align 4
  %72 = call %struct.TYPE_24__* @dlcNew(i32 %70, i32 %71)
  store %struct.TYPE_24__* %72, %struct.TYPE_24__** %18, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %78 = call i32 @fts2HashInsert(i32* %74, i8* %75, i32 %76, %struct.TYPE_24__* %77)
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 12, %80
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  br label %104

88:                                               ; preds = %61
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %19, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @dlcNext(%struct.TYPE_24__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %88
  br label %104

104:                                              ; preds = %103, %69
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @dlcAddPos(%struct.TYPE_24__* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %104
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %19, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %40

125:                                              ; preds = %59, %40
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 2
  %130 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %132 = call i32 %130(%struct.TYPE_21__* %131)
  %133 = load i32, i32* @SQLITE_DONE, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = load i32, i32* @SQLITE_OK, align 4
  store i32 %137, i32* %5, align 4
  br label %140

138:                                              ; preds = %125
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %136, %34
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_24__* @fts2HashFind(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_24__* @dlcNew(i32, i32) #1

declare dso_local i32 @fts2HashInsert(i32*, i8*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @dlcNext(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @dlcAddPos(%struct.TYPE_24__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
