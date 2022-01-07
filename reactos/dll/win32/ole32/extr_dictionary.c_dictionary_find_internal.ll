; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_find_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_find_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary_entry = type { %struct.dictionary_entry*, i32 }
%struct.dictionary = type { i64 (i8*, i32, i32)*, i32, %struct.dictionary_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dictionary_entry** (%struct.dictionary*, i8*)* @dictionary_find_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dictionary_entry** @dictionary_find_internal(%struct.dictionary* %0, i8* %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dictionary_entry**, align 8
  %6 = alloca %struct.dictionary_entry*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.dictionary_entry** null, %struct.dictionary_entry*** %5, align 8
  %7 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %8 = call i32 @assert(%struct.dictionary* %7)
  %9 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %10 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %9, i32 0, i32 2
  %11 = load %struct.dictionary_entry*, %struct.dictionary_entry** %10, align 8
  %12 = icmp ne %struct.dictionary_entry* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %15 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %14, i32 0, i32 0
  %16 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %19 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %18, i32 0, i32 2
  %20 = load %struct.dictionary_entry*, %struct.dictionary_entry** %19, align 8
  %21 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %24 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 %16(i8* %17, i32 %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %30 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %29, i32 0, i32 2
  store %struct.dictionary_entry** %30, %struct.dictionary_entry*** %5, align 8
  br label %31

31:                                               ; preds = %28, %13, %2
  %32 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %33 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %32, i32 0, i32 2
  %34 = load %struct.dictionary_entry*, %struct.dictionary_entry** %33, align 8
  store %struct.dictionary_entry* %34, %struct.dictionary_entry** %6, align 8
  br label %35

35:                                               ; preds = %67, %31
  %36 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %5, align 8
  %37 = icmp ne %struct.dictionary_entry** %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load %struct.dictionary_entry*, %struct.dictionary_entry** %6, align 8
  %40 = icmp ne %struct.dictionary_entry* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.dictionary_entry*, %struct.dictionary_entry** %6, align 8
  %43 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %42, i32 0, i32 0
  %44 = load %struct.dictionary_entry*, %struct.dictionary_entry** %43, align 8
  %45 = icmp ne %struct.dictionary_entry* %44, null
  br label %46

46:                                               ; preds = %41, %38, %35
  %47 = phi i1 [ false, %38 ], [ false, %35 ], [ %45, %41 ]
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %50 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %49, i32 0, i32 0
  %51 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.dictionary_entry*, %struct.dictionary_entry** %6, align 8
  %54 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %53, i32 0, i32 0
  %55 = load %struct.dictionary_entry*, %struct.dictionary_entry** %54, align 8
  %56 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %59 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 %51(i8* %52, i32 %57, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load %struct.dictionary_entry*, %struct.dictionary_entry** %6, align 8
  %65 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %64, i32 0, i32 0
  store %struct.dictionary_entry** %65, %struct.dictionary_entry*** %5, align 8
  br label %66

66:                                               ; preds = %63, %48
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.dictionary_entry*, %struct.dictionary_entry** %6, align 8
  %69 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %68, i32 0, i32 0
  %70 = load %struct.dictionary_entry*, %struct.dictionary_entry** %69, align 8
  store %struct.dictionary_entry* %70, %struct.dictionary_entry** %6, align 8
  br label %35

71:                                               ; preds = %46
  %72 = load %struct.dictionary_entry**, %struct.dictionary_entry*** %5, align 8
  ret %struct.dictionary_entry** %72
}

declare dso_local i32 @assert(%struct.dictionary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
