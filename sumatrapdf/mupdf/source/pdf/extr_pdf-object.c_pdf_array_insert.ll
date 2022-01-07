; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_array_insert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_array_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not an array (%s)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_array_insert(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
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
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.TYPE_3__* @ARRAY(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23, %20
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %33 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %31, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @prepare_object_for_alteration(i32* %35, i32* %36, i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.TYPE_3__* @ARRAY(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = load i32*, i32** %6, align 8
  %45 = call %struct.TYPE_3__* @ARRAY(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call %struct.TYPE_3__* @ARRAY(i32* %51)
  %53 = call i32 @pdf_array_grow(i32* %50, %struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %49, %34
  %55 = load i32*, i32** %6, align 8
  %56 = call %struct.TYPE_3__* @ARRAY(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32*, i32** %6, align 8
  %64 = call %struct.TYPE_3__* @ARRAY(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32*, i32** %6, align 8
  %71 = call %struct.TYPE_3__* @ARRAY(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memmove(i32* %62, i32* %69, i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @pdf_keep_obj(i32* %80, i32* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = call %struct.TYPE_3__* @ARRAY(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %82, i32* %89, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = call %struct.TYPE_3__* @ARRAY(i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  ret void
}

declare dso_local i32 @RESOLVE(i32*) #1

declare dso_local i32 @OBJ_IS_ARRAY(i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @pdf_objkindstr(i32*) #1

declare dso_local %struct.TYPE_3__* @ARRAY(i32*) #1

declare dso_local i32 @prepare_object_for_alteration(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_array_grow(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @pdf_keep_obj(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
