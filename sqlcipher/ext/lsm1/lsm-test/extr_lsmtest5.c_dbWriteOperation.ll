; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbWriteOperation.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbWriteOperation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@DB_KEY_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i8*, i32*)* @dbWriteOperation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbWriteOperation(%struct.TYPE_6__* %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = call i32 @dbMaxLevel(%struct.TYPE_6__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @DB_KEY_BYTES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br label %35

35:                                               ; preds = %29, %5
  %36 = phi i1 [ false, %5 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dbFormatKey(%struct.TYPE_6__* %39, i32 0, i32 %40, i8* %26)
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %35
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @tdb_transaction_support(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @tdb_begin(i32* %50, i32 2)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %100

55:                                               ; preds = %49
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %45, %35
  %59 = load i32*, i32** %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @testWriteStr(i32* %59, i8* %26, i8* %60, i32* %61)
  store i32 1, i32* %15, align 4
  br label %63

63:                                               ; preds = %88, %58
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load i32, i32* @DB_KEY_BYTES, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %18, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @dbComputeCksum(%struct.TYPE_6__* %72, i32* %73, i32 %74, i32 %75, i32* %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @dbFormatCksumValue(i32 %78, i8* %71)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dbFormatKey(%struct.TYPE_6__* %80, i32 %81, i32 %82, i8* %26)
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @testWriteStr(i32* %84, i8* %26, i8* %71, i32* %85)
  %87 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %87)
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %63

91:                                               ; preds = %63
  %92 = load i32*, i32** %8, align 8
  %93 = call i64 @tdb_transaction_support(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32*, i32** %8, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @testCommit(i32* %96, i32 0, i32* %97)
  br label %99

99:                                               ; preds = %95, %91
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %99, %54
  %101 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @dbMaxLevel(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dbFormatKey(%struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i64 @tdb_transaction_support(i32*) #1

declare dso_local i32 @tdb_begin(i32*, i32) #1

declare dso_local i32 @testWriteStr(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @dbComputeCksum(%struct.TYPE_6__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @dbFormatCksumValue(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @testCommit(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
