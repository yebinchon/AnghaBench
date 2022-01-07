; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrncat.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xmlStrncat(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64*, i64** %6, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i64*, i64** %5, align 8
  store i64* %16, i64** %4, align 8
  br label %68

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64* null, i64** %4, align 8
  br label %68

21:                                               ; preds = %17
  %22 = load i64*, i64** %5, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64*, i64** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64* @xmlStrndup(i64* %25, i32 %26)
  store i64* %27, i64** %4, align 8
  br label %68

28:                                               ; preds = %21
  %29 = load i64*, i64** %5, align 8
  %30 = call i32 @xmlStrlen(i64* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i64* null, i64** %4, align 8
  br label %68

34:                                               ; preds = %28
  %35 = load i64*, i64** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @xmlRealloc(i64* %35, i32 %42)
  %44 = inttoptr i64 %43 to i64*
  store i64* %44, i64** %9, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = call i32 @xmlErrMemory(i32* null, i32* null)
  %49 = load i64*, i64** %5, align 8
  store i64* %49, i64** %4, align 8
  br label %68

50:                                               ; preds = %34
  %51 = load i64*, i64** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memcpy(i64* %54, i64* %55, i32 %59)
  %61 = load i64*, i64** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %61, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load i64*, i64** %9, align 8
  store i64* %67, i64** %4, align 8
  br label %68

68:                                               ; preds = %50, %47, %33, %24, %20, %15
  %69 = load i64*, i64** %4, align 8
  ret i64* %69
}

declare dso_local i64* @xmlStrndup(i64*, i32) #1

declare dso_local i32 @xmlStrlen(i64*) #1

declare dso_local i64 @xmlRealloc(i64*, i32) #1

declare dso_local i32 @xmlErrMemory(i32*, i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
