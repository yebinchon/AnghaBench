; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_sprintf_num.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_sprintf_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_INT64_LEN = common dso_local global i32 0, align 4
@ngx_sprintf_num.hex = internal global [17 x i8] c"0123456789abcdef\00", align 16
@ngx_sprintf_num.HEX = internal global [17 x i8] c"0123456789ABCDEF\00", align 16
@NGX_MAX_UINT32_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i8, i32, i32)* @ngx_sprintf_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_sprintf_num(i8* %0, i8* %1, i32 %2, i8 signext %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @NGX_INT64_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @NGX_INT64_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %13, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* @NGX_MAX_UINT32_VALUE, align 8
  %31 = trunc i64 %30 to i32
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %17, align 4
  br label %35

35:                                               ; preds = %42, %33
  %36 = load i32, i32* %17, align 4
  %37 = srem i32 %36, 10
  %38 = add nsw i32 %37, 48
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %13, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %41, i8** %13, align 8
  store i8 %39, i8* %41, align 1
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %17, align 4
  %44 = sdiv i32 %43, 10
  store i32 %44, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %35, label %46

46:                                               ; preds = %42
  br label %60

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %55, %47
  %49 = load i32, i32* %9, align 4
  %50 = srem i32 %49, 10
  %51 = add nsw i32 %50, 48
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %13, align 8
  store i8 %52, i8* %54, align 1
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = sdiv i32 %56, 10
  store i32 %57, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %48, label %59

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %46
  br label %93

61:                                               ; preds = %6
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %73, %64
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 15
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [17 x i8], [17 x i8]* @ngx_sprintf_num.hex, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %13, align 8
  store i8 %70, i8* %72, align 1
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 4
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %65, label %77

77:                                               ; preds = %73
  br label %92

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %87, %78
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 15
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [17 x i8], [17 x i8]* @ngx_sprintf_num.HEX, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %13, align 8
  store i8 %84, i8* %86, align 1
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 4
  store i32 %89, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %79, label %91

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %77
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i32, i32* @NGX_INT64_LEN, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %22, i64 %95
  %97 = load i8*, i8** %13, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  store i64 %100, i64* %16, align 8
  br label %101

101:                                              ; preds = %113, %93
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %16, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ult i8* %108, %109
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i1 [ false, %101 ], [ %110, %107 ]
  br i1 %112, label %113, label %117

113:                                              ; preds = %111
  %114 = load i8, i8* %10, align 1
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  store i8 %114, i8* %115, align 1
  br label %101

117:                                              ; preds = %111
  %118 = load i32, i32* @NGX_INT64_LEN, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %22, i64 %119
  %121 = load i8*, i8** %13, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  store i64 %124, i64* %16, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %16, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8*, i8** %8, align 8
  %129 = icmp ugt i8* %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %117
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  store i64 %135, i64* %16, align 8
  br label %136

136:                                              ; preds = %130, %117
  %137 = load i8*, i8** %7, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i8* @ngx_cpymem(i8* %137, i8* %138, i64 %139)
  %141 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %141)
  ret i8* %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ngx_cpymem(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
