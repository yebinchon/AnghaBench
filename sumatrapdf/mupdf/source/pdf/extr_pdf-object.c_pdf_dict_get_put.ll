; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_get_put.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_get_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, i8* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a dict (%s)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"key is not a name (%s)\00", align 1
@PDF_FLAGS_SORTED = common dso_local global i32 0, align 4
@PDF_LIMIT = common dso_local global %struct.TYPE_26__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__**)* @pdf_dict_get_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dict_get_put(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_26__* %2, %struct.TYPE_26__* %3, %struct.TYPE_26__** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__** %4, %struct.TYPE_26__*** %10, align 8
  %13 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %14 = icmp ne %struct.TYPE_26__** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %16, align 8
  br label %17

17:                                               ; preds = %15, %5
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = call i32 @RESOLVE(%struct.TYPE_26__* %18)
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %21 = call i32 @OBJ_IS_DICT(%struct.TYPE_26__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %27 = call i32 @pdf_objkindstr(%struct.TYPE_26__* %26)
  %28 = call i32 @fz_throw(i32* %24, i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %31 = call i32 @OBJ_IS_NAME(%struct.TYPE_26__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %37 = call i32 @pdf_objkindstr(%struct.TYPE_26__* %36)
  %38 = call i32 @fz_throw(i32* %34, i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %41 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %40)
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 100
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PDF_FLAGS_SORTED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %55 = call i32 @pdf_sort_dict(i32* %53, %struct.TYPE_26__* %54)
  br label %56

56:                                               ; preds = %52, %45, %39
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** @PDF_LIMIT, align 8
  %59 = icmp ult %struct.TYPE_26__* %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %64 = call i32 @pdf_dict_find(i32* %61, %struct.TYPE_26__* %62, %struct.TYPE_26__* %63)
  store i32 %64, i32* %11, align 4
  br label %72

65:                                               ; preds = %56
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %70 = call i32 @pdf_to_name(i32* %68, %struct.TYPE_26__* %69)
  %71 = call i32 @pdf_dict_finds(i32* %66, %struct.TYPE_26__* %67, i32 %70)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %65, %60
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %76 = call i32 @prepare_object_for_alteration(i32* %73, %struct.TYPE_26__* %74, %struct.TYPE_26__* %75)
  %77 = load i32, i32* %11, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %131

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %82 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %81)
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %131

86:                                               ; preds = %79
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %88 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %87)
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %97 = icmp ne %struct.TYPE_26__* %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %86
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %100 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %99)
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  store %struct.TYPE_26__* %107, %struct.TYPE_26__** %12, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %110 = call i8* @pdf_keep_obj(i32* %108, %struct.TYPE_26__* %109)
  %111 = bitcast i8* %110 to %struct.TYPE_26__*
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %113 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %112)
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %119, align 8
  %120 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %121 = icmp ne %struct.TYPE_26__** %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %98
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %124 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  store %struct.TYPE_26__* %123, %struct.TYPE_26__** %124, align 8
  br label %129

125:                                              ; preds = %98
  %126 = load i32*, i32** %6, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %128 = call i32 @pdf_drop_obj(i32* %126, %struct.TYPE_26__* %127)
  br label %129

129:                                              ; preds = %125, %122
  br label %130

130:                                              ; preds = %129, %86
  br label %216

131:                                              ; preds = %79, %72
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %133 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %132)
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %137)
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %136, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %131
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %145 = call i32 @pdf_dict_grow(i32* %143, %struct.TYPE_26__* %144)
  br label %146

146:                                              ; preds = %142, %131
  %147 = load i32, i32* %11, align 4
  %148 = sub nsw i32 -1, %147
  store i32 %148, i32* %11, align 4
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @PDF_FLAGS_SORTED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %187

155:                                              ; preds = %146
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %156)
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %155
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %163 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %162)
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i64 %168
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %171 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %170)
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i64 %175
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %178 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %177)
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sub nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memmove(%struct.TYPE_25__* %169, %struct.TYPE_25__* %176, i32 %185)
  br label %187

187:                                              ; preds = %161, %155, %146
  %188 = load i32*, i32** %6, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %190 = call i8* @pdf_keep_obj(i32* %188, %struct.TYPE_26__* %189)
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %192 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %191)
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 1
  store i8* %190, i8** %198, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %201 = call i8* @pdf_keep_obj(i32* %199, %struct.TYPE_26__* %200)
  %202 = bitcast i8* %201 to %struct.TYPE_26__*
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %204 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %203)
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 0
  store %struct.TYPE_26__* %202, %struct.TYPE_26__** %210, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %212 = call %struct.TYPE_27__* @DICT(%struct.TYPE_26__* %211)
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %187, %130
  ret void
}

declare dso_local i32 @RESOLVE(%struct.TYPE_26__*) #1

declare dso_local i32 @OBJ_IS_DICT(%struct.TYPE_26__*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @pdf_objkindstr(%struct.TYPE_26__*) #1

declare dso_local i32 @OBJ_IS_NAME(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @DICT(%struct.TYPE_26__*) #1

declare dso_local i32 @pdf_sort_dict(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @pdf_dict_find(i32*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @pdf_dict_finds(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @pdf_to_name(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @prepare_object_for_alteration(i32*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i8* @pdf_keep_obj(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @pdf_drop_obj(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @pdf_dict_grow(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @memmove(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
