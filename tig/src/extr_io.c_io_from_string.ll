; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_from_string.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_from_string(%struct.io* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.io* %0, %struct.io** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.io*, %struct.io** %4, align 8
  %10 = call i32 @io_init(%struct.io* %9)
  %11 = load %struct.io*, %struct.io** %4, align 8
  %12 = getelementptr inbounds %struct.io, %struct.io* %11, i32 0, i32 3
  %13 = load %struct.io*, %struct.io** %4, align 8
  %14 = getelementptr inbounds %struct.io, %struct.io* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @io_realloc_buf(i32* %12, i64 %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.io*, %struct.io** %4, align 8
  %23 = getelementptr inbounds %struct.io, %struct.io* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.io*, %struct.io** %4, align 8
  %25 = getelementptr inbounds %struct.io, %struct.io* %24, i32 0, i32 1
  store i64 %21, i64* %25, align 8
  %26 = load %struct.io*, %struct.io** %4, align 8
  %27 = getelementptr inbounds %struct.io, %struct.io* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.io*, %struct.io** %4, align 8
  %30 = getelementptr inbounds %struct.io, %struct.io* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.io*, %struct.io** %4, align 8
  %32 = getelementptr inbounds %struct.io, %struct.io* %31, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = load %struct.io*, %struct.io** %4, align 8
  %34 = getelementptr inbounds %struct.io, %struct.io* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @strncpy(i32 %35, i8* %36, i64 %37)
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %20, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @io_init(%struct.io*) #1

declare dso_local i32 @io_realloc_buf(i32*, i64, i64) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
