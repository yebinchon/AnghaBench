; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mxpeg_helper.h_IsMxpeg.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mxpeg_helper.h_IsMxpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"MXF\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @IsMxpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsMxpeg(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_stream_Peek(i32* %8, i32** %4, i32 256)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @find_jpeg_marker(i32* %6, i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 216
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 2
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %129

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i32 @find_jpeg_marker(i32* %6, i32* %21, i32 %23)
  %25 = icmp ne i32 %24, 224
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %129

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %129

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @GetWBE(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 6
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 6
  store i32 %48, i32* %5, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @vlc_stream_Peek(i32* %49, i32** %4, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %129

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 254
  br i1 %70, label %72, label %71

71:                                               ; preds = %63, %56
  store i32 0, i32* %2, align 4
  br label %129

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %6, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @GetWBE(i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = call i64 @memcmp(i32* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %129

88:                                               ; preds = %72
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %91, 8
  store i32 %92, i32* %5, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @vlc_stream_Peek(i32* %93, i32** %4, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %129

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 255
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 254
  br i1 %116, label %118, label %117

117:                                              ; preds = %109, %99
  store i32 0, i32* %2, align 4
  br label %129

118:                                              ; preds = %109
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 4
  store i32 %120, i32* %6, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i64 @memcmp(i32* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %129

128:                                              ; preds = %118
  store i32 1, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %127, %117, %98, %87, %71, %54, %32, %26, %19
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i32 @find_jpeg_marker(i32*, i32*, i32) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
