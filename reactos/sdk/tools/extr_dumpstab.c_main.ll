; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/extr_dumpstab.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/extr_dumpstab.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Usage: dumpstabs <exefile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"An error occured loading '%s'\0A\00", align 1
@IMAGE_DOS_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Input file is not a PE image.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 2, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @convert_path(i8* %27)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i8* @load_file(i8* %29, i64* %16)
  store i8* %30, i8** %17, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %24
  %39 = load i8*, i8** %17, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %6, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IMAGE_DOS_MAGIC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %38
  %52 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i8*, i8** %17, align 8
  %54 = call i32 @free(i8* %53)
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %46
  %57 = load i8*, i8** %17, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  %63 = bitcast i8* %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %7, align 8
  %64 = call i32 @assert(i32 1)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 1
  %67 = bitcast %struct.TYPE_7__* %66 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %8, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = bitcast %struct.TYPE_6__* %71 to i8*
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = ptrtoint i8* %77 to i64
  store i64 %78, i64* %9, align 8
  %79 = load i8*, i8** %17, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @GetStabInfo(i8* %79, %struct.TYPE_7__* %80, i64 %81, i32* %12, i8** %11, i32* %14, i8** %13)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %56
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @free(i8* %85)
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %56
  %89 = load i32, i32* %12, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @IterateStabs(i32 %89, i8* %90, i32 %91, i8* %92, i32 %93, %struct.TYPE_7__* %94, i64 %95)
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @free(i8* %97)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @convert_path(i8*) #1

declare dso_local i8* @load_file(i8*, i64*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GetStabInfo(i8*, %struct.TYPE_7__*, i64, i32*, i8**, i32*, i8**) #1

declare dso_local i32 @IterateStabs(i32, i8*, i32, i8*, i32, %struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
