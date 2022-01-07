; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_str_out.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_str_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\)\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32)* @fmt_str_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_str_out(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.fmt*
  store %struct.fmt* %13, %struct.fmt** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %124, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %127

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.fmt*, %struct.fmt** %9, align 8
  %30 = call i32 @fmt_puts(i32* %28, %struct.fmt* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %123

31:                                               ; preds = %18
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.fmt*, %struct.fmt** %9, align 8
  %37 = call i32 @fmt_puts(i32* %35, %struct.fmt* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %122

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.fmt*, %struct.fmt** %9, align 8
  %44 = call i32 @fmt_puts(i32* %42, %struct.fmt* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %121

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.fmt*, %struct.fmt** %9, align 8
  %51 = call i32 @fmt_puts(i32* %49, %struct.fmt* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %120

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.fmt*, %struct.fmt** %9, align 8
  %58 = call i32 @fmt_puts(i32* %56, %struct.fmt* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %119

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 40
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.fmt*, %struct.fmt** %9, align 8
  %65 = call i32 @fmt_puts(i32* %63, %struct.fmt* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %118

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 41
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.fmt*, %struct.fmt** %9, align 8
  %72 = call i32 @fmt_puts(i32* %70, %struct.fmt* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %117

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 92
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.fmt*, %struct.fmt** %9, align 8
  %79 = call i32 @fmt_puts(i32* %77, %struct.fmt* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %116

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 32
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp sge i32 %84, 127
  br i1 %85, label %86, label %110

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.fmt*, %struct.fmt** %9, align 8
  %89 = call i32 @fmt_putc(i32* %87, %struct.fmt* %88, i32 92)
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.fmt*, %struct.fmt** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sdiv i32 %92, 64
  %94 = and i32 %93, 7
  %95 = add nsw i32 48, %94
  %96 = call i32 @fmt_putc(i32* %90, %struct.fmt* %91, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.fmt*, %struct.fmt** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sdiv i32 %99, 8
  %101 = and i32 %100, 7
  %102 = add nsw i32 48, %101
  %103 = call i32 @fmt_putc(i32* %97, %struct.fmt* %98, i32 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.fmt*, %struct.fmt** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, 7
  %108 = add nsw i32 48, %107
  %109 = call i32 @fmt_putc(i32* %104, %struct.fmt* %105, i32 %108)
  br label %115

110:                                              ; preds = %83
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.fmt*, %struct.fmt** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @fmt_putc(i32* %111, %struct.fmt* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %86
  br label %116

116:                                              ; preds = %115, %76
  br label %117

117:                                              ; preds = %116, %69
  br label %118

118:                                              ; preds = %117, %62
  br label %119

119:                                              ; preds = %118, %55
  br label %120

120:                                              ; preds = %119, %48
  br label %121

121:                                              ; preds = %120, %41
  br label %122

122:                                              ; preds = %121, %34
  br label %123

123:                                              ; preds = %122, %27
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %14

127:                                              ; preds = %14
  ret void
}

declare dso_local i32 @fmt_puts(i32*, %struct.fmt*, i8*) #1

declare dso_local i32 @fmt_putc(i32*, %struct.fmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
