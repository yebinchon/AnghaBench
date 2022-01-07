; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_deltaparsevtabColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_deltaparsevtabColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@azOp = common dso_local global i32* null, align 8
@SQLITE_STATIC = common dso_local global i32 0, align 4
@DELTAPARSE_OP_COPY = common dso_local global i64 0, align 8
@DELTAPARSE_OP_INSERT = common dso_local global i64 0, align 8
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @deltaparsevtabColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deltaparsevtabColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %71 [
    i32 128, label %11
    i32 131, label %21
    i32 130, label %27
    i32 129, label %61
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** @azOp, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SQLITE_STATIC, align 4
  %20 = call i32 @sqlite3_result_text(i32* %12, i32 %18, i32 -1, i32 %19)
  br label %71

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sqlite3_result_int(i32* %22, i64 %25)
  br label %71

27:                                               ; preds = %3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DELTAPARSE_OP_COPY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @sqlite3_result_int(i32* %34, i64 %37)
  br label %60

39:                                               ; preds = %27
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DELTAPARSE_OP_INSERT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %58 = call i32 @sqlite3_result_blob(i32* %46, i64 %53, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %45, %39
  br label %60

60:                                               ; preds = %59, %33
  br label %71

61:                                               ; preds = %3
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %70 = call i32 @sqlite3_result_blob(i32* %62, i64 %65, i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %3, %61, %60, %21, %11
  %72 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %72
}

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i64) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
