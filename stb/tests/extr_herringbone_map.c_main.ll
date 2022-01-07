; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_herringbone_map.c_main.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_herringbone_map.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Usage: herringbone_map {inputfile} {output-width} {output-height} {outputfile}\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't open input file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %88

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 4
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @stbi_load(i8* %35, i32* %13, i32* %14, i32 0, i32 3)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %20
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %46, 3
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @stbhw_build_tileset_from_image(%struct.TYPE_9__* %12, i8* %45, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @stderr, align 4
  %54 = call i8* (...) @stbhw_get_last_error()
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  store i32 1, i32* %3, align 4
  br label %88

56:                                               ; preds = %44
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 %59, %60
  %62 = mul nsw i32 %61, 3
  %63 = call i8* @malloc(i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, 3
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @stbhw_generate_image(%struct.TYPE_9__* %12, i32* null, i8* %64, i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* (...) @stbhw_get_last_error()
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  store i32 1, i32* %3, align 4
  br label %88

75:                                               ; preds = %56
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 4
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 %82, 3
  %84 = call i32 @stbi_write_png(i8* %78, i32 %79, i32 %80, i32 3, i8* %81, i32 %83)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @free(i8* %85)
  %87 = call i32 @stbhw_free_tileset(%struct.TYPE_9__* %12)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %75, %71, %52, %17
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @stbi_load(i8*, i32*, i32*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @stbhw_build_tileset_from_image(%struct.TYPE_9__*, i8*, i32, i32, i32) #1

declare dso_local i8* @stbhw_get_last_error(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @stbhw_generate_image(%struct.TYPE_9__*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @stbi_write_png(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @stbhw_free_tileset(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
