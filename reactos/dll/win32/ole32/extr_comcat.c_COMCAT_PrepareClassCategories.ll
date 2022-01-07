; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_COMCAT_PrepareClassCategories.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_COMCAT_PrepareClassCategories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_categories = type { i32, i32, i32 }

@CHARS_IN_GUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.class_categories* (i32, i32*, i32, i32*)* @COMCAT_PrepareClassCategories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.class_categories* @COMCAT_PrepareClassCategories(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.class_categories*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.class_categories*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @CHARS_IN_GUID, align 4
  %17 = mul nsw i32 %15, %16
  %18 = add nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 12, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.class_categories* @HeapAlloc(i32 %23, i32 0, i32 %24)
  store %struct.class_categories* %25, %struct.class_categories** %10, align 8
  %26 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  %27 = icmp eq %struct.class_categories* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  store %struct.class_categories* %29, %struct.class_categories** %5, align 8
  br label %90

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  %33 = getelementptr inbounds %struct.class_categories, %struct.class_categories* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  %35 = getelementptr inbounds %struct.class_categories, %struct.class_categories* %34, i32 0, i32 1
  store i32 12, i32* %35, align 4
  %36 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  %37 = getelementptr inbounds %struct.class_categories, %struct.class_categories* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CHARS_IN_GUID, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 %39, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  %49 = getelementptr inbounds %struct.class_categories, %struct.class_categories* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  %51 = getelementptr inbounds %struct.class_categories, %struct.class_categories* %50, i64 1
  %52 = bitcast %struct.class_categories* %51 to i32*
  store i32* %52, i32** %11, align 8
  br label %53

53:                                               ; preds = %57, %30
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  %60 = ptrtoint i32* %58 to i32
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* @CHARS_IN_GUID, align 4
  %63 = call i32 @StringFromGUID2(i32 %60, i32* %61, i32 %62)
  %64 = load i32, i32* @CHARS_IN_GUID, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %11, align 8
  br label %53

68:                                               ; preds = %53
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %11, align 8
  store i32 0, i32* %69, align 4
  br label %71

71:                                               ; preds = %75, %68
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  %78 = ptrtoint i32* %76 to i32
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @CHARS_IN_GUID, align 4
  %81 = call i32 @StringFromGUID2(i32 %78, i32* %79, i32 %80)
  %82 = load i32, i32* @CHARS_IN_GUID, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %11, align 8
  br label %71

86:                                               ; preds = %71
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %11, align 8
  store i32 0, i32* %87, align 4
  %89 = load %struct.class_categories*, %struct.class_categories** %10, align 8
  store %struct.class_categories* %89, %struct.class_categories** %5, align 8
  br label %90

90:                                               ; preds = %86, %28
  %91 = load %struct.class_categories*, %struct.class_categories** %5, align 8
  ret %struct.class_categories* %91
}

declare dso_local %struct.class_categories* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @StringFromGUID2(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
