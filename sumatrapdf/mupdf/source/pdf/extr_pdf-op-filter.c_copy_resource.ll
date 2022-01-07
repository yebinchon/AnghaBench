; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_copy_resource.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_copy_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*, i8*)* @copy_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_resource(i32* %0, %struct.TYPE_3__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %4
  br label %63

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @pdf_dict_get(i32* %21, i32 %24, i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32* @pdf_dict_gets(i32* %27, i32* %28, i8* %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %20
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @pdf_dict_get(i32* %34, i32 %37, i32* %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pdf_get_bound_document(i32* %44, i32 %47)
  %49 = call i32* @pdf_new_dict(i32* %43, i32 %48, i32 1)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @pdf_dict_put_drop(i32* %50, i32 %53, i32* %54, i32* %55)
  br label %57

57:                                               ; preds = %42, %33
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @pdf_dict_putp(i32* %58, i32* %59, i8* %60, i32* %61)
  br label %63

63:                                               ; preds = %19, %57, %20
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32, i32*) #1

declare dso_local i32* @pdf_dict_gets(i32*, i32*, i8*) #1

declare dso_local i32* @pdf_new_dict(i32*, i32, i32) #1

declare dso_local i32 @pdf_get_bound_document(i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32, i32*, i32*) #1

declare dso_local i32 @pdf_dict_putp(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
