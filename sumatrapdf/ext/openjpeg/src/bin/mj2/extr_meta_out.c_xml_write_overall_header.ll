; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_overall_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_overall_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [61 x i8] c"  <JP2 BoxType=\22jP[space][space]\22 Signature=\220x0d0a870a\22 />\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"  <FileType BoxType=\22ftyp\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"    <Brand>%s</Brand>\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"    <MinorVersion>%u</MinorVersion>\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"    <CompatibilityList Count=\22%d\22>\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      <CompatibleBrand>%s</CompatibleBrand>\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"    </CompatibilityList>\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"  </FileType>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xml_write_overall_header(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [5 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %13, align 1
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %22 = call i32 @uint_to_chars(i32 %20, i8* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %56, %5
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %52 = call i32 @uint_to_chars(i32 %50, i8* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @xml_write_moov(i32* %64, i32* %65, %struct.TYPE_6__* %66, i32 %67, i32* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = call i32 @xml_write_free_and_skip(i32* %70, %struct.TYPE_6__* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = call i32 @xml_write_uuid(i32* %73, %struct.TYPE_6__* %74)
  ret i32 0
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @uint_to_chars(i32, i8*) #1

declare dso_local i32 @xml_write_moov(i32*, i32*, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @xml_write_free_and_skip(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @xml_write_uuid(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
