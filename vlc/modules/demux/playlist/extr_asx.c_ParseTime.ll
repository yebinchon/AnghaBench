; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_ParseTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_ParseTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@CLOCK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ParseTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseTime(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @assert(i32* %13)
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @xml_ReaderNextAttr(i32* %16, i8** %8)
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strncasecmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %15, label %27

27:                                               ; preds = %25
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %122

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %81, %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isdigit(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 10
  store i32 %46, i32* %11, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 48
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %44
  br label %81

59:                                               ; preds = %39
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %68, 60
  store i32 %69, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %80

70:                                               ; preds = %59
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  br label %35

84:                                               ; preds = %35
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %99, %95
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 6
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 %100, 10
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %96

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @CLOCK_FREQ, align 4
  %107 = mul nsw i32 %105, %106
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32, i32* %11, align 4
  %112 = call i64 @VLC_TICK_FROM_US(i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %110, %104
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i32, i32* %12, align 4
  %121 = load i32*, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %30
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @VLC_TICK_FROM_US(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
