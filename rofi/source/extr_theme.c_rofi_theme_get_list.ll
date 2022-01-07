; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_get_list.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_get_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@P_LIST = common dso_local global i64 0, align 8
@P_INHERIT = common dso_local global i64 0, align 8
@rofi_g_list_strdup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rofi_theme_get_list(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32* @rofi_theme_find_widget(i32 %15, i32 %18, i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* @P_LIST, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call %struct.TYPE_8__* @rofi_theme_find_property(i32* %21, i64 %22, i8* %23, i32 %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @P_INHERIT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32* @rofi_theme_get_list(%struct.TYPE_7__* %42, i8* %43, i8* %44)
  store i32* %45, i32** %4, align 8
  br label %97

46:                                               ; preds = %34
  br label %61

47:                                               ; preds = %28
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @P_LIST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @rofi_g_list_strdup, align 4
  %59 = call i32* @g_list_copy_deep(i32 %57, i32 %58, i32* null)
  store i32* %59, i32** %4, align 8
  br label %97

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = call i8** @g_strsplit(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i8** [ %67, %65 ], [ null, %68 ]
  store i8** %70, i8*** %10, align 8
  %71 = load i8**, i8*** %10, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i8**, i8*** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32*, i32** %11, align 8
  %83 = load i8**, i8*** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32* @g_list_append(i32* %82, i8* %87)
  store i32* %88, i32** %11, align 8
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load i8**, i8*** %10, align 8
  %94 = call i32 @g_free(i8** %93)
  %95 = load i32*, i32** %11, align 8
  store i32* %95, i32** %4, align 8
  br label %97

96:                                               ; preds = %69
  store i32* null, i32** %4, align 8
  br label %97

97:                                               ; preds = %96, %92, %53, %39
  %98 = load i32*, i32** %4, align 8
  ret i32* %98
}

declare dso_local i32* @rofi_theme_find_widget(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @rofi_theme_find_property(i32*, i64, i8*, i32) #1

declare dso_local i32* @g_list_copy_deep(i32, i32, i32*) #1

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i32* @g_list_append(i32*, i8*) #1

declare dso_local i32 @g_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
