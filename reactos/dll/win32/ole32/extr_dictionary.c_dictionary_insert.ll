; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_insert.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32, %struct.dictionary_entry*, i32, i32 (i8*, i8*, i32)* }
%struct.dictionary_entry = type { %struct.dictionary_entry*, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %p, %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dictionary_insert(%struct.dictionary* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.dictionary*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dictionary_entry**, align 8
  %8 = alloca %struct.dictionary_entry*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dictionary* %9, i8* %10, i8* %11)
  %13 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %14 = icmp ne %struct.dictionary* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %76

16:                                               ; preds = %3
  %17 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.dictionary_entry** @dictionary_find_internal(%struct.dictionary* %17, i8* %18)
  store %struct.dictionary_entry** %19, %struct.dictionary_entry*** %7, align 8
  %20 = icmp ne %struct.dictionary_entry** %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %23 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %22, i32 0, i32 3
  %24 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %23, align 8
  %25 = icmp ne i32 (i8*, i8*, i32)* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %28 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %27, i32 0, i32 3
  %29 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %28, align 8
  %30 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %7, align 8
  %31 = load %struct.dictionary_entry*, %struct.dictionary_entry** %30, align 8
  %32 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %7, align 8
  %35 = load %struct.dictionary_entry*, %struct.dictionary_entry** %34, align 8
  %36 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %39 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %29(i8* %33, i8* %37, i32 %40)
  br label %42

42:                                               ; preds = %26, %21
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %7, align 8
  %45 = load %struct.dictionary_entry*, %struct.dictionary_entry** %44, align 8
  %46 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %45, i32 0, i32 2
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %7, align 8
  %49 = load %struct.dictionary_entry*, %struct.dictionary_entry** %48, align 8
  %50 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  br label %76

51:                                               ; preds = %16
  %52 = call i32 (...) @GetProcessHeap()
  %53 = call %struct.dictionary_entry* @HeapAlloc(i32 %52, i32 0, i32 24)
  store %struct.dictionary_entry* %53, %struct.dictionary_entry** %8, align 8
  %54 = load %struct.dictionary_entry*, %struct.dictionary_entry** %8, align 8
  %55 = icmp ne %struct.dictionary_entry* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %76

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.dictionary_entry*, %struct.dictionary_entry** %8, align 8
  %60 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.dictionary_entry*, %struct.dictionary_entry** %8, align 8
  %63 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %65 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %64, i32 0, i32 1
  %66 = load %struct.dictionary_entry*, %struct.dictionary_entry** %65, align 8
  %67 = load %struct.dictionary_entry*, %struct.dictionary_entry** %8, align 8
  %68 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %67, i32 0, i32 0
  store %struct.dictionary_entry* %66, %struct.dictionary_entry** %68, align 8
  %69 = load %struct.dictionary_entry*, %struct.dictionary_entry** %8, align 8
  %70 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %71 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %70, i32 0, i32 1
  store %struct.dictionary_entry* %69, %struct.dictionary_entry** %71, align 8
  %72 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %73 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %15, %56, %57, %42
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.dictionary*, i8*, i8*) #1

declare dso_local %struct.dictionary_entry** @dictionary_find_internal(%struct.dictionary*, i8*) #1

declare dso_local %struct.dictionary_entry* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
