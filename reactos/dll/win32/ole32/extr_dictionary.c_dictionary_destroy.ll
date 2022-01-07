; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32, i32, i32, i32 (i32, i32, i32)*, %struct.dictionary*, %struct.dictionary* }
%struct.dictionary_entry = type { i32, i32, i32, i32 (i32, i32, i32)*, %struct.dictionary_entry*, %struct.dictionary_entry* }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dictionary_destroy(%struct.dictionary* %0) #0 {
  %2 = alloca %struct.dictionary*, align 8
  %3 = alloca %struct.dictionary_entry*, align 8
  %4 = alloca %struct.dictionary_entry*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %2, align 8
  %5 = load %struct.dictionary*, %struct.dictionary** %2, align 8
  %6 = bitcast %struct.dictionary* %5 to %struct.dictionary_entry*
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.dictionary_entry* %6)
  %8 = load %struct.dictionary*, %struct.dictionary** %2, align 8
  %9 = icmp ne %struct.dictionary* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = load %struct.dictionary*, %struct.dictionary** %2, align 8
  %12 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %11, i32 0, i32 5
  %13 = load %struct.dictionary*, %struct.dictionary** %12, align 8
  %14 = bitcast %struct.dictionary* %13 to %struct.dictionary_entry*
  store %struct.dictionary_entry* %14, %struct.dictionary_entry** %3, align 8
  br label %15

15:                                               ; preds = %40, %10
  %16 = load %struct.dictionary_entry*, %struct.dictionary_entry** %3, align 8
  %17 = icmp ne %struct.dictionary_entry* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load %struct.dictionary_entry*, %struct.dictionary_entry** %3, align 8
  %20 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %19, i32 0, i32 4
  %21 = load %struct.dictionary_entry*, %struct.dictionary_entry** %20, align 8
  store %struct.dictionary_entry* %21, %struct.dictionary_entry** %4, align 8
  %22 = load %struct.dictionary*, %struct.dictionary** %2, align 8
  %23 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %22, i32 0, i32 3
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32, i32)* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load %struct.dictionary*, %struct.dictionary** %2, align 8
  %28 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %27, i32 0, i32 3
  %29 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %28, align 8
  %30 = load %struct.dictionary_entry*, %struct.dictionary_entry** %3, align 8
  %31 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dictionary_entry*, %struct.dictionary_entry** %3, align 8
  %34 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dictionary*, %struct.dictionary** %2, align 8
  %37 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %29(i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %26, %18
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load %struct.dictionary_entry*, %struct.dictionary_entry** %3, align 8
  %43 = call i32 @HeapFree(i32 %41, i32 0, %struct.dictionary_entry* %42)
  %44 = load %struct.dictionary_entry*, %struct.dictionary_entry** %4, align 8
  store %struct.dictionary_entry* %44, %struct.dictionary_entry** %3, align 8
  br label %15

45:                                               ; preds = %15
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load %struct.dictionary*, %struct.dictionary** %2, align 8
  %48 = bitcast %struct.dictionary* %47 to %struct.dictionary_entry*
  %49 = call i32 @HeapFree(i32 %46, i32 0, %struct.dictionary_entry* %48)
  br label %50

50:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.dictionary_entry*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.dictionary_entry*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
