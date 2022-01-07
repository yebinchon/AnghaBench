; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_array_put.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_array_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not an array (%s)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_array_put(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @RESOLVE(i32* %9)
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @OBJ_IS_ARRAY(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @pdf_objkindstr(i32* %17)
  %19 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %15, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_2__* @ARRAY(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @pdf_array_push(i32* %28, i32* %29, i32* %30)
  br label %71

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.TYPE_2__* @ARRAY(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %32
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %45 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %43, i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @prepare_object_for_alteration(i32* %47, i32* %48, i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call %struct.TYPE_2__* @ARRAY(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pdf_drop_obj(i32* %51, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @pdf_keep_obj(i32* %61, i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call %struct.TYPE_2__* @ARRAY(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %63, i32* %70, align 4
  br label %71

71:                                               ; preds = %46, %27
  ret void
}

declare dso_local i32 @RESOLVE(i32*) #1

declare dso_local i32 @OBJ_IS_ARRAY(i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @pdf_objkindstr(i32*) #1

declare dso_local %struct.TYPE_2__* @ARRAY(i32*) #1

declare dso_local i32 @pdf_array_push(i32*, i32*, i32*) #1

declare dso_local i32 @prepare_object_for_alteration(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32) #1

declare dso_local i32 @pdf_keep_obj(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
