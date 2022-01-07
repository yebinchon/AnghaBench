; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_window_get_text_prop.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_window_get_text_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@xcb = common dso_local global %struct.TYPE_8__* null, align 8
@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@netatoms = common dso_local global i64* null, align 8
@UTF8_STRING = common dso_local global i64 0, align 8
@STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid encoding.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @window_get_text_prop(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %15 = load i32, i32* @UINT_MAX, align 4
  %16 = call i32 @xcb_get_property(i32 %11, i32 0, i32 %12, i32 %13, i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xcb, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_7__* @xcb_get_property_reply(i32 %19, i32 %20, i32* null)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = call i64 @xcb_get_property_value_length(%struct.TYPE_7__* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  store i8* null, i8** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** @netatoms, align 8
  %33 = load i64, i64* @UTF8_STRING, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = call i32 @xcb_get_property_value(%struct.TYPE_7__* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = call i64 @xcb_get_property_value_length(%struct.TYPE_7__* %40)
  %42 = call i8* @g_strndup(i32 %39, i64 %41)
  store i8* %42, i8** %8, align 8
  br label %61

43:                                               ; preds = %28
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** @netatoms, align 8
  %48 = load i64, i64* @STRING, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = call i32 @xcb_get_property_value(%struct.TYPE_7__* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = call i64 @xcb_get_property_value_length(%struct.TYPE_7__* %55)
  %57 = call i8* @rofi_latin_to_utf8_strdup(i32 %54, i64 %56)
  store i8* %57, i8** %8, align 8
  br label %60

58:                                               ; preds = %43
  %59 = call i8* @g_strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %37
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = call i32 @free(%struct.TYPE_7__* %62)
  %64 = load i8*, i8** %8, align 8
  store i8* %64, i8** %3, align 8
  br label %69

65:                                               ; preds = %24
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = call i32 @free(%struct.TYPE_7__* %66)
  br label %68

68:                                               ; preds = %65, %2
  store i8* null, i8** %3, align 8
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i32 @xcb_get_property(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @xcb_get_property_reply(i32, i32, i32*) #1

declare dso_local i64 @xcb_get_property_value_length(%struct.TYPE_7__*) #1

declare dso_local i8* @g_strndup(i32, i64) #1

declare dso_local i32 @xcb_get_property_value(%struct.TYPE_7__*) #1

declare dso_local i8* @rofi_latin_to_utf8_strdup(i32, i64) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
