; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_pdf_set_layer_config_as_default.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_pdf_set_layer_config_as_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Root/OCProperties\00", align 1
@D = common dso_local global i32 0, align 4
@BaseState = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@Order = common dso_local global i32 0, align 4
@RBGroups = common dso_local global i32 0, align 4
@Configs = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@AS = common dso_local global i32 0, align 4
@Intent = common dso_local global i32 0, align 4
@View = common dso_local global i32 0, align 4
@Name = common dso_local global i32 0, align 4
@Creator = common dso_local global i32 0, align 4
@Locked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_layer_config_as_default(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  br label %217

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @pdf_trailer(i32* %25, %struct.TYPE_9__* %26)
  %28 = call i32* @pdf_dict_getp(i32* %24, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %217

32:                                               ; preds = %23
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @D, align 4
  %36 = call i32* @PDF_NAME(i32 %35)
  %37 = call i32* @pdf_dict_get(i32* %33, i32* %34, i32* %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %217

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @BaseState, align 4
  %45 = call i32* @PDF_NAME(i32 %44)
  %46 = load i32, i32* @OFF, align 4
  %47 = call i32* @PDF_NAME(i32 %46)
  %48 = call i32 @pdf_dict_put(i32* %42, i32* %43, i32* %45, i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @Order, align 4
  %52 = call i32* @PDF_NAME(i32 %51)
  %53 = call i32* @pdf_dict_get(i32* %49, i32* %50, i32* %52)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @RBGroups, align 4
  %57 = call i32* @PDF_NAME(i32 %56)
  %58 = call i32* @pdf_dict_get(i32* %54, i32* %55, i32* %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @Configs, align 4
  %62 = call i32* @PDF_NAME(i32 %61)
  %63 = call i32* @pdf_dict_get(i32* %59, i32* %60, i32* %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %117

66:                                               ; preds = %41
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @pdf_array_len(i32* %67, i32* %68)
  store i32 %69, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %113, %66
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %70
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32* @pdf_array_get(i32* %75, i32* %76, i32 %77)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load i32*, i32** %3, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* @Order, align 4
  %85 = call i32* @PDF_NAME(i32 %84)
  %86 = call i32* @pdf_dict_get(i32* %82, i32* %83, i32* %85)
  %87 = icmp ne i32* %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load i32*, i32** %3, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* @Order, align 4
  %92 = call i32* @PDF_NAME(i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @pdf_dict_put(i32* %89, i32* %90, i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %88, %81, %74
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* @RBGroups, align 4
  %102 = call i32* @PDF_NAME(i32 %101)
  %103 = call i32* @pdf_dict_get(i32* %99, i32* %100, i32* %102)
  %104 = icmp ne i32* %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load i32*, i32** %3, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* @RBGroups, align 4
  %109 = call i32* @PDF_NAME(i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @pdf_dict_put(i32* %106, i32* %107, i32* %109, i32* %110)
  br label %112

112:                                              ; preds = %105, %98, %95
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %70

116:                                              ; preds = %70
  br label %117

117:                                              ; preds = %116, %41
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = call i32* @pdf_new_array(i32* %118, %struct.TYPE_9__* %119, i32 4)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = call i32* @pdf_new_array(i32* %121, %struct.TYPE_9__* %122, i32 4)
  store i32* %123, i32** %8, align 8
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %159, %117
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %125, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %124
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  store %struct.TYPE_8__* %140, %struct.TYPE_8__** %14, align 8
  %141 = load i32*, i32** %3, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @pdf_array_push(i32* %141, i32* %142, i32 %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %132
  %152 = load i32*, i32** %3, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @pdf_array_push(i32* %152, i32* %153, i32 %156)
  br label %158

158:                                              ; preds = %151, %132
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %124

162:                                              ; preds = %124
  %163 = load i32*, i32** %3, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @Order, align 4
  %166 = call i32* @PDF_NAME(i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @pdf_dict_put(i32* %163, i32* %164, i32* %166, i32* %167)
  %169 = load i32*, i32** %3, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* @ON, align 4
  %172 = call i32* @PDF_NAME(i32 %171)
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @pdf_dict_put(i32* %169, i32* %170, i32* %172, i32* %173)
  %175 = load i32*, i32** %3, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* @OFF, align 4
  %178 = call i32* @PDF_NAME(i32 %177)
  %179 = call i32 @pdf_dict_del(i32* %175, i32* %176, i32* %178)
  %180 = load i32*, i32** %3, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* @AS, align 4
  %183 = call i32* @PDF_NAME(i32 %182)
  %184 = call i32 @pdf_dict_del(i32* %180, i32* %181, i32* %183)
  %185 = load i32*, i32** %3, align 8
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* @Intent, align 4
  %188 = call i32* @PDF_NAME(i32 %187)
  %189 = load i32, i32* @View, align 4
  %190 = call i32* @PDF_NAME(i32 %189)
  %191 = call i32 @pdf_dict_put(i32* %185, i32* %186, i32* %188, i32* %190)
  %192 = load i32*, i32** %3, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* @Name, align 4
  %195 = call i32* @PDF_NAME(i32 %194)
  %196 = call i32 @pdf_dict_del(i32* %192, i32* %193, i32* %195)
  %197 = load i32*, i32** %3, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* @Creator, align 4
  %200 = call i32* @PDF_NAME(i32 %199)
  %201 = call i32 @pdf_dict_del(i32* %197, i32* %198, i32* %200)
  %202 = load i32*, i32** %3, align 8
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* @RBGroups, align 4
  %205 = call i32* @PDF_NAME(i32 %204)
  %206 = call i32 @pdf_dict_del(i32* %202, i32* %203, i32* %205)
  %207 = load i32*, i32** %3, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* @Locked, align 4
  %210 = call i32* @PDF_NAME(i32 %209)
  %211 = call i32 @pdf_dict_del(i32* %207, i32* %208, i32* %210)
  %212 = load i32*, i32** %3, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* @Configs, align 4
  %215 = call i32* @PDF_NAME(i32 %214)
  %216 = call i32 @pdf_dict_del(i32* %212, i32* %213, i32* %215)
  br label %217

217:                                              ; preds = %162, %40, %31, %22
  ret void
}

declare dso_local i32* @pdf_dict_getp(i32*, i32, i8*) #1

declare dso_local i32 @pdf_trailer(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32* @pdf_new_array(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @pdf_array_push(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
