; ModuleID = '/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_exec_tpl.c'
source_filename = "/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_exec_tpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@ZEND_CALL_NESTED_CODE = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_STDFLAGS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ref.outcontrol\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to create buffer\00", align 1
@ZEND_CALL_TOP = common dso_local global i32 0, align 4
@exception = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to fetch ob content\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@ZEND_CALL_HAS_SYMBOL_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32*, i32*)* @yaf_view_exec_tpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yaf_view_exec_tpl(i32* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 @ZVAL_UNDEF(i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @Z_OBJCE_P(i32* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ZEND_CALL_NESTED_CODE, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = bitcast %struct.TYPE_10__* %18 to i32*
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @Z_OBJ_P(i32* %23)
  %25 = call %struct.TYPE_11__* @zend_vm_stack_push_call_frame(i32 %17, i32* %19, i32 0, i32 %22, i32 %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load i32, i32* @PHP_OUTPUT_HANDLER_STDFLAGS, align 4
  %33 = call i64 @php_output_start_user(i32* null, i32 0, i32 %32)
  %34 = load i64, i64* @FAILURE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @E_WARNING, align 4
  %38 = call i32 @php_error_docref(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %82

39:                                               ; preds = %31, %4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = call i32 @zend_init_execute_data(%struct.TYPE_11__* %40, %struct.TYPE_10__* %41, i32* %11)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = load i32, i32* @ZEND_CALL_TOP, align 4
  %45 = call i32 @ZEND_ADD_CALL_FLAG(%struct.TYPE_11__* %43, i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = call i32 @zend_execute_ex(%struct.TYPE_11__* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = call i32 @zend_vm_stack_free_call_frame(%struct.TYPE_11__* %48)
  %50 = call i32 @zval_ptr_dtor(i32* %11)
  %51 = load i32, i32* @exception, align 4
  %52 = call i32* @EG(i32 %51)
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @UNEXPECTED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %39
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i64 (...) @php_output_discard()
  br label %62

62:                                               ; preds = %60, %57
  store i32 0, i32* %5, align 4
  br label %82

63:                                               ; preds = %39
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 @php_output_get_contents(i32* %67)
  %69 = load i64, i64* @FAILURE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 (...) @php_output_end()
  %73 = load i32, i32* @E_WARNING, align 4
  %74 = call i32 @php_error_docref(i8* null, i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %82

75:                                               ; preds = %66
  %76 = call i64 (...) @php_output_discard()
  %77 = load i64, i64* @SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %82

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %63
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %79, %71, %62, %36
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @Z_OBJCE_P(i32*) #1

declare dso_local %struct.TYPE_11__* @zend_vm_stack_push_call_frame(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i64 @php_output_start_user(i32*, i32, i32) #1

declare dso_local i32 @php_error_docref(i8*, i32, i8*) #1

declare dso_local i32 @zend_init_execute_data(%struct.TYPE_11__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ZEND_ADD_CALL_FLAG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @zend_execute_ex(%struct.TYPE_11__*) #1

declare dso_local i32 @zend_vm_stack_free_call_frame(%struct.TYPE_11__*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32* @EG(i32) #1

declare dso_local i64 @php_output_discard(...) #1

declare dso_local i64 @php_output_get_contents(i32*) #1

declare dso_local i32 @php_output_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
