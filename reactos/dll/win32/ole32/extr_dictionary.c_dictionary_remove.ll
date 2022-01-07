; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_remove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32, i32, i32 (i32, i32, i32)* }
%struct.dictionary_entry = type { %struct.dictionary_entry*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"(%p, %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dictionary_remove(%struct.dictionary* %0, i8* %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dictionary_entry**, align 8
  %6 = alloca %struct.dictionary_entry*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.dictionary* %7, i8* %8)
  %10 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %11 = icmp ne %struct.dictionary* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.dictionary_entry** @dictionary_find_internal(%struct.dictionary* %14, i8* %15)
  store %struct.dictionary_entry** %16, %struct.dictionary_entry*** %5, align 8
  %17 = icmp ne %struct.dictionary_entry** %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %13
  %19 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %5, align 8
  %20 = load %struct.dictionary_entry*, %struct.dictionary_entry** %19, align 8
  store %struct.dictionary_entry* %20, %struct.dictionary_entry** %6, align 8
  %21 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %22 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %21, i32 0, i32 2
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32)* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %27 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %26, i32 0, i32 2
  %28 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %27, align 8
  %29 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %5, align 8
  %30 = load %struct.dictionary_entry*, %struct.dictionary_entry** %29, align 8
  %31 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %5, align 8
  %34 = load %struct.dictionary_entry*, %struct.dictionary_entry** %33, align 8
  %35 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %38 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %28(i32 %32, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %25, %18
  %42 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %5, align 8
  %43 = load %struct.dictionary_entry*, %struct.dictionary_entry** %42, align 8
  %44 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %43, i32 0, i32 0
  %45 = load %struct.dictionary_entry*, %struct.dictionary_entry** %44, align 8
  %46 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %5, align 8
  store %struct.dictionary_entry* %45, %struct.dictionary_entry** %46, align 8
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.dictionary_entry*, %struct.dictionary_entry** %6, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.dictionary_entry* %48)
  %50 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %51 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %12, %41, %13
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.dictionary*, i8*) #1

declare dso_local %struct.dictionary_entry** @dictionary_find_internal(%struct.dictionary*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.dictionary_entry*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
