; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_encoding_iconv.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_encoding_iconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i8*, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @encoding_iconv(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.buffer, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i8* @strndup(i8* %10, i64 %11)
  store i8* %12, i8** %7, align 8
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 2
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @encoding_convert_string(i32 %22, %struct.buffer* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  br label %30

28:                                               ; preds = %21, %3
  %29 = load i8*, i8** %5, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i8* [ %27, %25 ], [ %29, %28 ]
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  br label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** %9, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8* [ %38, %37 ], [ %40, %39 ]
  ret i8* %42
}

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i64 @encoding_convert_string(i32, %struct.buffer*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
