; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Usage: rsym <exefile> <symfile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"An error occured loading '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot open output file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @convert_path(i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @convert_path(i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %28 = call i32 @load_file(i8* %26, i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %17
  %39 = call i32 @ParsePEHeaders(%struct.TYPE_7__* %8)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @free(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, -1
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = call i32 @exit(i32 %49) #3
  unreachable

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @malloc(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memset(i32 %59, i32 0, i32 %63)
  %65 = call i32 @GeneratePData(%struct.TYPE_7__* %8)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32* @fopen(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %51
  %71 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @free(i32 %73)
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %51
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @WriteOutFile(i32* %77, %struct.TYPE_7__* %8)
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @fclose(i32* %79)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @convert_path(i8*) #1

declare dso_local i32 @load_file(i8*, i32*) #1

declare dso_local i32 @ParsePEHeaders(%struct.TYPE_7__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @GeneratePData(%struct.TYPE_7__*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @WriteOutFile(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
