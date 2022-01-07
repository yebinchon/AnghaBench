; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pclm.c_pclm_drop_band_writer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pclm.c_pclm_drop_band_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8**, i8**, i8**, i8**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [50 x i8] c"1 0 obj\0A<<\0A/Type /Catalog\0A/Pages 2 0 R\0A>>\0Aendobj\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"2 0 obj\0A<<\0A/Count %d\0A/Kids [ \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d 0 R \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"]\0A/Type /Pages\0A>>\0Aendobj\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"xref\0A0 %d\0A0000000000 65535 f \0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%010zd 00000 n \0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"trailer\0A<<\0A/Size %d\0A/Root 1 0 R\0A>>\0Astartxref\0A%ld\0A%%%%EOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pclm_drop_band_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pclm_drop_band_writer(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %104

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @fz_tell_output(i32* %20, i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* %22, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %27, i32* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* @fz_tell_output(i32* %30, i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  store i8* %32, i8** %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %37, i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %60, %19
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %50, i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @fz_write_string(i32* %64, i32* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i8* @fz_tell_output(i32* %67, i32* %68)
  store i8* %69, i8** %8, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %70, i32* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %93, %63
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i32*, i32** %3, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %83, i32* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load i32*, i32** %3, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %97, i32* %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %101, i8* %102)
  br label %104

104:                                              ; preds = %96, %2
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 6
  %108 = load i8**, i8*** %107, align 8
  %109 = call i32 @fz_free(i32* %105, i8** %108)
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i8**, i8*** %112, align 8
  %114 = call i32 @fz_free(i32* %110, i8** %113)
  %115 = load i32*, i32** %3, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i8**, i8*** %117, align 8
  %119 = call i32 @fz_free(i32* %115, i8** %118)
  %120 = load i32*, i32** %3, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i8**, i8*** %122, align 8
  %124 = call i32 @fz_free(i32* %120, i8** %123)
  ret void
}

declare dso_local i8* @fz_tell_output(i32*, i32*) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

declare dso_local i32 @fz_free(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
