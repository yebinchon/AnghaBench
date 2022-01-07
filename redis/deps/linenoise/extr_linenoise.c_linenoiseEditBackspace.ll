; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseEditBackspace.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseEditBackspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linenoiseEditBackspace(%struct.linenoiseState* %0) #0 {
  %2 = alloca %struct.linenoiseState*, align 8
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %3 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %4 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %1
  %8 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %9 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %7
  %13 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %14 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %17 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %22 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %25 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %29 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %32 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memmove(i8* %20, i8* %27, i32 %35)
  %37 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %38 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %46 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %49 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %53 = call i32 @refreshLine(%struct.linenoiseState* %52)
  br label %54

54:                                               ; preds = %12, %7, %1
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
