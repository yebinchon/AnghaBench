; ModuleID = '/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_eval.c'
source_filename = "/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8
@yaf_view_simple_ce = common dso_local global i32 0, align 4
@YAF_VIEW_PROPERTY_NAME_TPLVARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"template code\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"?>%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yaf_view_simple_eval(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* @IS_STRING, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @Z_TYPE_P(i32* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

20:                                               ; preds = %4
  %21 = load i32, i32* @yaf_view_simple_ce, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_TPLVARS, align 4
  %24 = call i32 @ZEND_STRL(i32 %23)
  %25 = call i32* @zend_read_property(i32 %21, i32* %22, i32 %24, i32 1, i32* null)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @yaf_view_build_symtable(i32* %26, i32* %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @Z_STRLEN_P(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %20
  %33 = call i8* @zend_make_compiled_string_description(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %14, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @Z_STRVAL_P(i32* %34)
  %36 = call i32 @strpprintf(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @ZVAL_STR(i32* %12, i32 %36)
  %38 = load i8*, i8** %14, align 8
  %39 = call i8* @zend_compile_string(i32* %12, i8* %38)
  store i8* %39, i8** %13, align 8
  %40 = call i32 @zval_ptr_dtor(i32* %12)
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @efree(i8* %41)
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %32
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @yaf_view_exec_tpl(i32* %46, i8* %47, i32* %48, i32* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @destroy_op_array(i8* %51)
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @efree(i8* %53)
  br label %55

55:                                               ; preds = %45, %32
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @yaf_view_destroy_symtable(i32* %57)
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_read_property(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ZEND_STRL(i32) #1

declare dso_local i32* @yaf_view_build_symtable(i32*, i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i8* @zend_make_compiled_string_description(i8*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32) #1

declare dso_local i32 @strpprintf(i32, i8*, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i8* @zend_compile_string(i32*, i8*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @yaf_view_exec_tpl(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @destroy_op_array(i8*) #1

declare dso_local i32 @yaf_view_destroy_symtable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
