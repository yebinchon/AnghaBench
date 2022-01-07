; ModuleID = '/home/carl/AnghaBench/tig/src/extr_parse.c_parse_blame_header.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_parse.c_parse_blame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_header = type { i64, i64, i64, i32 }

@SIZEOF_REV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_blame_header(%struct.blame_header* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blame_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.blame_header* %0, %struct.blame_header** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* @SIZEOF_REV, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = getelementptr inbounds i8, i8* %12, i64 -2
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i32, i32* @SIZEOF_REV, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 32
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %55

25:                                               ; preds = %18
  %26 = load %struct.blame_header*, %struct.blame_header** %5, align 8
  %27 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @SIZEOF_REV, align 4
  %31 = call i32 @string_ncopy(i32 %28, i8* %29, i32 %30)
  %32 = load %struct.blame_header*, %struct.blame_header** %5, align 8
  %33 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %32, i32 0, i32 0
  %34 = call i32 @parse_number(i8** %8, i64* %33, i32 1, i64 9999999)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %25
  %37 = load %struct.blame_header*, %struct.blame_header** %5, align 8
  %38 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %37, i32 0, i32 1
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @parse_number(i8** %8, i64* %38, i32 1, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.blame_header*, %struct.blame_header** %5, align 8
  %44 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %43, i32 0, i32 2
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.blame_header*, %struct.blame_header** %5, align 8
  %47 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = add i64 %49, 1
  %51 = call i32 @parse_number(i8** %8, i64* %44, i32 1, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42, %36, %25
  store i32 0, i32* %4, align 4
  br label %55

54:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53, %24
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_ncopy(i32, i8*, i32) #1

declare dso_local i32 @parse_number(i8**, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
