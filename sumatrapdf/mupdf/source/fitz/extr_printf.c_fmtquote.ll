; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtquote.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmtbuf = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmtbuf*, i8*, i32, i32)* @fmtquote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtquote(%struct.fmtbuf* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fmtbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fmtbuf* %0, %struct.fmtbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @fmtputc(%struct.fmtbuf* %10, i32 %11)
  br label %13

13:                                               ; preds = %117, %4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %6, align 8
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %118

19:                                               ; preds = %13
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %21 [
    i32 92, label %87
    i32 8, label %92
    i32 12, label %97
    i32 10, label %102
    i32 13, label %107
    i32 9, label %112
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 127
  br i1 %26, label %27, label %71

27:                                               ; preds = %24, %21
  %28 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %29 = call i32 @fmtputc(%struct.fmtbuf* %28, i32 92)
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 40
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 6
  %36 = and i32 %35, 7
  %37 = add nsw i32 48, %36
  %38 = call i32 @fmtputc(%struct.fmtbuf* %33, i32 %37)
  %39 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 7
  %43 = add nsw i32 48, %42
  %44 = call i32 @fmtputc(%struct.fmtbuf* %39, i32 %43)
  %45 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 7
  %48 = add nsw i32 48, %47
  %49 = call i32 @fmtputc(%struct.fmtbuf* %45, i32 %48)
  br label %70

50:                                               ; preds = %27
  %51 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %52 = call i32 @fmtputc(%struct.fmtbuf* %51, i32 120)
  %53 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 @fmtputc(%struct.fmtbuf* %53, i32 %60)
  %62 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @fmtputc(%struct.fmtbuf* %62, i32 %68)
  br label %70

70:                                               ; preds = %50, %32
  br label %86

71:                                               ; preds = %24
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71
  %80 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %81 = call i32 @fmtputc(%struct.fmtbuf* %80, i32 92)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @fmtputc(%struct.fmtbuf* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %70
  br label %117

87:                                               ; preds = %19
  %88 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %89 = call i32 @fmtputc(%struct.fmtbuf* %88, i32 92)
  %90 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %91 = call i32 @fmtputc(%struct.fmtbuf* %90, i32 92)
  br label %117

92:                                               ; preds = %19
  %93 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %94 = call i32 @fmtputc(%struct.fmtbuf* %93, i32 92)
  %95 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %96 = call i32 @fmtputc(%struct.fmtbuf* %95, i32 98)
  br label %117

97:                                               ; preds = %19
  %98 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %99 = call i32 @fmtputc(%struct.fmtbuf* %98, i32 92)
  %100 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %101 = call i32 @fmtputc(%struct.fmtbuf* %100, i32 102)
  br label %117

102:                                              ; preds = %19
  %103 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %104 = call i32 @fmtputc(%struct.fmtbuf* %103, i32 92)
  %105 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %106 = call i32 @fmtputc(%struct.fmtbuf* %105, i32 110)
  br label %117

107:                                              ; preds = %19
  %108 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %109 = call i32 @fmtputc(%struct.fmtbuf* %108, i32 92)
  %110 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %111 = call i32 @fmtputc(%struct.fmtbuf* %110, i32 114)
  br label %117

112:                                              ; preds = %19
  %113 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %114 = call i32 @fmtputc(%struct.fmtbuf* %113, i32 92)
  %115 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %116 = call i32 @fmtputc(%struct.fmtbuf* %115, i32 116)
  br label %117

117:                                              ; preds = %112, %107, %102, %97, %92, %87, %86
  br label %13

118:                                              ; preds = %13
  %119 = load %struct.fmtbuf*, %struct.fmtbuf** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @fmtputc(%struct.fmtbuf* %119, i32 %120)
  ret void
}

declare dso_local i32 @fmtputc(%struct.fmtbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
