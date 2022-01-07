; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdflib.c__bdf_list_ensure.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdflib.c__bdf_list_ensure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@FT_INT_MAX = common dso_local global i32 0, align 4
@Out_Of_Memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @_bdf_list_ensure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bdf_list_ensure(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = lshr i64 %21, 1
  %23 = add i64 %20, %22
  %24 = add i64 %23, 5
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* @FT_INT_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load i32, i32* @Out_Of_Memory, align 4
  %36 = call i32 @FT_THROW(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %62

37:                                               ; preds = %16
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @FT_RENEW_ARRAY(i32 %51, i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %2
  br label %62

62:                                               ; preds = %61, %56, %34
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i64 @FT_RENEW_ARRAY(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
