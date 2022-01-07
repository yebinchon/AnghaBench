; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzPutVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzPutVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @fuzzPutVarint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzPutVarint(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2097152
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %52

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 16384
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 7
  %27 = and i32 %26, 127
  %28 = or i32 %27, 128
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 127
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  store i32 2, i32* %3, align 4
  br label %52

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 14
  %38 = and i32 %37, 127
  %39 = or i32 %38, 128
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 7
  %44 = and i32 %43, 127
  %45 = or i32 %44, 128
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 127
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  store i32 3, i32* %3, align 4
  br label %52

52:                                               ; preds = %35, %24, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
