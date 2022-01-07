; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-buffer.c_fz_write_pdf_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-buffer.c_fz_write_pdf_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32)* @fz_write_pdf_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_write_pdf_string(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 127
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %16
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %12

37:                                               ; preds = %32, %12
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @fz_write_byte(i32* %42, i32* %43, i8 signext 60)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %74, %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %10, align 1
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 15
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @fz_write_byte(i32* %55, i32* %56, i8 signext %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 15
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @fz_write_byte(i32* %65, i32* %66, i8 signext %72)
  br label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %45

77:                                               ; preds = %45
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @fz_write_byte(i32* %78, i32* %79, i8 signext 62)
  br label %122

81:                                               ; preds = %37
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @fz_write_byte(i32* %82, i32* %83, i8 signext 40)
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %115, %81
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %11, align 1
  %95 = load i8, i8* %11, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 40
  br i1 %97, label %106, label %98

98:                                               ; preds = %89
  %99 = load i8, i8* %11, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 41
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8, i8* %11, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 92
  br i1 %105, label %106, label %110

106:                                              ; preds = %102, %98, %89
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @fz_write_byte(i32* %107, i32* %108, i8 signext 92)
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i8, i8* %11, align 1
  %114 = call i32 @fz_write_byte(i32* %111, i32* %112, i8 signext %113)
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %85

118:                                              ; preds = %85
  %119 = load i32*, i32** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @fz_write_byte(i32* %119, i32* %120, i8 signext 41)
  br label %122

122:                                              ; preds = %118, %77
  ret void
}

declare dso_local i32 @fz_write_byte(i32*, i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
