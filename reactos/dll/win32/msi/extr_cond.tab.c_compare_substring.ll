; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_compare_substring.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_compare_substring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"invalid substring operator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @compare_substring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_substring(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %144

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %25
  store i32 1, i32* %4, align 4
  br label %144

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @atoiW(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @atoiW(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @str_is_number(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @str_is_number(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @compare_int(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %144

50:                                               ; preds = %41, %33
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %142 [
    i32 128, label %52
    i32 131, label %58
    i32 130, label %64
    i32 129, label %81
    i32 133, label %103
    i32 132, label %120
  ]

52:                                               ; preds = %50
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @strstrW(i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %144

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @strstriW(i32* %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %144

64:                                               ; preds = %50
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @strlenW(i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @strlenW(i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %144

73:                                               ; preds = %64
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @strncmpW(i32* %74, i32* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %144

81:                                               ; preds = %50
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @strlenW(i32* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @strlenW(i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %144

90:                                               ; preds = %81
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @strncmpW(i32* %96, i32* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %144

103:                                              ; preds = %50
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @strlenW(i32* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @strlenW(i32* %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %144

112:                                              ; preds = %103
  %113 = load i32*, i32** %5, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @strncmpiW(i32* %113, i32* %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %4, align 4
  br label %144

120:                                              ; preds = %50
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @strlenW(i32* %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @strlenW(i32* %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %144

129:                                              ; preds = %120
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %17, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @strncmpiW(i32* %135, i32* %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %4, align 4
  br label %144

142:                                              ; preds = %50
  %143 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %129, %128, %112, %111, %90, %89, %73, %72, %58, %52, %45, %32, %24
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @atoiW(i32*) #1

declare dso_local i64 @str_is_number(i32*) #1

declare dso_local i32 @compare_int(i32, i32, i32) #1

declare dso_local i32 @strstrW(i32*, i32*) #1

declare dso_local i32 @strstriW(i32*, i32*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @strncmpW(i32*, i32*, i32) #1

declare dso_local i32 @strncmpiW(i32*, i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
