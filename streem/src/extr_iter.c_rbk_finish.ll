; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_rbk_finish.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_rbk_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.rbk_data* }
%struct.rbk_data = type { i32 }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @rbk_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbk_finish(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rbk_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.rbk_data*, %struct.rbk_data** %9, align 8
  store %struct.rbk_data* %10, %struct.rbk_data** %5, align 8
  %11 = load %struct.rbk_data*, %struct.rbk_data** %5, align 8
  %12 = getelementptr inbounds %struct.rbk_data, %struct.rbk_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @kh_begin(i32 %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %47, %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.rbk_data*, %struct.rbk_data** %5, align 8
  %18 = getelementptr inbounds %struct.rbk_data, %struct.rbk_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @kh_end(i32 %19)
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %struct.rbk_data*, %struct.rbk_data** %5, align 8
  %24 = getelementptr inbounds %struct.rbk_data, %struct.rbk_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @kh_exist(i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct.rbk_data*, %struct.rbk_data** %5, align 8
  %31 = getelementptr inbounds %struct.rbk_data, %struct.rbk_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @kh_key(i32 %32, i64 %33)
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.rbk_data*, %struct.rbk_data** %5, align 8
  %37 = getelementptr inbounds %struct.rbk_data, %struct.rbk_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @kh_value(i32 %38, i64 %39)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %44 = call i32 @strm_ary_new(i32* %43, i32 2)
  %45 = call i32 @strm_emit(%struct.TYPE_4__* %42, i32 %44, i32* null)
  br label %46

46:                                               ; preds = %29, %22
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %15

50:                                               ; preds = %15
  %51 = load i32, i32* @STRM_OK, align 4
  ret i32 %51
}

declare dso_local i64 @kh_begin(i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local i64 @kh_exist(i32, i64) #1

declare dso_local i32 @kh_key(i32, i64) #1

declare dso_local i32 @kh_value(i32, i64) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @strm_ary_new(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
