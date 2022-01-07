; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_cmp_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_cmp_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.entry*
  store %struct.entry* %9, %struct.entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.entry*
  store %struct.entry* %11, %struct.entry** %7, align 8
  %12 = load %struct.entry*, %struct.entry** %6, align 8
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 46
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.entry*, %struct.entry** %6, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %125

28:                                               ; preds = %19, %2
  %29 = load %struct.entry*, %struct.entry** %7, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.entry*, %struct.entry** %7, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %125

45:                                               ; preds = %36, %28
  %46 = load %struct.entry*, %struct.entry** %6, align 8
  %47 = getelementptr inbounds %struct.entry, %struct.entry* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %70

53:                                               ; preds = %45
  %54 = load %struct.entry*, %struct.entry** %6, align 8
  %55 = getelementptr inbounds %struct.entry, %struct.entry* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.entry*, %struct.entry** %6, align 8
  %63 = getelementptr inbounds %struct.entry, %struct.entry* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %125

70:                                               ; preds = %61, %53, %45
  %71 = load %struct.entry*, %struct.entry** %7, align 8
  %72 = getelementptr inbounds %struct.entry, %struct.entry* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %95

78:                                               ; preds = %70
  %79 = load %struct.entry*, %struct.entry** %7, align 8
  %80 = getelementptr inbounds %struct.entry, %struct.entry* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load %struct.entry*, %struct.entry** %7, align 8
  %88 = getelementptr inbounds %struct.entry, %struct.entry* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %125

95:                                               ; preds = %86, %78, %70
  %96 = load %struct.entry*, %struct.entry** %6, align 8
  %97 = getelementptr inbounds %struct.entry, %struct.entry* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.entry*, %struct.entry** %7, align 8
  %102 = getelementptr inbounds %struct.entry, %struct.entry* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 -1, i32* %3, align 4
  br label %125

106:                                              ; preds = %100, %95
  %107 = load %struct.entry*, %struct.entry** %7, align 8
  %108 = getelementptr inbounds %struct.entry, %struct.entry* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.entry*, %struct.entry** %6, align 8
  %113 = getelementptr inbounds %struct.entry, %struct.entry* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %125

117:                                              ; preds = %111, %106
  %118 = load %struct.entry*, %struct.entry** %6, align 8
  %119 = getelementptr inbounds %struct.entry, %struct.entry* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.entry*, %struct.entry** %7, align 8
  %122 = getelementptr inbounds %struct.entry, %struct.entry* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @strcmp(i8* %120, i8* %123)
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %116, %105, %94, %69, %44, %27
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
