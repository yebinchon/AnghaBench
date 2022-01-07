; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_token_match_get_pango_attr.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_token_match_get_pango_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@G_REGEX_MATCH_PARTIAL = common dso_local global i32 0, align 4
@ROFI_HL_BOLD = common dso_local global i32 0, align 4
@PANGO_WEIGHT_BOLD = common dso_local global i32 0, align 4
@ROFI_HL_UNDERLINE = common dso_local global i32 0, align 4
@PANGO_UNDERLINE_SINGLE = common dso_local global i32 0, align 4
@ROFI_HL_STRIKETHROUGH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ROFI_HL_SMALL_CAPS = common dso_local global i32 0, align 4
@PANGO_VARIANT_SMALL_CAPS = common dso_local global i32 0, align 4
@ROFI_HL_ITALIC = common dso_local global i32 0, align 4
@PANGO_STYLE_ITALIC = common dso_local global i32 0, align 4
@ROFI_HL_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @helper_token_match_get_pango_attr(i64 %0, i64 %1, %struct.TYPE_15__** %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = bitcast %struct.TYPE_16__* %6 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  store i64 %0, i64* %23, align 4
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  store i64 %1, i64* %24, align 4
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* %4, i32** %9, align 8
  %25 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %26 = icmp ne %struct.TYPE_15__** %25, null
  br i1 %26, label %27, label %207

27:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %203, %27
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %29, i64 %31
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %206

35:                                               ; preds = %28
  store i32* null, i32** %11, align 8
  %36 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %36, i64 %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %203

45:                                               ; preds = %35
  %46 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %46, i64 %48
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @G_REGEX_MATCH_PARTIAL, align 4
  %55 = call i32 @g_regex_match(i32 %52, i8* %53, i32 %54, i32** %11)
  br label %56

56:                                               ; preds = %197, %45
  %57 = load i32*, i32** %11, align 8
  %58 = call i64 @g_match_info_matches(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %200

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @g_match_info_get_match_count(i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %194, %60
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %197

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @g_match_info_fetch_pos(i32* %72, i32 %73, i32* %14, i32* %15)
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ROFI_HL_BOLD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load i32, i32* @PANGO_WEIGHT_BOLD, align 4
  %82 = call %struct.TYPE_17__* @pango_attr_weight_new(i32 %81)
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %16, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %91 = call i32 @pango_attr_list_insert(i32* %89, %struct.TYPE_17__* %90)
  br label %92

92:                                               ; preds = %80, %71
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ROFI_HL_UNDERLINE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load i32, i32* @PANGO_UNDERLINE_SINGLE, align 4
  %100 = call %struct.TYPE_17__* @pango_attr_underline_new(i32 %99)
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %17, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %109 = call i32 @pango_attr_list_insert(i32* %107, %struct.TYPE_17__* %108)
  br label %110

110:                                              ; preds = %98, %92
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ROFI_HL_STRIKETHROUGH, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load i32, i32* @TRUE, align 4
  %118 = call %struct.TYPE_17__* @pango_attr_strikethrough_new(i32 %117)
  store %struct.TYPE_17__* %118, %struct.TYPE_17__** %18, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %127 = call i32 @pango_attr_list_insert(i32* %125, %struct.TYPE_17__* %126)
  br label %128

128:                                              ; preds = %116, %110
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ROFI_HL_SMALL_CAPS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %128
  %135 = load i32, i32* @PANGO_VARIANT_SMALL_CAPS, align 4
  %136 = call %struct.TYPE_17__* @pango_attr_variant_new(i32 %135)
  store %struct.TYPE_17__* %136, %struct.TYPE_17__** %19, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %145 = call i32 @pango_attr_list_insert(i32* %143, %struct.TYPE_17__* %144)
  br label %146

146:                                              ; preds = %134, %128
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ROFI_HL_ITALIC, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %146
  %153 = load i32, i32* @PANGO_STYLE_ITALIC, align 4
  %154 = call %struct.TYPE_17__* @pango_attr_style_new(i32 %153)
  store %struct.TYPE_17__* %154, %struct.TYPE_17__** %20, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %163 = call i32 @pango_attr_list_insert(i32* %161, %struct.TYPE_17__* %162)
  br label %164

164:                                              ; preds = %152, %146
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ROFI_HL_COLOR, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %173, 65535
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %177, 65535
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %181, 65535
  %183 = call %struct.TYPE_17__* @pango_attr_foreground_new(i32 %174, i32 %178, i32 %182)
  store %struct.TYPE_17__* %183, %struct.TYPE_17__** %21, align 8
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %192 = call i32 @pango_attr_list_insert(i32* %190, %struct.TYPE_17__* %191)
  br label %193

193:                                              ; preds = %170, %164
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %67

197:                                              ; preds = %67
  %198 = load i32*, i32** %11, align 8
  %199 = call i32 @g_match_info_next(i32* %198, i32* null)
  br label %56

200:                                              ; preds = %56
  %201 = load i32*, i32** %11, align 8
  %202 = call i32 @g_match_info_free(i32* %201)
  br label %203

203:                                              ; preds = %200, %44
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %28

206:                                              ; preds = %28
  br label %207

207:                                              ; preds = %206, %5
  %208 = load i32*, i32** %9, align 8
  ret i32* %208
}

declare dso_local i32 @g_regex_match(i32, i8*, i32, i32**) #1

declare dso_local i64 @g_match_info_matches(i32*) #1

declare dso_local i32 @g_match_info_get_match_count(i32*) #1

declare dso_local i32 @g_match_info_fetch_pos(i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @pango_attr_weight_new(i32) #1

declare dso_local i32 @pango_attr_list_insert(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @pango_attr_underline_new(i32) #1

declare dso_local %struct.TYPE_17__* @pango_attr_strikethrough_new(i32) #1

declare dso_local %struct.TYPE_17__* @pango_attr_variant_new(i32) #1

declare dso_local %struct.TYPE_17__* @pango_attr_style_new(i32) #1

declare dso_local %struct.TYPE_17__* @pango_attr_foreground_new(i32, i32, i32) #1

declare dso_local i32 @g_match_info_next(i32*, i32*) #1

declare dso_local i32 @g_match_info_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
