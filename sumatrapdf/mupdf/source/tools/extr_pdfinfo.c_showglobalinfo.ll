; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfinfo.c_showglobalinfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfinfo.c_showglobalinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"\0APDF-%d.%d\0A\00", align 1
@Info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Info object (%d 0 R):\0A\00", align 1
@Encrypt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\0AEncryption object (%d 0 R):\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\0APages: %d\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @showglobalinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showglobalinfo(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @pdf_version(i32* %15, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %20, 10
  %22 = load i32, i32* %8, align 4
  %23 = srem i32 %22, 10
  %24 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %18, i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @pdf_trailer(i32* %26, i32* %27)
  %29 = load i32, i32* @Info, align 4
  %30 = call i32 @PDF_NAME(i32 %29)
  %31 = call i32* @pdf_dict_get(i32* %25, i32 %28, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @pdf_to_num(i32* %37, i32* %38)
  %40 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %35, i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @pdf_resolve_indirect(i32* %43, i32* %44)
  %46 = call i32 @pdf_print_obj(i32* %41, i32* %42, i32 %45, i32 1, i32 1)
  br label %47

47:                                               ; preds = %34, %2
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @pdf_trailer(i32* %49, i32* %50)
  %52 = load i32, i32* @Encrypt, align 4
  %53 = call i32 @PDF_NAME(i32 %52)
  %54 = call i32* @pdf_dict_get(i32* %48, i32 %51, i32 %53)
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @pdf_to_num(i32* %60, i32* %61)
  %63 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %58, i32* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @pdf_resolve_indirect(i32* %66, i32* %67)
  %69 = call i32 @pdf_print_obj(i32* %64, i32* %65, i32 %68, i32 1, i32 1)
  br label %70

70:                                               ; preds = %57, %47
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32*, i32*, i8*, i32, ...) @fz_write_printf(i32* %71, i32* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  ret void
}

declare dso_local i32 @pdf_version(i32*, i32*) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, i32, ...) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_trailer(i32*, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32 @pdf_print_obj(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pdf_resolve_indirect(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
