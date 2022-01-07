; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_array_push.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_array_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not an array (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_array_push(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @RESOLVE(i32* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @OBJ_IS_ARRAY(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @pdf_objkindstr(i32* %15)
  %17 = call i32 @fz_throw(i32* %13, i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @prepare_object_for_alteration(i32* %19, i32* %20, i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_3__* @ARRAY(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = load i32*, i32** %5, align 8
  %29 = call %struct.TYPE_3__* @ARRAY(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_3__* @ARRAY(i32* %35)
  %37 = call i32 @pdf_array_grow(i32* %34, %struct.TYPE_3__* %36)
  br label %38

38:                                               ; preds = %33, %18
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @pdf_keep_obj(i32* %39, i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call %struct.TYPE_3__* @ARRAY(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call %struct.TYPE_3__* @ARRAY(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %41, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call %struct.TYPE_3__* @ARRAY(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  ret void
}

declare dso_local i32 @RESOLVE(i32*) #1

declare dso_local i32 @OBJ_IS_ARRAY(i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @pdf_objkindstr(i32*) #1

declare dso_local i32 @prepare_object_for_alteration(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @ARRAY(i32*) #1

declare dso_local i32 @pdf_array_grow(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @pdf_keep_obj(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
