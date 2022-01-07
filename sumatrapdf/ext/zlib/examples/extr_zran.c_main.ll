; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_zran.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_zran.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.access = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHUNK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"usage: zran file.gz\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"zran: could not open %s for reading\0A\00", align 1
@SPAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"zran: out of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"zran: compressed data error in %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"zran: read error on %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"zran: error %d while building index\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"zran: built index with %d access points\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"zran: extraction failed: %s error\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"input corrupted\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"zran: extracted %d bytes at %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.access*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.access* null, %struct.access** %9, align 8
  %13 = load i32, i32* @CHUNK, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

35:                                               ; preds = %22
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @SPAN, align 4
  %38 = call i32 @build_index(i32* %36, i32 %37, %struct.access** %9)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %60 [
    i32 128, label %45
    i32 130, label %48
    i32 129, label %54
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %64

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  br label %64

54:                                               ; preds = %41
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  br label %64

60:                                               ; preds = %41
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %54, %48, %45
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

65:                                               ; preds = %35
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load %struct.access*, %struct.access** %9, align 8
  %70 = getelementptr inbounds %struct.access, %struct.access* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.access*, %struct.access** %9, align 8
  %73 = getelementptr inbounds %struct.access, %struct.access* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 1
  %81 = sdiv i32 %80, 3
  store i32 %81, i32* %7, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.access*, %struct.access** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CHUNK, align 4
  %86 = call i32 @extract(i32* %82, %struct.access* %83, i32 %84, i8* %16, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %65
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 128
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %94)
  br label %104

96:                                               ; preds = %65
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fwrite(i8* %16, i32 1, i32 %97, i32 %98)
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %89
  %105 = load %struct.access*, %struct.access** %9, align 8
  %106 = call i32 @free_index(%struct.access* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @fclose(i32* %107)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %104, %64, %29, %19
  %110 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @build_index(i32*, i32, %struct.access**) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @extract(i32*, %struct.access*, i32, i8*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #2

declare dso_local i32 @free_index(%struct.access*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
