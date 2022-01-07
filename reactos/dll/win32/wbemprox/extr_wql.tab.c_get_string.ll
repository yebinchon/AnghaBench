; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_get_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }
%struct.string = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, %struct.string*)* @get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_string(%struct.parser* %0, %struct.string* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  %9 = load %struct.string*, %struct.string** %5, align 8
  %10 = getelementptr inbounds %struct.string, %struct.string* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.string*, %struct.string** %5, align 8
  %13 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 34
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 34
  br i1 %28, label %44, label %29

29:                                               ; preds = %20, %2
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 39
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 39
  br i1 %43, label %44, label %45

44:                                               ; preds = %35, %20
  store i8* null, i8** %3, align 8
  br label %103

45:                                               ; preds = %35, %29
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 34
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %75, label %60

60:                                               ; preds = %51, %45
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 39
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 39
  br i1 %74, label %75, label %80

75:                                               ; preds = %66, %51
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 2
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %66, %60
  %81 = load %struct.parser*, %struct.parser** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = call i8* @alloc_mem(%struct.parser* %81, i32 %86)
  store i8* %87, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store i8* null, i8** %3, align 8
  br label %103

90:                                               ; preds = %80
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i8* %91, i8* %92, i32 %96)
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %3, align 8
  br label %103

103:                                              ; preds = %90, %89, %44
  %104 = load i8*, i8** %3, align 8
  ret i8* %104
}

declare dso_local i8* @alloc_mem(%struct.parser*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
