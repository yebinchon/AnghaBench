; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_mgrv.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_mgrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32*, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@P_COLOR = common dso_local global i32 0, align 4
@PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_24__*, i32, i32*, i32**, i32)* @combi_mgrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @combi_mgrv(%struct.TYPE_24__* %0, i32 %1, i32* %2, i32** %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = call %struct.TYPE_25__* @mode_get_private_data(%struct.TYPE_24__* %21)
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %12, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %87, label %25

25:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %83, %25
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %33, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %50, %57
  %59 = icmp ult i32 %43, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %42
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sub i32 %69, %76
  %78 = load i32*, i32** %9, align 8
  %79 = load i32**, i32*** %10, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i8* @mode_get_display_value(%struct.TYPE_17__* %68, i32 %77, i32* %78, i32** %79, i32 %80)
  store i8* null, i8** %6, align 8
  br label %226

82:                                               ; preds = %42, %32
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %26

86:                                               ; preds = %26
  store i8* null, i8** %6, align 8
  br label %226

87:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %222, %87
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %225

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp uge i32 %95, %102
  br i1 %103, label %104, label %221

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %112, %119
  %121 = icmp ult i32 %105, %120
  br i1 %121, label %122, label %221

122:                                              ; preds = %104
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sub i32 %131, %138
  %140 = load i32*, i32** %9, align 8
  %141 = load i32**, i32*** %10, align 8
  %142 = load i32, i32* @TRUE, align 4
  %143 = call i8* @mode_get_display_value(%struct.TYPE_17__* %130, i32 %139, i32* %140, i32** %141, i32 %142)
  store i8* %143, i8** %15, align 8
  store i8* %143, i8** %16, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = call i8* @mode_get_display_name(%struct.TYPE_17__* %151)
  store i8* %152, i8** %17, align 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @config, i32 0, i32 0), align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %122
  %156 = load i8*, i8** %17, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %156, i8* %157)
  store i8* %158, i8** %15, align 8
  %159 = load i8*, i8** %16, align 8
  %160 = call i32 @g_free(i8* %159)
  br label %161

161:                                              ; preds = %155, %122
  %162 = load i32**, i32*** %10, align 8
  %163 = icmp ne i32** %162, null
  br i1 %163, label %164, label %219

164:                                              ; preds = %161
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TRUE, align 4
  %169 = call i32* @rofi_theme_find_widget(i32 %167, i32* null, i32 %168)
  store i32* %169, i32** %18, align 8
  %170 = load i32*, i32** %18, align 8
  %171 = load i32, i32* @P_COLOR, align 4
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @TRUE, align 4
  %183 = call %struct.TYPE_22__* @rofi_theme_find_property(i32* %170, i32 %171, i32 %181, i32 %182)
  store %struct.TYPE_22__* %183, %struct.TYPE_22__** %19, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %185 = icmp ne %struct.TYPE_22__* %184, null
  br i1 %185, label %186, label %218

186:                                              ; preds = %164
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %191, 65535
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %197, 65535
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 65535
  %205 = call %struct.TYPE_23__* @pango_attr_foreground_new(i32 %192, i32 %198, i32 %204)
  store %struct.TYPE_23__* %205, %struct.TYPE_23__** %20, align 8
  %206 = load i32, i32* @PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING, align 4
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i8*, i8** %17, align 8
  %210 = call i32 @strlen(i8* %209)
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load i32**, i32*** %10, align 8
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %216 = call i32* @g_list_append(i32* %214, %struct.TYPE_23__* %215)
  %217 = load i32**, i32*** %10, align 8
  store i32* %216, i32** %217, align 8
  br label %218

218:                                              ; preds = %186, %164
  br label %219

219:                                              ; preds = %218, %161
  %220 = load i8*, i8** %15, align 8
  store i8* %220, i8** %6, align 8
  br label %226

221:                                              ; preds = %104, %94
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %14, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %88

225:                                              ; preds = %88
  store i8* null, i8** %6, align 8
  br label %226

226:                                              ; preds = %225, %219, %86, %60
  %227 = load i8*, i8** %6, align 8
  ret i8* %227
}

declare dso_local %struct.TYPE_25__* @mode_get_private_data(%struct.TYPE_24__*) #1

declare dso_local i8* @mode_get_display_value(%struct.TYPE_17__*, i32, i32*, i32**, i32) #1

declare dso_local i8* @mode_get_display_name(%struct.TYPE_17__*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @rofi_theme_find_widget(i32, i32*, i32) #1

declare dso_local %struct.TYPE_22__* @rofi_theme_find_property(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @pango_attr_foreground_new(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @g_list_append(i32*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
