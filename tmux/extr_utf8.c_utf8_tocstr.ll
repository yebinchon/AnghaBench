; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_tocstr.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_tocstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8_tocstr(%struct.utf8_data* %0) #0 {
  %2 = alloca %struct.utf8_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.utf8_data* %0, %struct.utf8_data** %2, align 8
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load %struct.utf8_data*, %struct.utf8_data** %2, align 8
  %7 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %5
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.utf8_data*, %struct.utf8_data** %2, align 8
  %14 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  %17 = call i8* @xreallocarray(i8* %11, i64 %16, i32 1)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load %struct.utf8_data*, %struct.utf8_data** %2, align 8
  %22 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.utf8_data*, %struct.utf8_data** %2, align 8
  %25 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcpy(i8* %20, i32 %23, i64 %26)
  %28 = load %struct.utf8_data*, %struct.utf8_data** %2, align 8
  %29 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %10
  %34 = load %struct.utf8_data*, %struct.utf8_data** %2, align 8
  %35 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %34, i32 1
  store %struct.utf8_data* %35, %struct.utf8_data** %2, align 8
  br label %5

36:                                               ; preds = %5
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  %40 = call i8* @xreallocarray(i8* %37, i64 %39, i32 1)
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i8* @xreallocarray(i8*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
