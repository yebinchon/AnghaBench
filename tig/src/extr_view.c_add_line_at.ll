; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_add_line_at.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_add_line_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i64, i32, i32, i8* }
%struct.view = type { i64, i64, %struct.line* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.line* @add_line_at(%struct.view* %0, i64 %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.view*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.line*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.view*, %struct.view** %8, align 8
  %18 = getelementptr inbounds %struct.view, %struct.view* %17, i32 0, i32 2
  %19 = load %struct.view*, %struct.view** %8, align 8
  %20 = getelementptr inbounds %struct.view, %struct.view* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @realloc_lines(%struct.line** %18, i64 %21, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store %struct.line* null, %struct.line** %7, align 8
  br label %136

25:                                               ; preds = %6
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = call i8* @calloc(i32 1, i64 %29)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store %struct.line* null, %struct.line** %7, align 8
  br label %136

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %16, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i8*, i8** %16, align 8
  store i8* %43, i8** %10, align 8
  br label %44

44:                                               ; preds = %42, %25
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.view*, %struct.view** %8, align 8
  %47 = getelementptr inbounds %struct.view, %struct.view* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %44
  %51 = load %struct.view*, %struct.view** %8, align 8
  %52 = getelementptr inbounds %struct.view, %struct.view* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.view*, %struct.view** %8, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 2
  %57 = load %struct.line*, %struct.line** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.line, %struct.line* %57, i64 %58
  store %struct.line* %59, %struct.line** %14, align 8
  %60 = load %struct.line*, %struct.line** %14, align 8
  %61 = getelementptr inbounds %struct.line, %struct.line* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %15, align 8
  %63 = load %struct.line*, %struct.line** %14, align 8
  %64 = getelementptr inbounds %struct.line, %struct.line* %63, i64 1
  %65 = load %struct.line*, %struct.line** %14, align 8
  %66 = load %struct.view*, %struct.view** %8, align 8
  %67 = getelementptr inbounds %struct.view, %struct.view* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %68, %69
  %71 = mul i64 %70, 24
  %72 = call i32 @memmove(%struct.line* %64, %struct.line* %65, i64 %71)
  br label %73

73:                                               ; preds = %79, %50
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.view*, %struct.view** %8, align 8
  %76 = getelementptr inbounds %struct.view, %struct.view* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.view*, %struct.view** %8, align 8
  %81 = getelementptr inbounds %struct.view, %struct.view* %80, i32 0, i32 2
  %82 = load %struct.line*, %struct.line** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.line, %struct.line* %82, i64 %83
  %85 = getelementptr inbounds %struct.line, %struct.line* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.view*, %struct.view** %8, align 8
  %89 = getelementptr inbounds %struct.view, %struct.view* %88, i32 0, i32 2
  %90 = load %struct.line*, %struct.line** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  %93 = getelementptr inbounds %struct.line, %struct.line* %90, i64 %91
  %94 = getelementptr inbounds %struct.line, %struct.line* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  br label %73

95:                                               ; preds = %73
  br label %112

96:                                               ; preds = %44
  %97 = load %struct.view*, %struct.view** %8, align 8
  %98 = getelementptr inbounds %struct.view, %struct.view* %97, i32 0, i32 2
  %99 = load %struct.line*, %struct.line** %98, align 8
  %100 = load %struct.view*, %struct.view** %8, align 8
  %101 = getelementptr inbounds %struct.view, %struct.view* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = getelementptr inbounds %struct.line, %struct.line* %99, i64 %102
  store %struct.line* %104, %struct.line** %14, align 8
  %105 = load %struct.view*, %struct.view** %8, align 8
  %106 = getelementptr inbounds %struct.view, %struct.view* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.view*, %struct.view** %8, align 8
  %109 = getelementptr inbounds %struct.view, %struct.view* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %107, %110
  store i64 %111, i64* %15, align 8
  br label %112

112:                                              ; preds = %96, %95
  %113 = load %struct.line*, %struct.line** %14, align 8
  %114 = call i32 @memset(%struct.line* %113, i32 0, i32 24)
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.line*, %struct.line** %14, align 8
  %117 = getelementptr inbounds %struct.line, %struct.line* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.line*, %struct.line** %14, align 8
  %120 = getelementptr inbounds %struct.line, %struct.line* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %struct.line*, %struct.line** %14, align 8
  %122 = getelementptr inbounds %struct.line, %struct.line* %121, i32 0, i32 1
  store i32 1, i32* %122, align 8
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %112
  %126 = load %struct.view*, %struct.view** %8, align 8
  %127 = getelementptr inbounds %struct.view, %struct.view* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  br label %134

130:                                              ; preds = %112
  %131 = load i64, i64* %15, align 8
  %132 = load %struct.line*, %struct.line** %14, align 8
  %133 = getelementptr inbounds %struct.line, %struct.line* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.line*, %struct.line** %14, align 8
  store %struct.line* %135, %struct.line** %7, align 8
  br label %136

136:                                              ; preds = %134, %33, %24
  %137 = load %struct.line*, %struct.line** %7, align 8
  ret %struct.line* %137
}

declare dso_local i32 @realloc_lines(%struct.line**, i64, i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memmove(%struct.line*, %struct.line*, i64) #1

declare dso_local i32 @memset(%struct.line*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
