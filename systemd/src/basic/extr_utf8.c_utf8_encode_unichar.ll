; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_utf8.c_utf8_encode_unichar.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_utf8.c_utf8_encode_unichar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_encode_unichar(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 127
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %14, i8* %16, align 1
  br label %17

17:                                               ; preds = %11, %8
  store i64 1, i64* %3, align 8
  br label %106

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 2048
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 6
  %27 = and i32 %26, 31
  %28 = or i32 192, %27
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %29, i8* %31, align 1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 63
  %34 = or i32 128, %33
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %37, align 1
  br label %38

38:                                               ; preds = %24, %21
  store i64 2, i64* %3, align 8
  br label %106

39:                                               ; preds = %18
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 65536
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 12
  %48 = and i32 %47, 15
  %49 = or i32 224, %48
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 6
  %55 = and i32 %54, 63
  %56 = or i32 128, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 63
  %62 = or i32 128, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 %63, i8* %65, align 1
  br label %66

66:                                               ; preds = %45, %42
  store i64 3, i64* %3, align 8
  br label %106

67:                                               ; preds = %39
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 2097152
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %101

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 18
  %76 = and i32 %75, 7
  %77 = or i32 240, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 12
  %83 = and i32 %82, 63
  %84 = or i32 128, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %85, i8* %87, align 1
  %88 = load i32, i32* %5, align 4
  %89 = ashr i32 %88, 6
  %90 = and i32 %89, 63
  %91 = or i32 128, %90
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8 %92, i8* %94, align 1
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, 63
  %97 = or i32 128, %96
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  store i8 %98, i8* %100, align 1
  br label %101

101:                                              ; preds = %73, %70
  store i64 4, i64* %3, align 8
  br label %106

102:                                              ; preds = %67
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  store i64 0, i64* %3, align 8
  br label %106

106:                                              ; preds = %105, %101, %66, %38, %17
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
