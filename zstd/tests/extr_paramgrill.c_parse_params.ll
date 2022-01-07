; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_parse_params.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_parse_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@NUM_PARAMS = common dso_local global i64 0, align 8
@g_shortParamNames = common dso_local global i32* null, align 8
@g_paramNames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_3__*)* @parse_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_params(i8** %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @NUM_PARAMS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load i8**, i8*** %3, align 8
  %16 = load i32*, i32** @g_shortParamNames, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @longCommandWArg(i8** %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load i8**, i8*** %3, align 8
  %24 = load i32*, i32** @g_paramNames, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @longCommandWArg(i8** %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %22, %14
  %31 = load i8**, i8*** %3, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 61
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  %40 = load i8**, i8*** %3, align 8
  %41 = call i32 @readU32FromChar(i8** %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  store i32 1, i32* %5, align 4
  br label %54

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i8*, i8** %6, align 8
  %50 = load i8**, i8*** %3, align 8
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %10

54:                                               ; preds = %36, %10
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @longCommandWArg(i8**, i32) #1

declare dso_local i32 @readU32FromChar(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
