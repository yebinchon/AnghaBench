; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_memchr.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_memchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @io_memchr(%struct.buffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.buffer* %0, %struct.buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.buffer*, %struct.buffer** %5, align 8
  %10 = icmp ne %struct.buffer* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.buffer*, %struct.buffer** %5, align 8
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ult i8* %12, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load %struct.buffer*, %struct.buffer** %5, align 8
  %19 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.buffer*, %struct.buffer** %5, align 8
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ule i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17, %11, %3
  store i8* null, i8** %4, align 8
  br label %54

29:                                               ; preds = %17
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.buffer*, %struct.buffer** %5, align 8
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.buffer*, %struct.buffer** %5, align 8
  %38 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %36 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sub nsw i64 %35, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @memchr(i8* %30, i32 %31, i32 %44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  br label %52

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i8* [ %50, %48 ], [ null, %51 ]
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %52, %28
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i8* @memchr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
