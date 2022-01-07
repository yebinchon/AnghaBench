; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_memstream.c_vlc_memstream_write.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_memstream.c_vlc_memstream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i64, i8*, i32 }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_memstream_write(%struct.vlc_memstream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.vlc_memstream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %11 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @add_overflow(i64 %12, i32 %14, i64* %8)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @add_overflow(i64 %19, i32 1, i64* %8)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %3
  br label %59

24:                                               ; preds = %18
  %25 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %26 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i8* @realloc(i8* %27, i64 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %59

36:                                               ; preds = %24
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %39 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %47 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %50 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %55 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %4, align 8
  br label %63

59:                                               ; preds = %35, %23
  %60 = load i32, i32* @EOF, align 4
  %61 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %62 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %59, %36
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @add_overflow(i64, i32, i64*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
