; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListOfTerm.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListOfTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@DL_POSITIONS = common dso_local global i32 0, align 4
@DL_DOCIDS = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*, i32**)* @docListOfTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @docListOfTerm(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load i32, i32* @DL_POSITIONS, align 4
  %16 = call i32* @docListNew(i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @term_select_all(i32* %17, i32 %18, i32 %21, i32 %24, i32* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @docListDelete(i32* %30)
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %94

33:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %34

34:                                               ; preds = %87, %33
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %34
  %41 = load i32, i32* @DL_POSITIONS, align 4
  %42 = call i32* @docListNew(i32 %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @term_select_all(i32* %43, i32 %44, i32 %50, i32 %56, i32* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %40
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @docListDelete(i32* %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %5, align 4
  br label %94

65:                                               ; preds = %40
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @DL_POSITIONS, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @DL_DOCIDS, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i32* @docListNew(i32 %76)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @docListPhraseMerge(i32* %78, i32* %79, i32* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @docListDelete(i32* %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @docListDelete(i32* %84)
  %86 = load i32*, i32** %12, align 8
  store i32* %86, i32** %10, align 8
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %34

90:                                               ; preds = %34
  %91 = load i32*, i32** %10, align 8
  %92 = load i32**, i32*** %9, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* @SQLITE_OK, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %61, %29
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32* @docListNew(i32) #1

declare dso_local i32 @term_select_all(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @docListDelete(i32*) #1

declare dso_local i32 @docListPhraseMerge(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
