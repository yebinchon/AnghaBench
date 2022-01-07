; ModuleID = '/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_render.c'
source_filename = "/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IS_STRING = common dso_local global i64 0, align 8
@yaf_view_simple_ce = common dso_local global %struct.TYPE_3__* null, align 8
@YAF_VIEW_PROPERTY_NAME_TPLVARS = common dso_local global i32 0, align 4
@YAF_VIEW_PROPERTY_NAME_TPLDIR = common dso_local global i32 0, align 4
@view_directory = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@DEFAULT_SLASH = common dso_local global i32 0, align 4
@YAF_ERR_NOTFOUND_VIEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Could not determine the view script path, you should call %s::setScriptPath to specific it\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yaf_view_simple_render(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* @IS_STRING, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @Z_TYPE_P(i32* %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %103

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @yaf_view_simple_ce, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_TPLVARS, align 4
  %23 = call i32 @ZEND_STRL(i32 %22)
  %24 = call i32* @zend_read_property(%struct.TYPE_3__* %20, i32* %21, i32 %23, i32 1, i32* null)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @yaf_view_build_symtable(i32* %25, i32* %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @Z_STRVAL_P(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @Z_STRLEN_P(i32* %30)
  %32 = call i64 @IS_ABSOLUTE_PATH(i32 %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %19
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @Z_STR_P(i32* %37)
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @yaf_view_render_tpl(i32* %35, i32* %36, i32* %38, i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @yaf_view_destroy_symtable(i32* %43)
  store i32 0, i32* %5, align 4
  br label %103

45:                                               ; preds = %34
  br label %100

46:                                               ; preds = %19
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @yaf_view_simple_ce, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @YAF_VIEW_PROPERTY_NAME_TPLDIR, align 4
  %50 = call i32 @ZEND_STRL(i32 %49)
  %51 = call i32* @zend_read_property(%struct.TYPE_3__* %47, i32* %48, i32 %50, i32 0, i32* null)
  store i32* %51, i32** %13, align 8
  %52 = load i64, i64* @IS_STRING, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @Z_TYPE_P(i32* %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %46
  %57 = load i32, i32* @view_directory, align 4
  %58 = call i64 @YAF_G(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* @view_directory, align 4
  %62 = call i64 @YAF_G(i32 %61)
  %63 = call i32 @ZSTR_VAL(i64 %62)
  %64 = load i32, i32* @DEFAULT_SLASH, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @Z_STRVAL_P(i32* %65)
  %67 = call i32* @strpprintf(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %66)
  store i32* %67, i32** %12, align 8
  br label %77

68:                                               ; preds = %56
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @yaf_view_destroy_symtable(i32* %69)
  %71 = load i32, i32* @YAF_ERR_NOTFOUND_VIEW, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @yaf_view_simple_ce, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ZSTR_VAL(i64 %74)
  %76 = call i32 @yaf_trigger_error(i32 %71, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 0, i32* %5, align 4
  br label %103

77:                                               ; preds = %60
  br label %85

78:                                               ; preds = %46
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @Z_STRVAL_P(i32* %79)
  %81 = load i32, i32* @DEFAULT_SLASH, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @Z_STRVAL_P(i32* %82)
  %84 = call i32* @strpprintf(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81, i32 %83)
  store i32* %84, i32** %12, align 8
  br label %85

85:                                               ; preds = %78, %77
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i64 @yaf_view_render_tpl(i32* %86, i32* %87, i32* %88, i32* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @yaf_view_destroy_symtable(i32* %93)
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @zend_string_release(i32* %95)
  store i32 0, i32* %5, align 4
  br label %103

97:                                               ; preds = %85
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @zend_string_release(i32* %98)
  br label %100

100:                                              ; preds = %97, %45
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @yaf_view_destroy_symtable(i32* %101)
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %92, %68, %42, %18
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_read_property(%struct.TYPE_3__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ZEND_STRL(i32) #1

declare dso_local i32* @yaf_view_build_symtable(i32*, i32*) #1

declare dso_local i64 @IS_ABSOLUTE_PATH(i32, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i64 @yaf_view_render_tpl(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local i32 @yaf_view_destroy_symtable(i32*) #1

declare dso_local i64 @YAF_G(i32) #1

declare dso_local i32* @strpprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i64) #1

declare dso_local i32 @yaf_trigger_error(i32, i8*, i32) #1

declare dso_local i32 @zend_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
