; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_boot.c_str_verscmp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_boot.c_str_verscmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*)* @str_verscmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @str_verscmp(i64* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %4, align 8
  store i64* %10, i64** %6, align 8
  %11 = load i64*, i64** %5, align 8
  store i64* %11, i64** %7, align 8
  br label %12

12:                                               ; preds = %123, %2
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %124

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @is_digit(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27, %23
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @is_digit(i64 %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i1 [ false, %32 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi i1 [ true, %27 ], [ %43, %42 ]
  br i1 %45, label %46, label %63

46:                                               ; preds = %44
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @c_order(i64 %48)
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @c_order(i64 %51)
  %53 = sub nsw i64 %49, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %3, align 8
  br label %128

58:                                               ; preds = %46
  %59 = load i64*, i64** %4, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %4, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %5, align 8
  br label %23

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %68, %63
  %65 = load i64*, i64** %4, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 48
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64*, i64** %4, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %4, align 8
  br label %64

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 48
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i64*, i64** %5, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %5, align 8
  br label %72

79:                                               ; preds = %72
  store i64 0, i64* %8, align 8
  br label %80

80:                                               ; preds = %101, %79
  %81 = load i64*, i64** %4, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @is_digit(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @is_digit(i64 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ false, %80 ], [ %89, %85 ]
  br i1 %91, label %92, label %106

92:                                               ; preds = %90
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i64*, i64** %4, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %5, align 8
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %97, %99
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i64*, i64** %4, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %4, align 8
  %104 = load i64*, i64** %5, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %5, align 8
  br label %80

106:                                              ; preds = %90
  %107 = load i64*, i64** %4, align 8
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @is_digit(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i64 1, i64* %3, align 8
  br label %128

112:                                              ; preds = %106
  %113 = load i64*, i64** %5, align 8
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @is_digit(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i64 -1, i64* %3, align 8
  br label %128

118:                                              ; preds = %112
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* %3, align 8
  br label %128

123:                                              ; preds = %118
  br label %12

124:                                              ; preds = %20
  %125 = load i64*, i64** %6, align 8
  %126 = load i64*, i64** %7, align 8
  %127 = call i64 @StrCmp(i64* %125, i64* %126)
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %124, %121, %117, %111, %56
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i64 @is_digit(i64) #1

declare dso_local i64 @c_order(i64) #1

declare dso_local i64 @StrCmp(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
