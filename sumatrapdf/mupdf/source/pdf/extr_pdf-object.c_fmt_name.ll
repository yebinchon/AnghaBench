; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.fmt*, i32*)* @fmt_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_name(i32* %0, %struct.fmt* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fmt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.fmt* %1, %struct.fmt** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @pdf_to_name(i32* %10, i32* %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.fmt*, %struct.fmt** %5, align 8
  %16 = call i32 @fmt_putc(i32* %14, %struct.fmt* %15, i8 zeroext 47)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %123, %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %126

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isdelim(i8 zeroext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @iswhite(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %64, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %54, 32
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sge i32 %62, 127
  br i1 %63, label %64, label %113

64:                                               ; preds = %56, %48, %40, %32, %24
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.fmt*, %struct.fmt** %5, align 8
  %67 = call i32 @fmt_putc(i32* %65, %struct.fmt* %66, i8 zeroext 35)
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = ashr i32 %73, 4
  %75 = and i32 %74, 15
  store i32 %75, i32* %9, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.fmt*, %struct.fmt** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 10
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 48
  br label %87

83:                                               ; preds = %64
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 65
  %86 = sub nsw i32 %85, 10
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i32 [ %82, %80 ], [ %86, %83 ]
  %89 = trunc i32 %88 to i8
  %90 = call i32 @fmt_putc(i32* %76, %struct.fmt* %77, i8 zeroext %89)
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 15
  store i32 %97, i32* %9, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.fmt*, %struct.fmt** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 10
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 48
  br label %109

105:                                              ; preds = %87
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 65
  %108 = sub nsw i32 %107, 10
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i32 [ %104, %102 ], [ %108, %105 ]
  %111 = trunc i32 %110 to i8
  %112 = call i32 @fmt_putc(i32* %98, %struct.fmt* %99, i8 zeroext %111)
  br label %122

113:                                              ; preds = %56
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.fmt*, %struct.fmt** %5, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @fmt_putc(i32* %114, %struct.fmt* %115, i8 zeroext %120)
  br label %122

122:                                              ; preds = %113, %109
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %17

126:                                              ; preds = %17
  ret void
}

declare dso_local i64 @pdf_to_name(i32*, i32*) #1

declare dso_local i32 @fmt_putc(i32*, %struct.fmt*, i8 zeroext) #1

declare dso_local i64 @isdelim(i8 zeroext) #1

declare dso_local i64 @iswhite(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
