; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_randStr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_randStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randStr.zSrc = internal constant [79 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.-!,:*^+=_|?/<> \00", align 16
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @randStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randStr(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1000 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sqlite3_value_int(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 1000
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 999, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sqlite3_value_int(i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %41, 1000
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 999, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = call i32 (i32, ...) @sqlite3_randomness(i32 4, i32* %10)
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 2147483647
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = srem i32 %53, %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 1000
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 0
  %69 = call i32 (i32, ...) @sqlite3_randomness(i32 %67, i8* %68)
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %86, %61
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = urem i64 %79, 78
  %81 = getelementptr inbounds [79 x i8], [79 x i8]* @randStr.zSrc, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 %84
  store i8 %82, i8* %85, align 1
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds [1000 x i8], [1000 x i8]* %12, i64 0, i64 0
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %97 = call i32 @sqlite3_result_text(i32* %93, i8* %94, i32 %95, i32 %96)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_randomness(i32, ...) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
