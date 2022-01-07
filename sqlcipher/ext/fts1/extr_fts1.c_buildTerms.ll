; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_buildTerms.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_buildTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i8*, i32, %struct.TYPE_12__**)*, i32 (%struct.TYPE_12__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32, i8*, i32)* @buildTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buildTerms(%struct.TYPE_14__* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %12, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_13__*, i8*, i32, %struct.TYPE_12__**)*, i32 (%struct.TYPE_13__*, i8*, i32, %struct.TYPE_12__**)** %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 %28(%struct.TYPE_13__* %29, i8* %30, i32 -1, %struct.TYPE_12__** %13)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %6, align 4
  br label %101

37:                                               ; preds = %5
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %40, align 8
  br label %41

41:                                               ; preds = %91, %37
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_12__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_12__*, i8**, i32*, i32*, i32*, i32*)** %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %49 = call i32 %47(%struct.TYPE_12__* %48, i8** %14, i32* %15, i32* %16, i32* %17, i32* %18)
  %50 = icmp eq i32 %42, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %41
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = call i32 %59(%struct.TYPE_12__* %60)
  %62 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %62, i32* %6, align 4
  br label %101

63:                                               ; preds = %51
  %64 = load i32*, i32** %8, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32* @fts1HashFind(i32* %64, i8* %65, i32 %66)
  store i32* %67, i32** %20, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load i32, i32* @DL_DEFAULT, align 4
  %72 = call i32* @docListNew(i32 %71)
  store i32* %72, i32** %20, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @docListAddDocid(i32* %73, i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %20, align 8
  %80 = call i32 @fts1HashInsert(i32* %76, i8* %77, i32 %78, i32* %79)
  br label %81

81:                                               ; preds = %70, %63
  %82 = load i32, i32* %11, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32*, i32** %20, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @docListAddPosOffset(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %81
  br label %41

92:                                               ; preds = %41
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = call i32 %97(%struct.TYPE_12__* %98)
  %100 = load i32, i32* %19, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %92, %54, %35
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32* @fts1HashFind(i32*, i8*, i32) #1

declare dso_local i32* @docListNew(i32) #1

declare dso_local i32 @docListAddDocid(i32*, i32) #1

declare dso_local i32 @fts1HashInsert(i32*, i8*, i32, i32*) #1

declare dso_local i32 @docListAddPosOffset(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
