; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonLookup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32*, i32*)* @jsonLookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @jsonLookup(%struct.TYPE_4__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %64

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 36
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %10, align 8
  br label %36

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @jsonLookupStep(%struct.TYPE_4__* %27, i32 0, i8* %28, i32* %29, i8** %10)
  store i32* %30, i32** %11, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32*, i32** %11, align 8
  store i32* %34, i32** %5, align 8
  br label %64

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i1 [ false, %36 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %10, align 8
  %51 = call i8* @jsonPathSyntaxError(i8* %50)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32*, i32** %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @sqlite3_result_error(i32* %55, i8* %56, i32 -1)
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @sqlite3_free(i8* %58)
  br label %63

60:                                               ; preds = %46
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @sqlite3_result_error_nomem(i32* %61)
  br label %63

63:                                               ; preds = %60, %54
  store i32* null, i32** %5, align 8
  br label %64

64:                                               ; preds = %63, %33, %15
  %65 = load i32*, i32** %5, align 8
  ret i32* %65
}

declare dso_local i32* @jsonLookupStep(%struct.TYPE_4__*, i32, i8*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @jsonPathSyntaxError(i8*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
