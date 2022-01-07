; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_alloc_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_alloc_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32, i64* }

@alloc_element.colonW = internal constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.element* (i32*, i8*, i8*)* @alloc_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.element* @alloc_element(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.element*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.element*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @writer_alloc(i32* %10, i32 16)
  %12 = bitcast i8* %11 to %struct.element*
  store %struct.element* %12, %struct.element** %8, align 8
  %13 = load %struct.element*, %struct.element** %8, align 8
  %14 = icmp ne %struct.element* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load %struct.element*, %struct.element** %8, align 8
  store %struct.element* %16, %struct.element** %4, align 8
  br label %68

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlenW(i8* %21)
  %23 = add nsw i32 %22, 1
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlenW(i8* %27)
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = call i8* @writer_alloc(i32* %31, i32 %36)
  %38 = bitcast i8* %37 to i64*
  %39 = load %struct.element*, %struct.element** %8, align 8
  %40 = getelementptr inbounds %struct.element, %struct.element* %39, i32 0, i32 1
  store i64* %38, i64** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.element*, %struct.element** %8, align 8
  %43 = getelementptr inbounds %struct.element, %struct.element* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %25
  %47 = load %struct.element*, %struct.element** %8, align 8
  %48 = getelementptr inbounds %struct.element, %struct.element* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcpyW(i64* %49, i8* %50)
  %52 = load %struct.element*, %struct.element** %8, align 8
  %53 = getelementptr inbounds %struct.element, %struct.element* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = call i32 @strcatW(i64* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @alloc_element.colonW, i64 0, i64 0))
  br label %61

56:                                               ; preds = %25
  %57 = load %struct.element*, %struct.element** %8, align 8
  %58 = getelementptr inbounds %struct.element, %struct.element* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %46
  %62 = load %struct.element*, %struct.element** %8, align 8
  %63 = getelementptr inbounds %struct.element, %struct.element* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcatW(i64* %64, i8* %65)
  %67 = load %struct.element*, %struct.element** %8, align 8
  store %struct.element* %67, %struct.element** %4, align 8
  br label %68

68:                                               ; preds = %61, %15
  %69 = load %struct.element*, %struct.element** %4, align 8
  ret %struct.element* %69
}

declare dso_local i8* @writer_alloc(i32*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i64*, i8*) #1

declare dso_local i32 @strcatW(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
