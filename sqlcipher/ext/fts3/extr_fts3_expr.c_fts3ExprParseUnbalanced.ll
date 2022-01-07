; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_fts3ExprParseUnbalanced.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_fts3ExprParseUnbalanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32, i32, i32, i64, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32, i32, i32, i8*, i32, i32**)* @fts3ExprParseUnbalanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3ExprParseUnbalanced(i32* %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8** %2, i8*** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  %23 = call i32 @memset(%struct.TYPE_4__* %22, i32 0, i32 48)
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store i32* %24, i32** %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i8**, i8*** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i8** %28, i8*** %29, align 8
  %30 = load i32, i32* %15, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %16, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %9
  %39 = load i32**, i32*** %19, align 8
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* @SQLITE_OK, align 4
  store i32 %40, i32* %10, align 4
  br label %75

41:                                               ; preds = %9
  %42 = load i32, i32* %18, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %17, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %18, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i8*, i8** %17, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32**, i32*** %19, align 8
  %52 = call i32 @fts3ExprParse(%struct.TYPE_4__* %22, i8* %49, i32 %50, i32** %51, i32* %20)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load i32**, i32*** %19, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br label %60

60:                                               ; preds = %56, %48
  %61 = phi i1 [ true, %48 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %72, i32* %21, align 4
  br label %73

73:                                               ; preds = %71, %67, %60
  %74 = load i32, i32* %21, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %38
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fts3ExprParse(%struct.TYPE_4__*, i8*, i32, i32**, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
