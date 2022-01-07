; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i64, i32*, i8*, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dictionary* @dictionary_create(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dictionary*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dictionary*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.dictionary*
  %11 = load i32, i32* %6, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 (i8*, %struct.dictionary*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dictionary* %10, i32 %11, i8* %12)
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.dictionary* null, %struct.dictionary** %4, align 8
  br label %40

17:                                               ; preds = %3
  %18 = call i32 (...) @GetProcessHeap()
  %19 = call %struct.dictionary* @HeapAlloc(i32 %18, i32 0, i32 40)
  store %struct.dictionary* %19, %struct.dictionary** %8, align 8
  %20 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  %21 = icmp ne %struct.dictionary* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  %25 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %24, i32 0, i32 4
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  %28 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  %31 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  %33 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  %35 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %22, %17
  %37 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  %38 = call i32 (i8*, %struct.dictionary*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.dictionary* %37)
  %39 = load %struct.dictionary*, %struct.dictionary** %8, align 8
  store %struct.dictionary* %39, %struct.dictionary** %4, align 8
  br label %40

40:                                               ; preds = %36, %16
  %41 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  ret %struct.dictionary* %41
}

declare dso_local i32 @TRACE(i8*, %struct.dictionary*, ...) #1

declare dso_local %struct.dictionary* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
