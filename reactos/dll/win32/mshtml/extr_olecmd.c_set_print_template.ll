; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_set_print_template.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_set_print_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @set_print_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_print_template(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [200 x i64], align 16
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds [200 x i64], [200 x i64]* %7, i64 0, i64 0
  store i64* %12, i64** %8, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %106, %23, %3
  %15 = load i8*, i8** %9, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %107

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 38
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i64
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %8, align 8
  store i64 %27, i64* %28, align 8
  br label %14

30:                                               ; preds = %18
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %97 [
    i32 38, label %35
    i32 98, label %42
    i32 100, label %54
    i32 112, label %75
    i32 80, label %82
    i32 117, label %87
    i32 119, label %94
  ]

35:                                               ; preds = %30
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %8, align 8
  store i64 38, i64* %36, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %8, align 8
  store i64 38, i64* %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  br label %106

42:                                               ; preds = %30
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  %45 = load i64*, i64** %8, align 8
  store i64 0, i64* %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds [200 x i64], [200 x i64]* %7, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @set_head_text(i32* %46, i64* %47, i32 %48, i32 %49)
  %51 = getelementptr inbounds [200 x i64], [200 x i64]* %7, i64 0, i64 0
  store i64* %51, i64** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %106

54:                                               ; preds = %30
  %55 = call i32 @GetLocalTime(i32* %11)
  %56 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %57 = load i64*, i64** %8, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds [200 x i64], [200 x i64]* %7, i64 0, i64 0
  %60 = ptrtoint i64* %58 to i64
  %61 = ptrtoint i64* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 8
  %64 = mul i64 %63, 4
  %65 = sub i64 1600, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @GetDateFormatW(i32 %56, i32 0, i32* %11, i32* null, i64* %57, i32 %66)
  %68 = load i64*, i64** %8, align 8
  %69 = call i32 @strlenW(i64* %68)
  %70 = load i64*, i64** %8, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64* %72, i64** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  br label %106

75:                                               ; preds = %30
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %8, align 8
  store i64 38, i64* %76, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %8, align 8
  store i64 80, i64* %78, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  br label %106

82:                                               ; preds = %30
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %8, align 8
  store i64 63, i64* %83, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %9, align 8
  br label %106

87:                                               ; preds = %30
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %8, align 8
  store i64 38, i64* %88, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %8, align 8
  store i64 85, i64* %90, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  br label %106

94:                                               ; preds = %30
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  br label %106

97:                                               ; preds = %30
  %98 = load i64*, i64** %8, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %8, align 8
  store i64 38, i64* %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i64
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %8, align 8
  store i64 %103, i64* %104, align 8
  br label %106

106:                                              ; preds = %97, %94, %87, %82, %75, %54, %42, %35
  br label %14

107:                                              ; preds = %14
  %108 = load i64*, i64** %8, align 8
  store i64 0, i64* %108, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds [200 x i64], [200 x i64]* %7, i64 0, i64 0
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @set_head_text(i32* %109, i64* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %118, %107
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = icmp slt i32 %116, 3
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32*, i32** %4, align 8
  %120 = load i64*, i64** %8, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @set_head_text(i32* %119, i64* %120, i32 %121, i32 %122)
  br label %114

124:                                              ; preds = %114
  ret void
}

declare dso_local i32 @set_head_text(i32*, i64*, i32, i32) #1

declare dso_local i32 @GetLocalTime(i32*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, i32*, i32*, i64*, i32) #1

declare dso_local i32 @strlenW(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
