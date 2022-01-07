; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_find.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32 }
%struct.dictionary_entry = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"(%p, %p, %p)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"returning %d (%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dictionary_find(%struct.dictionary* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dictionary*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dictionary_entry**, align 8
  %9 = alloca i32, align 4
  store %struct.dictionary* %0, %struct.dictionary** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.dictionary*, %struct.dictionary** %5, align 8
  %12 = ptrtoint %struct.dictionary* %11 to i32
  %13 = load i8*, i8** %6, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 (i8*, i32, i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13, i8** %14)
  %16 = load %struct.dictionary*, %struct.dictionary** %5, align 8
  %17 = icmp ne %struct.dictionary* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load i8**, i8*** %7, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %43

25:                                               ; preds = %20
  %26 = load %struct.dictionary*, %struct.dictionary** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call %struct.dictionary_entry** @dictionary_find_internal(%struct.dictionary* %26, i8* %27)
  store %struct.dictionary_entry** %28, %struct.dictionary_entry*** %8, align 8
  %29 = icmp ne %struct.dictionary_entry** %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %8, align 8
  %32 = load %struct.dictionary_entry*, %struct.dictionary_entry** %31, align 8
  %33 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %9, align 4
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %37, %23, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @TRACE(i8*, i32, i8*, ...) #1

declare dso_local %struct.dictionary_entry** @dictionary_find_internal(%struct.dictionary*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
