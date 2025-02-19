; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_putValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_putValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @putValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putValue(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @sqlite3_column_type(i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @putc(i32 %15, i32* %16)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %88 [
    i32 130, label %19
    i32 131, label %38
    i32 128, label %57
    i32 132, label %72
    i32 129, label %87
  ]

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call double @sqlite3_column_int64(i32* %20, i32 %21)
  store double %22, double* %8, align 8
  %23 = call i32 @memcpy(i32* %10, double* %8, i32 8)
  store i32 56, i32* %11, align 4
  br label %24

24:                                               ; preds = %34, %19
  %25 = load i32, i32* %11, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = ashr i32 %28, %29
  %31 = and i32 %30, 255
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @putc(i32 %31, i32* %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 8
  store i32 %36, i32* %11, align 4
  br label %24

37:                                               ; preds = %24
  br label %88

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call double @sqlite3_column_double(i32* %39, i32 %40)
  store double %41, double* %9, align 8
  %42 = call i32 @memcpy(i32* %10, double* %9, i32 8)
  store i32 56, i32* %11, align 4
  br label %43

43:                                               ; preds = %53, %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %47, %48
  %50 = and i32 %49, 255
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @putc(i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 8
  store i32 %55, i32* %11, align 4
  br label %43

56:                                               ; preds = %43
  br label %88

57:                                               ; preds = %3
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call double @sqlite3_column_bytes(i32* %58, i32 %59)
  store double %60, double* %8, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load double, double* %8, align 8
  %63 = fptosi double %62 to i32
  %64 = call i32 @putsVarint(i32* %61, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @sqlite3_column_text(i32* %65, i32 %66)
  %68 = load double, double* %8, align 8
  %69 = fptoui double %68 to i64
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fwrite(i32 %67, i32 1, i64 %69, i32* %70)
  br label %88

72:                                               ; preds = %3
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call double @sqlite3_column_bytes(i32* %73, i32 %74)
  store double %75, double* %8, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load double, double* %8, align 8
  %78 = fptosi double %77 to i32
  %79 = call i32 @putsVarint(i32* %76, i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @sqlite3_column_blob(i32* %80, i32 %81)
  %83 = load double, double* %8, align 8
  %84 = fptoui double %83 to i64
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @fwrite(i32 %82, i32 1, i64 %84, i32* %85)
  br label %88

87:                                               ; preds = %3
  br label %88

88:                                               ; preds = %3, %87, %72, %57, %56, %37
  ret void
}

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local double @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, double*, i32) #1

declare dso_local double @sqlite3_column_double(i32*, i32) #1

declare dso_local double @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @putsVarint(i32*, i32) #1

declare dso_local i32 @fwrite(i32, i32, i64, i32*) #1

declare dso_local i32 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
