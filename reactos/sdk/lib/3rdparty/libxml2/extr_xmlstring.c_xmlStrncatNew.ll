; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrncatNew.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrncatNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xmlStrncatNew(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = call i32 @xmlStrlen(i64* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i64* null, i64** %4, align 8
  br label %83

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i64*, i64** %6, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = load i64*, i64** %5, align 8
  %27 = call i64* @xmlStrdup(i64* %26)
  store i64* %27, i64** %4, align 8
  br label %83

28:                                               ; preds = %22
  %29 = load i64*, i64** %5, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64* @xmlStrndup(i64* %32, i32 %33)
  store i64* %34, i64** %4, align 8
  br label %83

35:                                               ; preds = %28
  %36 = load i64*, i64** %5, align 8
  %37 = call i32 @xmlStrlen(i64* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i64* null, i64** %4, align 8
  br label %83

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @xmlMalloc(i32 %48)
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %9, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = call i32 @xmlErrMemory(i32* null, i32* null)
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64* @xmlStrndup(i64* %55, i32 %56)
  store i64* %57, i64** %4, align 8
  br label %83

58:                                               ; preds = %41
  %59 = load i64*, i64** %9, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i64* %59, i64* %60, i32 %64)
  %66 = load i64*, i64** %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64*, i64** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i64* %69, i64* %70, i32 %74)
  %76 = load i64*, i64** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %76, i64 %80
  store i64 0, i64* %81, align 8
  %82 = load i64*, i64** %9, align 8
  store i64* %82, i64** %4, align 8
  br label %83

83:                                               ; preds = %58, %53, %40, %31, %25, %17
  %84 = load i64*, i64** %4, align 8
  ret i64* %84
}

declare dso_local i32 @xmlStrlen(i64*) #1

declare dso_local i64* @xmlStrdup(i64*) #1

declare dso_local i64* @xmlStrndup(i64*, i32) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlErrMemory(i32*, i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
