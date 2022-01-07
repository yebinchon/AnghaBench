; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ram.c_ParseTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ram.c_ParseTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ParseTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseTime(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i8* @SkipBlanks(i8* %14, i32 %16)
  store i8* %17, i8** %3, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %41, %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isdigit(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %45

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %30, 10
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 48
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %45

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  br label %18

45:                                               ; preds = %40, %27
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @SkipBlanks(i8* %47, i32 %53)
  store i8* %54, i8** %3, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 58
  br i1 %58, label %59, label %160

59:                                               ; preds = %45
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i8* @SkipBlanks(i8* %62, i32 %68)
  store i8* %69, i8** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 %70, 60
  store i32 %71, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %95, %59
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ult i8* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isdigit(i8 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i1 [ false, %72 ], [ %80, %76 ]
  br i1 %82, label %83, label %99

83:                                               ; preds = %81
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 %84, 10
  %86 = load i8*, i8** %3, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = sub nsw i32 %88, 48
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %99

95:                                               ; preds = %83
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %6, align 4
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %3, align 8
  br label %72

99:                                               ; preds = %94, %81
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i8*, i8** %3, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %3, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i8* @SkipBlanks(i8* %103, i32 %109)
  store i8* %110, i8** %3, align 8
  %111 = load i8*, i8** %3, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %159

115:                                              ; preds = %99
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %3, align 8
  %118 = load i8*, i8** %3, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = call i8* @SkipBlanks(i8* %118, i32 %124)
  store i8* %125, i8** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = mul nsw i32 %126, 60
  store i32 %127, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %151, %115
  %129 = load i8*, i8** %3, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = icmp ult i8* %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8*, i8** %3, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i64 @isdigit(i8 zeroext %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %132, %128
  %138 = phi i1 [ false, %128 ], [ %136, %132 ]
  br i1 %138, label %139, label %155

139:                                              ; preds = %137
  %140 = load i32, i32* %6, align 4
  %141 = mul nsw i32 %140, 10
  %142 = load i8*, i8** %3, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = sub nsw i32 %144, 48
  %146 = add nsw i32 %141, %145
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  store i32 0, i32* %6, align 4
  br label %155

151:                                              ; preds = %139
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %6, align 4
  %153 = load i8*, i8** %3, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %3, align 8
  br label %128

155:                                              ; preds = %150, %137
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %99
  br label %160

160:                                              ; preds = %159, %45
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i8* @SkipBlanks(i8*, i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
