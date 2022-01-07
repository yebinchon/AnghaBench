; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3DeleteByRowid.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3DeleteByRowid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQL_DELETE_CONTENT = common dso_local global i32 0, align 4
@SQL_DELETE_DOCSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* @fts3DeleteByRowid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3DeleteByRowid(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @fts3DeleteTerms(i32* %9, %struct.TYPE_7__* %13, i32* %14, i32* %15, i32* %10)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @fts3IsEmpty(%struct.TYPE_7__* %24, i32* %25, i32* %11)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @fts3DeleteAll(%struct.TYPE_7__* %34, i32 1)
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = mul i64 %43, 2
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i32* %37, i32 0, i32 %45)
  br label %70

47:                                               ; preds = %30
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = load i32, i32* @SQL_DELETE_CONTENT, align 4
  %59 = call i32 @fts3SqlExec(i32* %9, %struct.TYPE_7__* %57, i32 %58, i32** %6)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i32, i32* @SQL_DELETE_DOCSIZE, align 4
  %68 = call i32 @fts3SqlExec(i32* %9, %struct.TYPE_7__* %66, i32 %67, i32** %6)
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %23
  br label %72

72:                                               ; preds = %71, %19, %4
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @fts3DeleteTerms(i32*, %struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @fts3IsEmpty(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @fts3DeleteAll(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fts3SqlExec(i32*, %struct.TYPE_7__*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
