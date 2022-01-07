; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseVersionNum.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseVersionNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CUR = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParseVersionNum(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 10, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i64 @xmlMallocAtomic(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @xmlErrMemory(i32 %18, i32* null)
  store i8* null, i8** %2, align 8
  br label %105

20:                                               ; preds = %1
  %21 = load i8, i8* @CUR, align 1
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 57
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %20
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @xmlFree(i8* %30)
  store i8* null, i8** %2, align 8
  br label %105

32:                                               ; preds = %25
  %33 = load i8, i8* %7, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 %33, i8* %38, align 1
  %39 = load i32, i32* @NEXT, align 4
  %40 = load i8, i8* @CUR, align 1
  store i8 %40, i8* %7, align 1
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 46
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @xmlFree(i8* %45)
  store i8* null, i8** %2, align 8
  br label %105

47:                                               ; preds = %32
  %48 = load i8, i8* %7, align 1
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 %48, i8* %53, align 1
  %54 = load i32, i32* @NEXT, align 4
  %55 = load i8, i8* @CUR, align 1
  store i8 %55, i8* %7, align 1
  br label %56

56:                                               ; preds = %90, %47
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %99

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %72, 2
  store i32 %73, i32* %6, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = call i64 @xmlRealloc(i8* %74, i32 %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @xmlFree(i8* %84)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @xmlErrMemory(i32 %86, i32* null)
  store i8* null, i8** %2, align 8
  br label %105

88:                                               ; preds = %71
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %88, %66
  %91 = load i8, i8* %7, align 1
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %91, i8* %96, align 1
  %97 = load i32, i32* @NEXT, align 4
  %98 = load i8, i8* @CUR, align 1
  store i8 %98, i8* %7, align 1
  br label %56

99:                                               ; preds = %64
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %4, align 8
  store i8* %104, i8** %2, align 8
  br label %105

105:                                              ; preds = %99, %83, %44, %29, %17
  %106 = load i8*, i8** %2, align 8
  ret i8* %106
}

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlErrMemory(i32, i32*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i64 @xmlRealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
