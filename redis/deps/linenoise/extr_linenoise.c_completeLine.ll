; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_completeLine.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_completeLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i8**, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linenoiseState*)* @completeLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @completeLine(%struct.linenoiseState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linenoiseState*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.linenoiseState, align 8
  store %struct.linenoiseState* %0, %struct.linenoiseState** %3, align 8
  %11 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  store i8 0, i8* %7, align 1
  %12 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %13 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @completionCallback(i8* %14, %struct.TYPE_4__* %4)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @linenoiseBeep()
  br label %130

21:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %128, %21
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %129

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %33 = bitcast %struct.linenoiseState* %10 to i8*
  %34 = bitcast %struct.linenoiseState* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 24, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %44 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %51 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %53 = call i32 @refreshLine(%struct.linenoiseState* %52)
  %54 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %57 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %10, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %61 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %10, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %65 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %69

66:                                               ; preds = %26
  %67 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %68 = call i32 @refreshLine(%struct.linenoiseState* %67)
  br label %69

69:                                               ; preds = %66, %31
  %70 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %71 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @read(i32 %72, i8* %7, i32 1)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @freeCompletions(%struct.TYPE_4__* %4)
  store i32 -1, i32* %2, align 4
  br label %134

78:                                               ; preds = %69
  %79 = load i8, i8* %7, align 1
  %80 = sext i8 %79 to i32
  switch i32 %80, label %104 [
    i32 9, label %81
    i32 27, label %95
  ]

81:                                               ; preds = %78
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  %87 = urem i64 %83, %86
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 (...) @linenoiseBeep()
  br label %94

94:                                               ; preds = %92, %81
  br label %128

95:                                               ; preds = %78
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %102 = call i32 @refreshLine(%struct.linenoiseState* %101)
  br label %103

103:                                              ; preds = %100, %95
  store i64 1, i64* %8, align 8
  br label %128

104:                                              ; preds = %78
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %104
  %110 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %111 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %114 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @snprintf(i8* %112, i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %124 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %126 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 8
  br label %127

127:                                              ; preds = %109, %104
  store i64 1, i64* %8, align 8
  br label %128

128:                                              ; preds = %127, %103, %94
  br label %22

129:                                              ; preds = %22
  br label %130

130:                                              ; preds = %129, %19
  %131 = call i32 @freeCompletions(%struct.TYPE_4__* %4)
  %132 = load i8, i8* %7, align 1
  %133 = sext i8 %132 to i32
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %76
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @completionCallback(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @linenoiseBeep(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @freeCompletions(%struct.TYPE_4__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
