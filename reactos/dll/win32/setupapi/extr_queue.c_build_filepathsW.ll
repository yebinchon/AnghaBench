; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_build_filepathsW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_build_filepathsW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_op = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_op*, %struct.TYPE_3__*)* @build_filepathsW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_filepathsW(%struct.file_op* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_op*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.file_op* %0, %struct.file_op** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.file_op*, %struct.file_op** %4, align 8
  %17 = getelementptr inbounds %struct.file_op, %struct.file_op* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.file_op*, %struct.file_op** %4, align 8
  %22 = getelementptr inbounds %struct.file_op, %struct.file_op* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @strlenW(i32* %23)
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %20, %2
  %31 = load %struct.file_op*, %struct.file_op** %4, align 8
  %32 = getelementptr inbounds %struct.file_op, %struct.file_op* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.file_op*, %struct.file_op** %4, align 8
  %37 = getelementptr inbounds %struct.file_op, %struct.file_op* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @strlenW(i32* %38)
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.file_op*, %struct.file_op** %4, align 8
  %47 = getelementptr inbounds %struct.file_op, %struct.file_op* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.file_op*, %struct.file_op** %4, align 8
  %52 = getelementptr inbounds %struct.file_op, %struct.file_op* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @strlenW(i32* %53)
  %55 = add nsw i64 %54, 1
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %45
  %61 = load %struct.file_op*, %struct.file_op** %4, align 8
  %62 = getelementptr inbounds %struct.file_op, %struct.file_op* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.file_op*, %struct.file_op** %4, align 8
  %67 = getelementptr inbounds %struct.file_op, %struct.file_op* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @strlenW(i32* %68)
  %70 = add nsw i64 %69, 1
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.file_op*, %struct.file_op** %4, align 8
  %77 = getelementptr inbounds %struct.file_op, %struct.file_op* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.file_op*, %struct.file_op** %4, align 8
  %82 = getelementptr inbounds %struct.file_op, %struct.file_op* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @strlenW(i32* %83)
  %85 = add nsw i64 %84, 1
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %80, %75
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @HeapSize(i32 %102, i32 0, i32* %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %101, %90
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @HeapFree(i32 %108, i32 0, i32* %109)
  %111 = call i32 (...) @GetProcessHeap()
  %112 = load i32, i32* %6, align 4
  %113 = call i32* @HeapAlloc(i32 %111, i32 0, i32 %112)
  store i32* %113, i32** %8, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  store i32* %113, i32** %115, align 8
  br label %116

116:                                              ; preds = %107, %101
  %117 = load i32*, i32** %9, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = call i32 (...) @GetProcessHeap()
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @HeapSize(i32 %120, i32 0, i32* %121)
  %123 = load i32, i32* %7, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119, %116
  %126 = call i32 (...) @GetProcessHeap()
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @HeapFree(i32 %126, i32 0, i32* %127)
  %129 = call i32 (...) @GetProcessHeap()
  %130 = load i32, i32* %7, align 4
  %131 = call i32* @HeapAlloc(i32 %129, i32 0, i32 %130)
  store i32* %131, i32** %9, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  br label %134

134:                                              ; preds = %125, %119
  %135 = load i32*, i32** %8, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %3, align 4
  br label %167

142:                                              ; preds = %137
  %143 = load i32*, i32** %8, align 8
  %144 = load %struct.file_op*, %struct.file_op** %4, align 8
  %145 = getelementptr inbounds %struct.file_op, %struct.file_op* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.file_op*, %struct.file_op** %4, align 8
  %148 = getelementptr inbounds %struct.file_op, %struct.file_op* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.file_op*, %struct.file_op** %4, align 8
  %151 = getelementptr inbounds %struct.file_op, %struct.file_op* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @concat_W(i32* %143, i32* %146, i32* %149, i32* %152)
  %154 = load i32*, i32** %9, align 8
  %155 = load %struct.file_op*, %struct.file_op** %4, align 8
  %156 = getelementptr inbounds %struct.file_op, %struct.file_op* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.file_op*, %struct.file_op** %4, align 8
  %159 = getelementptr inbounds %struct.file_op, %struct.file_op* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @concat_W(i32* %154, i32* null, i32* %157, i32* %160)
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* @TRUE, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %142, %140
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @strlenW(i32*) #1

declare dso_local i32 @HeapSize(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @concat_W(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
