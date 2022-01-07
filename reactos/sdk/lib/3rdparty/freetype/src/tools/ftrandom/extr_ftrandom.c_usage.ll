; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/ftrandom/extr_ftrandom.c_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/ftrandom/extr_ftrandom.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_dir_list = common dso_local global i8** null, align 8
@default_ext_list = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [93 x i8] c"%s [options] -- Generate random erroneous fonts\0A  and attempt to parse them with FreeType.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"  --all                    All non-directory files are assumed to be fonts.\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"  --check-outlines         Make sure we can parse the outlines of each glyph.\0A\00", align 1
@.str.3 = private unnamed_addr constant [127 x i8] c"  --dir <path>             Append <path> to list of font search directories\0A                           (no recursive search).\0A\00", align 1
@.str.4 = private unnamed_addr constant [118 x i8] c"  --error-count <cnt>      Introduce <cnt> single byte errors into each font\0A                           (default: 1)\0A\00", align 1
@.str.5 = private unnamed_addr constant [131 x i8] c"  --error-fraction <frac>  Introduce <frac>*filesize single byte errors\0A                           into each font (default: 0.0).\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"  --ext <ext>              Add <ext> to list of extensions indicating fonts.\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"  --help                   Print this.\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"  --nohints                Turn off hinting.\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"  --rasterize              Attempt to rasterize each glyph.\0A\00", align 1
@.str.10 = private unnamed_addr constant [117 x i8] c"  --results <path>         Place the created test fonts into <path>\0A                           (default: `results')\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"  --size <float>           Use the given font size for the tests.\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"  --test <file>            Run a single test on an already existing file.\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Default font extensions:\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" .%s\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Default font directories:\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8**, i8*** @default_dir_list, align 8
  store i8** %7, i8*** %5, align 8
  %8 = load i8**, i8*** @default_ext_list, align 8
  store i8** %8, i8*** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.10, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %42

42:                                               ; preds = %46, %2
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i8**, i8*** %6, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %6, align 8
  %50 = load i8*, i8** %48, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %50)
  br label %42

52:                                               ; preds = %42
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %59

59:                                               ; preds = %63, %52
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %5, align 8
  %67 = load i8*, i8** %65, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %67)
  br label %59

69:                                               ; preds = %59
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
