; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_sortby_cmp.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_sortby_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sortby_value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sortby_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortby_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sortby_value*, align 8
  %7 = alloca %struct.sortby_value*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sortby_value*
  store %struct.sortby_value* %11, %struct.sortby_value** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sortby_value*
  store %struct.sortby_value* %13, %struct.sortby_value** %7, align 8
  %14 = load %struct.sortby_value*, %struct.sortby_value** %6, align 8
  %15 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strm_number_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.sortby_value*, %struct.sortby_value** %6, align 8
  %21 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call double @strm_value_float(i32 %22)
  store double %23, double* %8, align 8
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.sortby_value*, %struct.sortby_value** %7, align 8
  %26 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strm_number_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %56

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.sortby_value*, %struct.sortby_value** %7, align 8
  %34 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strm_number_p(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.sortby_value*, %struct.sortby_value** %7, align 8
  %40 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call double @strm_value_float(i32 %41)
  store double %42, double* %9, align 8
  br label %44

43:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %56

44:                                               ; preds = %38
  %45 = load double, double* %8, align 8
  %46 = load double, double* %9, align 8
  %47 = fcmp ogt double %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %56

49:                                               ; preds = %44
  %50 = load double, double* %8, align 8
  %51 = load double, double* %9, align 8
  %52 = fcmp olt double %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %56

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %48, %43, %31, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @strm_number_p(i32) #1

declare dso_local double @strm_value_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
