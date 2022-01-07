; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_dels.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_dels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a dict (%s)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"key is null\00", align 1
@PDF_FLAGS_SORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_dict_dels(i32* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @RESOLVE(%struct.TYPE_12__* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = call i32 @OBJ_IS_DICT(%struct.TYPE_12__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @pdf_objkindstr(%struct.TYPE_12__* %16)
  %18 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %25 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %23, i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = call i32 @prepare_object_for_alteration(i32* %27, %struct.TYPE_12__* %28, i32* null)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @pdf_dict_finds(i32* %30, %struct.TYPE_12__* %31, i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %90

36:                                               ; preds = %26
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = call %struct.TYPE_13__* @DICT(%struct.TYPE_12__* %38)
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pdf_drop_obj(i32* %37, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call %struct.TYPE_13__* @DICT(%struct.TYPE_12__* %49)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pdf_drop_obj(i32* %48, i32 %57)
  %59 = load i32, i32* @PDF_FLAGS_SORTED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = call %struct.TYPE_13__* @DICT(%struct.TYPE_12__* %65)
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = call %struct.TYPE_13__* @DICT(%struct.TYPE_12__* %72)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call %struct.TYPE_13__* @DICT(%struct.TYPE_12__* %76)
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %81
  %83 = bitcast %struct.TYPE_11__* %71 to i8*
  %84 = bitcast %struct.TYPE_11__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 8, i1 false)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = call %struct.TYPE_13__* @DICT(%struct.TYPE_12__* %85)
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %36, %26
  ret void
}

declare dso_local i32 @RESOLVE(%struct.TYPE_12__*) #1

declare dso_local i32 @OBJ_IS_DICT(%struct.TYPE_12__*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @pdf_objkindstr(%struct.TYPE_12__*) #1

declare dso_local i32 @prepare_object_for_alteration(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @pdf_dict_finds(i32*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @DICT(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
