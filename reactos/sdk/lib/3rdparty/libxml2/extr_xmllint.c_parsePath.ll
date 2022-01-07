; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_parsePath.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_parsePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nbpaths = common dso_local global i64 0, align 8
@MAX_PATHS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"MAX_PATHS reached: too many paths\0A\00", align 1
@PATH_SEPARATOR = common dso_local global i64 0, align 8
@paths = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @parsePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsePath(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = icmp eq i64* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %83

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %82, %7
  %9 = load i64*, i64** %2, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %8
  %13 = load i64, i64* @nbpaths, align 8
  %14 = load i64, i64* @MAX_PATHS, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %83

19:                                               ; preds = %12
  %20 = load i64*, i64** %2, align 8
  store i64* %20, i64** %3, align 8
  br label %21

21:                                               ; preds = %32, %19
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i64*, i64** %3, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PATH_SEPARATOR, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i1 [ true, %21 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %3, align 8
  br label %21

35:                                               ; preds = %30
  %36 = load i64*, i64** %3, align 8
  store i64* %36, i64** %2, align 8
  br label %37

37:                                               ; preds = %52, %35
  %38 = load i64*, i64** %3, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i64*, i64** %3, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 32
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i64*, i64** %3, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PATH_SEPARATOR, align 8
  %49 = icmp ne i64 %47, %48
  br label %50

50:                                               ; preds = %45, %41, %37
  %51 = phi i1 [ false, %41 ], [ false, %37 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i64*, i64** %3, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %3, align 8
  br label %37

55:                                               ; preds = %50
  %56 = load i64*, i64** %3, align 8
  %57 = load i64*, i64** %2, align 8
  %58 = icmp ne i64* %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i64*, i64** %2, align 8
  %61 = load i64*, i64** %3, align 8
  %62 = load i64*, i64** %2, align 8
  %63 = ptrtoint i64* %61 to i64
  %64 = ptrtoint i64* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = call i32* @xmlStrndup(i64* %60, i32 %67)
  %69 = load i32**, i32*** @paths, align 8
  %70 = load i64, i64* @nbpaths, align 8
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  store i32* %68, i32** %71, align 8
  %72 = load i32**, i32*** @paths, align 8
  %73 = load i64, i64* @nbpaths, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i64, i64* @nbpaths, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* @nbpaths, align 8
  br label %80

80:                                               ; preds = %77, %59
  %81 = load i64*, i64** %3, align 8
  store i64* %81, i64** %2, align 8
  br label %82

82:                                               ; preds = %80, %55
  br label %8

83:                                               ; preds = %6, %16, %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @xmlStrndup(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
