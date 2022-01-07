; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c__safe_itoa.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c__safe_itoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const._safe_itoa.hex = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8*)* @_safe_itoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_safe_itoa(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [17 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = bitcast [17 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const._safe_itoa.hex, i32 0, i32 0), i64 17, i1 false)
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %18, i8** %6, align 8
  store i8 0, i8* %17, align 1
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %42, %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 0, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 48, i8* %41, align 1
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %33

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %27, %24
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = srem i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sdiv i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %47, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %69, i8** %6, align 8
  store i8 45, i8* %68, align 1
  br label %70

70:                                               ; preds = %67, %64, %61
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %125

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 16
  br i1 %75, label %76, label %125

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  store i8* %78, i8** %6, align 8
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %119, %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 16
  br i1 %81, label %82, label %124

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  switch i32 %85, label %118 [
    i32 48, label %86
    i32 49, label %88
    i32 50, label %90
    i32 51, label %92
    i32 52, label %94
    i32 53, label %96
    i32 54, label %98
    i32 55, label %100
    i32 56, label %102
    i32 57, label %104
    i32 97, label %106
    i32 98, label %108
    i32 99, label %110
    i32 100, label %112
    i32 101, label %114
    i32 102, label %116
  ]

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  store i8 102, i8* %87, align 1
  br label %118

88:                                               ; preds = %82
  %89 = load i8*, i8** %6, align 8
  store i8 101, i8* %89, align 1
  br label %118

90:                                               ; preds = %82
  %91 = load i8*, i8** %6, align 8
  store i8 100, i8* %91, align 1
  br label %118

92:                                               ; preds = %82
  %93 = load i8*, i8** %6, align 8
  store i8 99, i8* %93, align 1
  br label %118

94:                                               ; preds = %82
  %95 = load i8*, i8** %6, align 8
  store i8 98, i8* %95, align 1
  br label %118

96:                                               ; preds = %82
  %97 = load i8*, i8** %6, align 8
  store i8 97, i8* %97, align 1
  br label %118

98:                                               ; preds = %82
  %99 = load i8*, i8** %6, align 8
  store i8 57, i8* %99, align 1
  br label %118

100:                                              ; preds = %82
  %101 = load i8*, i8** %6, align 8
  store i8 56, i8* %101, align 1
  br label %118

102:                                              ; preds = %82
  %103 = load i8*, i8** %6, align 8
  store i8 55, i8* %103, align 1
  br label %118

104:                                              ; preds = %82
  %105 = load i8*, i8** %6, align 8
  store i8 54, i8* %105, align 1
  br label %118

106:                                              ; preds = %82
  %107 = load i8*, i8** %6, align 8
  store i8 53, i8* %107, align 1
  br label %118

108:                                              ; preds = %82
  %109 = load i8*, i8** %6, align 8
  store i8 52, i8* %109, align 1
  br label %118

110:                                              ; preds = %82
  %111 = load i8*, i8** %6, align 8
  store i8 51, i8* %111, align 1
  br label %118

112:                                              ; preds = %82
  %113 = load i8*, i8** %6, align 8
  store i8 50, i8* %113, align 1
  br label %118

114:                                              ; preds = %82
  %115 = load i8*, i8** %6, align 8
  store i8 49, i8* %115, align 1
  br label %118

116:                                              ; preds = %82
  %117 = load i8*, i8** %6, align 8
  store i8 48, i8* %117, align 1
  br label %118

118:                                              ; preds = %82, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %6, align 8
  br label %79

124:                                              ; preds = %79
  br label %125

125:                                              ; preds = %124, %73, %70
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  ret i8* %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
