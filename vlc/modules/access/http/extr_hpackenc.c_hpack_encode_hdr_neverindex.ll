; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpackenc.c_hpack_encode_hdr_neverindex.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpackenc.c_hpack_encode_hdr_neverindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpack_encode_hdr_neverindex(i32* noalias %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 1, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  store i32 16, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %13, %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @hpack_encode_str_raw_lower(i32* %19, i64 %20, i8* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i64, i64* %10, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 %27
  store i32* %29, i32** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %34

33:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @hpack_encode_str_raw(i32* %38, i64 %39, i8* %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load i64, i64* %10, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %5, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %53

52:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  ret i64 %57
}

declare dso_local i64 @hpack_encode_str_raw_lower(i32*, i64, i8*) #1

declare dso_local i64 @hpack_encode_str_raw(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
