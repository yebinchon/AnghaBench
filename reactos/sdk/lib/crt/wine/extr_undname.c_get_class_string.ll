; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_class_string.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_class_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { %struct.array }
%struct.array = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parsed_symbol*, i32)* @get_class_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_class_string(%struct.parsed_symbol* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parsed_symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.array*, align 8
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %12 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %11, i32 0, i32 0
  store %struct.array* %12, %struct.array** %10, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.array*, %struct.array** %10, align 8
  %17 = getelementptr inbounds %struct.array, %struct.array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.array*, %struct.array** %10, align 8
  %22 = getelementptr inbounds %struct.array, %struct.array* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.array*, %struct.array** %10, align 8
  %30 = getelementptr inbounds %struct.array, %struct.array* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = add nsw i32 2, %36
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 %45, 1
  %47 = call i8* @und_alloc(%struct.parsed_symbol* %44, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %108

50:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  %51 = load %struct.array*, %struct.array** %10, align 8
  %52 = getelementptr inbounds %struct.array, %struct.array* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %99, %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %102

59:                                               ; preds = %55
  %60 = load %struct.array*, %struct.array** %10, align 8
  %61 = getelementptr inbounds %struct.array, %struct.array* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strlen(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load %struct.array*, %struct.array** %10, align 8
  %73 = getelementptr inbounds %struct.array, %struct.array* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @memcpy(i8* %71, i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %59
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 58, i8* %92, align 1
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 58, i8* %97, align 1
  br label %98

98:                                               ; preds = %87, %59
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %6, align 4
  br label %55

102:                                              ; preds = %55
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %9, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %102, %49
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @und_alloc(%struct.parsed_symbol*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
