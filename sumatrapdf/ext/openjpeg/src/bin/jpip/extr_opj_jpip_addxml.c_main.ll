; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_addxml.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_addxml.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.type = private unnamed_addr constant [5 x i8] c"xml \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"USAGE: %s modifing.jp2 adding.xml\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.type, i32 0, i32 0), i64 5, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @open_jp2file(i8* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %69

28:                                               ; preds = %20
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @read_xmlfile(i8* %31, i64* %9)
  store i8* %32, i8** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %69

36:                                               ; preds = %28
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = ashr i64 %39, 24
  %41 = and i64 %40, 255
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @fputc(i64 %41, i32* %42)
  %44 = load i64, i64* %10, align 8
  %45 = ashr i64 %44, 16
  %46 = and i64 %45, 255
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fputc(i64 %46, i32* %47)
  %49 = load i64, i64* %10, align 8
  %50 = ashr i64 %49, 8
  %51 = and i64 %50, 255
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @fputc(i64 %51, i32* %52)
  %54 = load i64, i64* %10, align 8
  %55 = and i64 %54, 255
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @fputc(i64 %55, i32* %56)
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @fwrite(i8* %58, i64 4, i32 1, i32* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @fwrite(i8* %61, i64 %62, i32 1, i32* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @fclose(i32* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %36, %35, %27, %14
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32* @open_jp2file(i8*) #2

declare dso_local i8* @read_xmlfile(i8*, i64*) #2

declare dso_local i32 @fputc(i64, i32*) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
