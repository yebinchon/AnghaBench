; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_real2hex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_real2hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @real2hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @real2hex(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = bitcast %union.anon* %7 to i32*
  store i32 1, i32* %11, align 8
  %12 = bitcast %union.anon* %7 to [8 x i8]*
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call double @sqlite3_value_double(i32* %20)
  %22 = bitcast %union.anon* %7 to double*
  store double %21, double* %22, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %92, %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %95

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = bitcast %union.anon* %7 to [8 x i8]*
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %30, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = ashr i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 %42
  store i8 %39, i8* %43, align 1
  %44 = bitcast %union.anon* %7 to [8 x i8]*
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %44, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 15
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 %57
  store i8 %53, i8* %58, align 1
  br label %91

59:                                               ; preds = %26
  %60 = bitcast %union.anon* %7 to [8 x i8]*
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %60, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %70, 2
  %72 = sub nsw i32 14, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 %73
  store i8 %69, i8* %74, align 1
  %75 = bitcast %union.anon* %7 to [8 x i8]*
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %75, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 15
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sub nsw i32 14, %86
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 %89
  store i8 %84, i8* %90, align 1
  br label %91

91:                                               ; preds = %59, %29
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %23

95:                                               ; preds = %23
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 16
  store i8 0, i8* %96, align 16
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %99 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %100 = call i32 @sqlite3_result_text(i32* %97, i8* %98, i32 -1, i32 %99)
  ret void
}

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
