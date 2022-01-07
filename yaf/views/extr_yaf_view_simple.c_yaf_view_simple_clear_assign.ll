; ModuleID = '/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_clear_assign.c'
source_filename = "/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_clear_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yaf_view_simple_ce = common dso_local global i32 0, align 4
@YAF_VIEW_PROPERTY_NAME_TPLVARS = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yaf_view_simple_clear_assign(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @yaf_view_simple_ce, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_TPLVARS, align 4
  %9 = call i32 @ZEND_STRL(i32 %8)
  %10 = call i32* @zend_read_property(i32 %6, i32* %7, i32 %9, i32 1, i32* null)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @Z_TYPE_P(i32* %14)
  %16 = load i64, i64* @IS_ARRAY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @Z_ARRVAL_P(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @zend_symtable_del(i32 %23, i32* %24)
  br label %30

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @Z_ARRVAL_P(i32* %27)
  %29 = call i32 @zend_hash_clean(i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %13, %2
  ret void
}

declare dso_local i32* @zend_read_property(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ZEND_STRL(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_symtable_del(i32, i32*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @zend_hash_clean(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
