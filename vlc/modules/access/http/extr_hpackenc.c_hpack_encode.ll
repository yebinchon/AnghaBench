; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpackenc.c_hpack_encode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpackenc.c_hpack_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpack_encode(i32* noalias %0, i64 %1, [2 x i8*]* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i8*]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store [2 x i8*]* %2, [2 x i8*]** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %37, %4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load [2 x i8*]*, [2 x i8*]** %7, align 8
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load [2 x i8*]*, [2 x i8*]** %7, align 8
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @hpack_encode_hdr_neverindex(i32* %15, i64 %16, i8* %20, i8* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %14
  %30 = load i64, i64* %10, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %37

36:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %9, align 8
  %41 = load [2 x i8*]*, [2 x i8*]** %7, align 8
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %41, i32 1
  store [2 x i8*]* %42, [2 x i8*]** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %8, align 4
  br label %11

45:                                               ; preds = %11
  %46 = load i64, i64* %9, align 8
  ret i64 %46
}

declare dso_local i64 @hpack_encode_hdr_neverindex(i32*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
