; ModuleID = '/home/carl/AnghaBench/streem/src/extr_string.c_strm_str_cstr.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_string.c_strm_str_cstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_string = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strm_str_cstr(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.strm_string*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @strm_value_tag(i32 %8)
  switch i32 %9, label %41 [
    i32 129, label %10
    i32 131, label %26
    i32 128, label %34
    i32 130, label %34
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64* @VAL_PTR(i32 %11)
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64* @VAL_PTR(i32 %16)
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memcpy(i8* %15, i64* %18, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %3, align 8
  br label %42

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64* @VAL_PTR(i32 %28)
  %30 = call i32 @memcpy(i8* %27, i64* %29, i32 6)
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 6
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %3, align 8
  br label %42

34:                                               ; preds = %2, %2
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @strm_value_vptr(i32 %35)
  %37 = inttoptr i64 %36 to %struct.strm_string*
  store %struct.strm_string* %37, %struct.strm_string** %7, align 8
  %38 = load %struct.strm_string*, %struct.strm_string** %7, align 8
  %39 = getelementptr inbounds %struct.strm_string, %struct.strm_string* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %3, align 8
  br label %42

41:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %34, %26, %10
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @strm_value_tag(i32) #1

declare dso_local i64* @VAL_PTR(i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i64 @strm_value_vptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
