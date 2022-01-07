; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3LogEstAdd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3LogEstAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3LogEstAdd.x = internal constant [32 x i8] c"\0A\0A\09\09\08\08\07\07\07\06\06\06\05\05\05\04\04\04\04\03\03\03\03\03\03\02\02\02\02\02\02\02", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sqlite3LogEstAdd(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add nsw i64 %11, 49
  %13 = icmp sgt i64 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %3, align 8
  br label %57

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %18, 31
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %57

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %26, %27
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* @sqlite3LogEstAdd.x, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = add nsw i64 %25, %31
  store i64 %32, i64* %3, align 8
  br label %57

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 49
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %3, align 8
  br label %57

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, 31
  %44 = icmp sgt i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %57

48:                                               ; preds = %40
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = sub nsw i64 %50, %51
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* @sqlite3LogEstAdd.x, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i64
  %56 = add nsw i64 %49, %55
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %48, %45, %38, %24, %21, %14
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
