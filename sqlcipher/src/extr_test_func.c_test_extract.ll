; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_extract.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @test_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extract(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @sqlite3_context_db_handle(i32* %17)
  store i32* %18, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_blob(i32* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %8, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @sqlite3_value_int(i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @sqlite3GetVarint(i32* %33, i64* %12)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %9, align 8
  store i32* %39, i32** %11, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %85, %3
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sle i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %88

50:                                               ; preds = %48
  %51 = call i32 @memset(%struct.TYPE_5__* %16, i32 0, i32 32)
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32* %52, i32** %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ENC(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @sqlite3GetVarint(i32* %57, i64* %15)
  %59 = load i32*, i32** %10, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @sqlite3VdbeSerialGet(i32* %62, i32 %64, %struct.TYPE_5__* %16)
  %66 = load i32*, i32** %11, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %11, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %50
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @sqlite3_result_value(i32* %73, %struct.TYPE_5__* %16)
  br label %75

75:                                               ; preds = %72, %50
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sqlite3DbFree(i32* %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %75
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %40

88:                                               ; preds = %48
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3GetVarint(i32*, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ENC(i32*) #1

declare dso_local i32 @sqlite3VdbeSerialGet(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3_result_value(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3DbFree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
