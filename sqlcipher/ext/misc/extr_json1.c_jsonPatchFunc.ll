; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonPatchFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonPatchFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @jsonPatchFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonPatchFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @UNUSED_PARAM(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @sqlite3_value_text(i32* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = call i64 @jsonParse(%struct.TYPE_5__* %7, i32* %12, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %58

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_text(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = call i64 @jsonParse(%struct.TYPE_5__* %8, i32* %22, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @jsonParseReset(%struct.TYPE_5__* %7)
  br label %58

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @jsonMergePatch(%struct.TYPE_5__* %7, i32 0, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ true, %32 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @jsonReturnJson(i32* %49, i32* %50, i32 0)
  br label %55

52:                                               ; preds = %42
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @sqlite3_result_error_nomem(i32* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = call i32 @jsonParseReset(%struct.TYPE_5__* %7)
  %57 = call i32 @jsonParseReset(%struct.TYPE_5__* %8)
  br label %58

58:                                               ; preds = %55, %30, %20
  ret void
}

declare dso_local i32 @UNUSED_PARAM(i32) #1

declare dso_local i64 @jsonParse(%struct.TYPE_5__*, i32*, i8*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @jsonParseReset(%struct.TYPE_5__*) #1

declare dso_local i32* @jsonMergePatch(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jsonReturnJson(i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
