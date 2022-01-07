; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_enumerate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_dictionary.c_dictionary_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32, %struct.dictionary_entry* }
%struct.dictionary_entry = type { i32, i32, %struct.dictionary_entry* }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %p, %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dictionary_enumerate(%struct.dictionary* %0, i32 (i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dictionary*, align 8
  %5 = alloca i32 (i32, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dictionary_entry*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %4, align 8
  store i32 (i32, i32, i32, i8*)* %1, i32 (i32, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %9 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dictionary* %8, i32 (i32, i32, i32, i8*)* %9, i8* %10)
  %12 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %13 = icmp ne %struct.dictionary* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %46

15:                                               ; preds = %3
  %16 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %5, align 8
  %17 = icmp ne i32 (i32, i32, i32, i8*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %46

19:                                               ; preds = %15
  %20 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %21 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %20, i32 0, i32 1
  %22 = load %struct.dictionary_entry*, %struct.dictionary_entry** %21, align 8
  store %struct.dictionary_entry* %22, %struct.dictionary_entry** %7, align 8
  br label %23

23:                                               ; preds = %42, %19
  %24 = load %struct.dictionary_entry*, %struct.dictionary_entry** %7, align 8
  %25 = icmp ne %struct.dictionary_entry* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %5, align 8
  %28 = load %struct.dictionary_entry*, %struct.dictionary_entry** %7, align 8
  %29 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dictionary_entry*, %struct.dictionary_entry** %7, align 8
  %32 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %35 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 %27(i32 %30, i32 %33, i32 %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  br label %46

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.dictionary_entry*, %struct.dictionary_entry** %7, align 8
  %44 = getelementptr inbounds %struct.dictionary_entry, %struct.dictionary_entry* %43, i32 0, i32 2
  %45 = load %struct.dictionary_entry*, %struct.dictionary_entry** %44, align 8
  store %struct.dictionary_entry* %45, %struct.dictionary_entry** %7, align 8
  br label %23

46:                                               ; preds = %14, %18, %40, %23
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.dictionary*, i32 (i32, i32, i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
