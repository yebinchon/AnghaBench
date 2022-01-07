; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_update_callback.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_update_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32*, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { double, double, double, double }

@TRUE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ROFI_HL_BOLD = common dso_local global i32 0, align 4
@ROFI_HL_UNDERLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, i32*, i64)* @update_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_callback(i32* %0, i32* %1, i32 %2, i8* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_18__, align 8
  %21 = alloca %struct.TYPE_18__, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %13, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %134

28:                                               ; preds = %6
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %14, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i8* @mode_get_display_value(i32 %31, i32 %38, i32* %15, %struct.TYPE_19__** %14, i32 %39)
  store i8* %40, i8** %16, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @textbox_font(i32* %45, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = call i32 @textbox_text(i32* %49, i8* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32* @textbox_get_pango_attributes(i32* %52)
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %28
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @pango_attr_list_ref(i32* %57)
  br label %61

59:                                               ; preds = %28
  %60 = call i32* (...) @pango_attr_list_new()
  store i32* %60, i32** %17, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @WIDGET(i32* %65)
  %67 = call i32 @widget_get_desired_height(i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32* @mode_get_icon(i32 %70, i32 %77, i32 %78)
  store i32* %79, i32** %19, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @icon_set_surface(i32* %80, i32* %81)
  br label %83

83:                                               ; preds = %64, %61
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @config, i32 0, i32 0), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = bitcast %struct.TYPE_18__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %92, i8 0, i64 40, i1 false)
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %94 = load i32, i32* @ROFI_HL_BOLD, align 4
  %95 = load i32, i32* @ROFI_HL_UNDERLINE, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %93, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @WIDGET(i32* %97)
  call void @rofi_theme_get_highlight(%struct.TYPE_18__* sret %21, i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %20)
  %99 = bitcast %struct.TYPE_18__* %20 to i8*
  %100 = bitcast %struct.TYPE_18__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 40, i1 false)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @textbox_get_visible_text(i32* %104)
  %106 = load i32*, i32** %17, align 8
  %107 = call i32 @helper_token_match_get_pango_attr(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %20, i64 %103, i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %91, %88, %83
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %110 = call %struct.TYPE_19__* @g_list_first(%struct.TYPE_19__* %109)
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %22, align 8
  br label %111

111:                                              ; preds = %121, %108
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %113 = icmp ne %struct.TYPE_19__* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32*, i32** %17, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = call i32 @pango_attr_list_insert(i32* %115, i32* %119)
  br label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %123 = call %struct.TYPE_19__* @g_list_next(%struct.TYPE_19__* %122)
  store %struct.TYPE_19__* %123, %struct.TYPE_19__** %22, align 8
  br label %111

124:                                              ; preds = %111
  %125 = load i32*, i32** %7, align 8
  %126 = load i32*, i32** %17, align 8
  %127 = call i32 @textbox_set_pango_attributes(i32* %125, i32* %126)
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @pango_attr_list_unref(i32* %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %131 = call i32 @g_list_free(%struct.TYPE_19__* %130)
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @g_free(i8* %132)
  br label %155

134:                                              ; preds = %6
  store i32 0, i32* %23, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @FALSE, align 4
  %146 = call i8* @mode_get_display_value(i32 %137, i32 %144, i32* %23, %struct.TYPE_19__** null, i32 %145)
  %147 = load i32, i32* %23, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @textbox_font(i32* %151, i32 %153)
  br label %155

155:                                              ; preds = %134, %124
  ret void
}

declare dso_local i8* @mode_get_display_value(i32, i32, i32*, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @textbox_font(i32*, i32) #1

declare dso_local i32 @textbox_text(i32*, i8*) #1

declare dso_local i32* @textbox_get_pango_attributes(i32*) #1

declare dso_local i32 @pango_attr_list_ref(i32*) #1

declare dso_local i32* @pango_attr_list_new(...) #1

declare dso_local i32 @widget_get_desired_height(i32) #1

declare dso_local i32 @WIDGET(i32*) #1

declare dso_local i32* @mode_get_icon(i32, i32, i32) #1

declare dso_local i32 @icon_set_surface(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @rofi_theme_get_highlight(%struct.TYPE_18__* sret, i32, i8*, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @helper_token_match_get_pango_attr(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i64, i32, i32*) #1

declare dso_local i32 @textbox_get_visible_text(i32*) #1

declare dso_local %struct.TYPE_19__* @g_list_first(%struct.TYPE_19__*) #1

declare dso_local i32 @pango_attr_list_insert(i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @g_list_next(%struct.TYPE_19__*) #1

declare dso_local i32 @textbox_set_pango_attributes(i32*, i32*) #1

declare dso_local i32 @pango_attr_list_unref(i32*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_19__*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
