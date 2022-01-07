; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c_aadd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c_aadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__argc = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@__argv = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aadd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @__argc, align 4
  %6 = load i32, i32* @SIZE, align 4
  %7 = srem i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load i8**, i8*** @__argv, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* @SIZE, align 4
  %14 = add nsw i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8** @malloc(i32 %17)
  store i8** %18, i8*** %4, align 8
  br label %29

19:                                               ; preds = %9
  %20 = load i8**, i8*** @__argv, align 8
  %21 = load i32, i32* @__argc, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = mul i64 8, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8** @realloc(i8** %20, i32 %27)
  store i8** %28, i8*** %4, align 8
  br label %29

29:                                               ; preds = %19, %12
  %30 = load i8**, i8*** %4, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %46

33:                                               ; preds = %29
  %34 = load i8**, i8*** %4, align 8
  store i8** %34, i8*** @__argv, align 8
  br label %35

35:                                               ; preds = %33, %1
  %36 = load i8*, i8** %3, align 8
  %37 = load i8**, i8*** @__argv, align 8
  %38 = load i32, i32* @__argc, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @__argc, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  store i8* %36, i8** %41, align 8
  %42 = load i8**, i8*** @__argv, align 8
  %43 = load i32, i32* @__argc, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* null, i8** %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %32
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
