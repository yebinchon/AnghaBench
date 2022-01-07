; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__arrsize_.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__arrsize_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@stb_arr_signature = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, i32)* @stb__arrsize_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb__arrsize_(i8** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @stb_arr_check2(i8* %14)
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %115

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add i64 12, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @stb__arr_malloc(i32 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @stb_arr_signature, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %91

43:                                               ; preds = %4
  %44 = load i8*, i8** %9, align 8
  %45 = call %struct.TYPE_4__* @stb_arrhead2(i8* %44)
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %43
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 4
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %66, %59, %54
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = add i64 12, %76
  %78 = trunc i64 %77 to i32
  %79 = call i8* @realloc(%struct.TYPE_4__* %72, i32 %78)
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = load i8*, i8** %11, align 8
  %84 = bitcast i8* %83 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %89

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %43
  br label %91

91:                                               ; preds = %90, %25
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  br label %107

103:                                              ; preds = %91
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %102, %99 ], [ %106, %103 ]
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 1
  %113 = bitcast %struct.TYPE_4__* %112 to i8*
  %114 = load i8**, i8*** %5, align 8
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %107, %24
  ret void
}

declare dso_local i32 @stb_arr_check2(i8*) #1

declare dso_local i64 @stb__arr_malloc(i32) #1

declare dso_local %struct.TYPE_4__* @stb_arrhead2(i8*) #1

declare dso_local i8* @realloc(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
