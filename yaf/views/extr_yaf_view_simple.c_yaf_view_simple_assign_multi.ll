; ModuleID = '/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_assign_multi.c'
source_filename = "/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_assign_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yaf_view_simple_ce = common dso_local global i32 0, align 4
@YAF_VIEW_PROPERTY_NAME_TPLVARS = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i64 0, align 8
@zval_add_ref = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yaf_view_simple_assign_multi(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @yaf_view_simple_ce, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_TPLVARS, align 4
  %10 = call i32 @ZEND_STRL(i32 %9)
  %11 = call i32* @zend_read_property(i32 %7, i32* %8, i32 %10, i32 1, i32* null)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @Z_TYPE_P(i32* %12)
  %14 = load i64, i64* @IS_ARRAY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @Z_ARRVAL_P(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @Z_ARRVAL_P(i32* %19)
  %21 = load i64, i64* @zval_add_ref, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @zend_hash_copy(i32 %18, i32 %20, i32 %22)
  store i32 1, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32* @zend_read_property(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ZEND_STRL(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_hash_copy(i32, i32, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
