; ModuleID = '/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_instance.c'
source_filename = "/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yaf_view_simple_ce = common dso_local global i32 0, align 4
@YAF_VIEW_PROPERTY_NAME_TPLVARS = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i64 0, align 8
@YAF_VIEW_PROPERTY_NAME_TPLDIR = common dso_local global i32 0, align 4
@YAF_ERR_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Expects an absolute path for templates directory\00", align 1
@IS_ARRAY = common dso_local global i64 0, align 8
@YAF_VIEW_PROPERTY_NAME_OPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yaf_view_simple_instance(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @Z_ISUNDEF_P(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @yaf_view_simple_ce, align 4
  %15 = call i32 @object_init_ex(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = call i32 @array_init(i32* %8)
  %18 = load i32, i32* @yaf_view_simple_ce, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_TPLVARS, align 4
  %21 = call i32 @ZEND_STRL(i32 %20)
  %22 = call i32 @zend_update_property(i32 %18, i32* %19, i32 %21, i32* %8)
  %23 = call i32 @zval_ptr_dtor(i32* %8)
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %16
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @Z_TYPE_P(i32* %27)
  %29 = load i64, i64* @IS_STRING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @Z_STRVAL_P(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @Z_STRLEN_P(i32* %34)
  %36 = call i64 @IS_ABSOLUTE_PATH(i32 %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* @yaf_view_simple_ce, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_TPLDIR, align 4
  %42 = call i32 @ZEND_STRL(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @zend_update_property(i32 %39, i32* %40, i32 %42, i32* %43)
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @YAF_ERR_TYPE_ERROR, align 4
  %47 = call i32 @yaf_trigger_error(i32 %46, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %66

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %26, %16
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i64, i64* @IS_ARRAY, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @Z_TYPE_P(i32* %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* @yaf_view_simple_ce, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_OPTS, align 4
  %61 = call i32 @ZEND_STRL(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @zend_update_property(i32 %58, i32* %59, i32 %61, i32* %62)
  br label %64

64:                                               ; preds = %57, %52, %49
  %65 = load i32*, i32** %5, align 8
  store i32* %65, i32** %4, align 8
  br label %66

66:                                               ; preds = %64, %45
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

declare dso_local i64 @Z_ISUNDEF_P(i32*) #1

declare dso_local i32 @object_init_ex(i32*, i32) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @zend_update_property(i32, i32*, i32, i32*) #1

declare dso_local i32 @ZEND_STRL(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @IS_ABSOLUTE_PATH(i32, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @yaf_trigger_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
