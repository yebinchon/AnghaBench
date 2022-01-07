; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_parser.c_CodePointToUTF8.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_parser.c_CodePointToUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @CodePointToUTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CodePointToUTF8(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 127
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  store i32 1, i32* %3, align 4
  br label %160

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 2047
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 6
  %19 = or i32 192, %18
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 63
  %25 = or i32 128, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %28, align 1
  store i32 2, i32* %3, align 4
  br label %160

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 65535
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 12
  %35 = or i32 224, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 6
  %41 = and i32 %40, 63
  %42 = or i32 128, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 63
  %48 = or i32 128, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %49, i8* %51, align 1
  store i32 3, i32* %3, align 4
  br label %160

52:                                               ; preds = %29
  %53 = load i32, i32* %4, align 4
  %54 = icmp sle i32 %53, 2097151
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 18
  %58 = or i32 240, %57
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %59, i8* %61, align 1
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 12
  %64 = and i32 %63, 63
  %65 = or i32 128, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* %4, align 4
  %70 = ashr i32 %69, 6
  %71 = and i32 %70, 63
  %72 = or i32 128, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 63
  %78 = or i32 128, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 %79, i8* %81, align 1
  store i32 4, i32* %3, align 4
  br label %160

82:                                               ; preds = %52
  %83 = load i32, i32* %4, align 4
  %84 = icmp sle i32 %83, 67108863
  br i1 %84, label %85, label %119

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = ashr i32 %86, 24
  %88 = or i32 248, %87
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 %89, i8* %91, align 1
  %92 = load i32, i32* %4, align 4
  %93 = ashr i32 %92, 18
  %94 = and i32 %93, 63
  %95 = or i32 128, %94
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8 %96, i8* %98, align 1
  %99 = load i32, i32* %4, align 4
  %100 = ashr i32 %99, 12
  %101 = and i32 %100, 63
  %102 = or i32 128, %101
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8 %103, i8* %105, align 1
  %106 = load i32, i32* %4, align 4
  %107 = ashr i32 %106, 6
  %108 = and i32 %107, 63
  %109 = or i32 128, %108
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  store i8 %110, i8* %112, align 1
  %113 = load i32, i32* %4, align 4
  %114 = and i32 %113, 63
  %115 = or i32 128, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  store i8 %116, i8* %118, align 1
  store i32 5, i32* %3, align 4
  br label %160

119:                                              ; preds = %82
  %120 = load i32, i32* %4, align 4
  %121 = ashr i32 %120, 30
  %122 = or i32 252, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %4, align 4
  %127 = ashr i32 %126, 24
  %128 = and i32 %127, 63
  %129 = or i32 128, %128
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8 %130, i8* %132, align 1
  %133 = load i32, i32* %4, align 4
  %134 = ashr i32 %133, 18
  %135 = and i32 %134, 63
  %136 = or i32 128, %135
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  store i8 %137, i8* %139, align 1
  %140 = load i32, i32* %4, align 4
  %141 = ashr i32 %140, 12
  %142 = and i32 %141, 63
  %143 = or i32 128, %142
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 3
  store i8 %144, i8* %146, align 1
  %147 = load i32, i32* %4, align 4
  %148 = ashr i32 %147, 6
  %149 = and i32 %148, 63
  %150 = or i32 128, %149
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  store i8 %151, i8* %153, align 1
  %154 = load i32, i32* %4, align 4
  %155 = and i32 %154, 63
  %156 = or i32 128, %155
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 5
  store i8 %157, i8* %159, align 1
  store i32 6, i32* %3, align 4
  br label %160

160:                                              ; preds = %119, %85, %55, %32, %16, %8
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
