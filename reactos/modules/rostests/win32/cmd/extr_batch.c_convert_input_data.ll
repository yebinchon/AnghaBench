; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_convert_input_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_convert_input_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_input_data.escaped_space = internal constant [7 x i8] c"@space@", align 1
@convert_input_data.escaped_tab = internal constant [5 x i8] c"@tab@", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*)* @convert_input_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_input_data(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %22, %15
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %11

29:                                               ; preds = %11
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %31, %32
  %34 = add i64 %33, 1
  %35 = call i8* @HeapAlloc(i32 %30, i32 0, i64 %34)
  store i8* %35, i8** %10, align 8
  store i8* %35, i8** %9, align 8
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %119, %29
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %122

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %111 [
    i32 10, label %46
    i32 64, label %60
  ]

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 13
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  store i8 13, i8* %55, align 1
  br label %57

57:                                               ; preds = %54, %46
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  store i8 10, i8* %58, align 1
  br label %118

60:                                               ; preds = %40
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 7
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = icmp ult i8* %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = call i32 @memcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @convert_input_data.escaped_space, i64 0, i64 0), i32 7)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  store i8 32, i8* %77, align 1
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 6
  store i64 %80, i64* %7, align 8
  br label %110

81:                                               ; preds = %70, %60
  %82 = load i8*, i8** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  %87 = load i8*, i8** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = icmp ult i8* %86, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = load i8*, i8** %4, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = call i32 @memcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @convert_input_data.escaped_tab, i64 0, i64 0), i32 5)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %9, align 8
  store i8 9, i8* %98, align 1
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %7, align 8
  br label %109

102:                                              ; preds = %91, %81
  %103 = load i8*, i8** %4, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %9, align 8
  store i8 %106, i8* %107, align 1
  br label %109

109:                                              ; preds = %102, %97
  br label %110

110:                                              ; preds = %109, %76
  br label %118

111:                                              ; preds = %40
  %112 = load i8*, i8** %4, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %111, %110, %57
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %7, align 8
  br label %36

122:                                              ; preds = %36
  %123 = load i8*, i8** %9, align 8
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %10, align 8
  %125 = call i64 @strlen(i8* %124)
  %126 = load i64*, i64** %6, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i8*, i8** %10, align 8
  ret i8* %127
}

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
