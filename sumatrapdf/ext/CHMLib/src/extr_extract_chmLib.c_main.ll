; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_extract_chmLib.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_extract_chmLib.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32 }
%struct.extract_context = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"usage: %s <chmfile> <outdir>\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@CHM_ENUMERATE_ALL = common dso_local global i32 0, align 4
@_extract_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"   *** ERROR ***\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca %struct.extract_context, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call %struct.chmFile* @chm_open(i8* %20)
  store %struct.chmFile* %21, %struct.chmFile** %6, align 8
  %22 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %23 = icmp eq %struct.chmFile* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %17
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.extract_context, %struct.extract_context* %7, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %41 = load i32, i32* @CHM_ENUMERATE_ALL, align 4
  %42 = load i32, i32* @_extract_callback, align 4
  %43 = bitcast %struct.extract_context* %7 to i8*
  %44 = call i32 @chm_enumerate(%struct.chmFile* %40, i32 %41, i32 %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %31
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %31
  %49 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %50 = call i32 @chm_close(%struct.chmFile* %49)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.chmFile* @chm_open(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @chm_enumerate(%struct.chmFile*, i32, i32, i8*) #1

declare dso_local i32 @chm_close(%struct.chmFile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
