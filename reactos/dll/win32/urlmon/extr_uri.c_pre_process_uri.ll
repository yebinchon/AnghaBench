; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_pre_process_uri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_pre_process_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*)* @pre_process_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @pre_process_uri(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %10 = load i64*, i64** %3, align 8
  store i64* %10, i64** %4, align 8
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @iscntrlW(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @isspaceW(i64 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ true, %15 ], [ %24, %20 ]
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi i1 [ false, %11 ], [ %26, %25 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %4, align 8
  br label %11

32:                                               ; preds = %27
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i64* @SysAllocStringLen(i32* null, i32 0)
  store i64* %37, i64** %2, align 8
  br label %119

38:                                               ; preds = %32
  %39 = load i64*, i64** %4, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = call i32 @strlenW(i64* %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64* %43, i64** %5, align 8
  br label %44

44:                                               ; preds = %63, %38
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 -1
  store i64* %46, i64** %5, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = icmp ugt i64* %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @iscntrlW(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @isspaceW(i64 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  br label %61

61:                                               ; preds = %59, %44
  %62 = phi i1 [ false, %44 ], [ %60, %59 ]
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %44

64:                                               ; preds = %61
  %65 = load i64*, i64** %5, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %5, align 8
  %67 = load i64*, i64** %4, align 8
  %68 = ptrtoint i64* %66 to i64
  %69 = ptrtoint i64* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load i64*, i64** %4, align 8
  store i64* %73, i64** %6, align 8
  br label %74

74:                                               ; preds = %87, %64
  %75 = load i64*, i64** %6, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = icmp ult i64* %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @iscntrlW(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86
  %88 = load i64*, i64** %6, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %6, align 8
  br label %74

90:                                               ; preds = %74
  %91 = load i32, i32* %8, align 4
  %92 = call i64* @SysAllocStringLen(i32* null, i32 %91)
  store i64* %92, i64** %9, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store i64* null, i64** %2, align 8
  br label %119

96:                                               ; preds = %90
  %97 = load i64*, i64** %4, align 8
  store i64* %97, i64** %6, align 8
  %98 = load i64*, i64** %9, align 8
  store i64* %98, i64** %7, align 8
  br label %99

99:                                               ; preds = %114, %96
  %100 = load i64*, i64** %6, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = icmp ult i64* %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @iscntrlW(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i64*, i64** %6, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i32 1
  store i64* %112, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113
  %115 = load i64*, i64** %6, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %6, align 8
  br label %99

117:                                              ; preds = %99
  %118 = load i64*, i64** %9, align 8
  store i64* %118, i64** %2, align 8
  br label %119

119:                                              ; preds = %117, %95, %36
  %120 = load i64*, i64** %2, align 8
  ret i64* %120
}

declare dso_local i64 @iscntrlW(i64) #1

declare dso_local i64 @isspaceW(i64) #1

declare dso_local i64* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @strlenW(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
