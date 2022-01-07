; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_hex16Func.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_hex16Func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @hex16Func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex16Func(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [400 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32**, i32*** %6, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i16* @sqlite3_value_text16(i32* %12)
  store i16* %13, i16** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %47, %3
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 96
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i16*, i16** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %18, %14
  %27 = phi i1 [ false, %14 ], [ %25, %18 ]
  br i1 %27, label %28, label %50

28:                                               ; preds = %26
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 400, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 %36
  %38 = load i16*, i16** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i16
  %46 = call i32 @sqlite3_snprintf(i32 %33, i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i16 zeroext %45)
  br label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %14

50:                                               ; preds = %26
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %57 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %58 = call i32 @sqlite3_result_text(i32* %55, i8* %56, i32 -1, i32 %57)
  ret void
}

declare dso_local i16* @sqlite3_value_text16(i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i16 zeroext) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
