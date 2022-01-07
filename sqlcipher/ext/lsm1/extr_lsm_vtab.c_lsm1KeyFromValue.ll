; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1KeyFromValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1KeyFromValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_BLOB = common dso_local global i32 0, align 4
@SQLITE_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32**, i32*)* @lsm1KeyFromValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsm1KeyFromValue(i32 %0, i32* %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SQLITE_BLOB, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @sqlite3_value_blob(i32* %16)
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32**, i32*** %9, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @sqlite3_value_bytes(i32* %20)
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  br label %49

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SQLITE_TEXT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @sqlite3_value_text(i32* %28)
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32**, i32*** %9, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sqlite3_value_bytes(i32* %32)
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %48

35:                                               ; preds = %23
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @sqlite3_value_int64(i32* %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @lsm1PutVarint64(i32* %42, i64 %43)
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32**, i32*** %9, align 8
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %27
  br label %49

49:                                               ; preds = %48, %15
  ret void
}

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @lsm1PutVarint64(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
