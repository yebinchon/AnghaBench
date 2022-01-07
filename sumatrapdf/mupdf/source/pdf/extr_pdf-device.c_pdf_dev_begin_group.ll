; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_begin_group.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_begin_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ExtGState/BlendMode%d\00", align 1
@Type = common dso_local global i32 0, align 4
@ExtGState = common dso_local global i32 0, align 4
@BM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"/BlendMode%d gs /Fm%d Do\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32, i32, i32, float)* @pdf_dev_begin_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dev_begin_group(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca [32 x i8], align 16
  %23 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float %7, float* %16, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %17, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %18, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %31 = call i32 @pdf_dev_end_text(i32* %29, %struct.TYPE_8__* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load float, float* %16, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @pdf_dev_new_form(i32* %32, i32** %20, %struct.TYPE_8__* %33, i32 %34, i32 %35, i32 %36, float %37, i32* %38)
  store i32 %39, i32* %19, align 4
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @fz_snprintf(i8* %40, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %48 = call i32* @pdf_dict_getp(i32* %43, i32 %46, i8* %47)
  store i32* %48, i32** %23, align 8
  %49 = load i32*, i32** %23, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = call i32* @pdf_new_dict(i32* %52, i32* %53, i32 2)
  store i32* %54, i32** %23, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %23, align 8
  %57 = load i32, i32* @Type, align 4
  %58 = call i32 @PDF_NAME(i32 %57)
  %59 = load i32, i32* @ExtGState, align 4
  %60 = call i32 @PDF_NAME(i32 %59)
  %61 = call i32 @pdf_dict_put(i32* %55, i32* %56, i32 %58, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = load i32, i32* @BM, align 4
  %65 = call i32 @PDF_NAME(i32 %64)
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @fz_blendmode_name(i32 %66)
  %68 = call i32 @pdf_dict_put_name(i32* %62, i32* %63, i32 %65, i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %74 = load i32*, i32** %23, align 8
  %75 = call i32 @pdf_dict_putp_drop(i32* %69, i32 %72, i8* %73, i32* %74)
  br label %76

76:                                               ; preds = %51, %8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %78 = call %struct.TYPE_9__* @CURRENT_GSTATE(%struct.TYPE_8__* %77)
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %21, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @fz_append_printf(i32* %79, i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @fz_new_buffer(i32* %88, i32 1024)
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 @pdf_dev_push_new_buf(i32* %86, %struct.TYPE_8__* %87, i32 %89, i32* null, i32* %90)
  ret void
}

declare dso_local i32 @pdf_dev_end_text(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pdf_dev_new_form(i32*, i32**, %struct.TYPE_8__*, i32, i32, i32, float, i32*) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @pdf_dict_getp(i32*, i32, i8*) #1

declare dso_local i32* @pdf_new_dict(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put_name(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_blendmode_name(i32) #1

declare dso_local i32 @pdf_dict_putp_drop(i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @CURRENT_GSTATE(%struct.TYPE_8__*) #1

declare dso_local i32 @fz_append_printf(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @pdf_dev_push_new_buf(i32*, %struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @fz_new_buffer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
