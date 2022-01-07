; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3CompareAffinity.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3CompareAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_AFF_NUMERIC = common dso_local global i8 0, align 1
@SQLITE_AFF_BLOB = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @sqlite3CompareAffinity(i32* %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i32*, i32** %4, align 8
  %8 = call signext i8 @sqlite3ExprAffinity(i32* %7)
  store i8 %8, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i8, i8* %6, align 1
  %18 = call i64 @sqlite3IsNumericAffinity(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8, i8* %5, align 1
  %22 = call i64 @sqlite3IsNumericAffinity(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  store i8 %25, i8* %3, align 1
  br label %54

26:                                               ; preds = %20
  %27 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  store i8 %27, i8* %3, align 1
  br label %54

28:                                               ; preds = %12, %2
  %29 = load i8, i8* %6, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i8, i8* %5, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  store i8 %35, i8* %3, align 1
  br label %54

36:                                               ; preds = %31, %28
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ true, %36 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %5, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %49, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %3, align 1
  br label %54

54:                                               ; preds = %44, %34, %26, %24
  %55 = load i8, i8* %3, align 1
  ret i8 %55
}

declare dso_local signext i8 @sqlite3ExprAffinity(i32*) #1

declare dso_local i64 @sqlite3IsNumericAffinity(i8 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
