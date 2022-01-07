; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_default_dbgstr_wn.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_default_dbgstr_wn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32)*, i32 (i8*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@funcs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"#%04x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @default_dbgstr_wn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @default_dbgstr_wn(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = ptrtoint i32* %11 to i32
  %13 = ashr i32 %12, 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %154

19:                                               ; preds = %15
  %20 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 0), align 8
  %21 = call i8* %20(i32 6)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @LOWORD(i32* %23)
  %25 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %3, align 8
  br label %154

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  store i32* %31, i32** %9, align 8
  br label %32

32:                                               ; preds = %36, %30
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  br label %32

39:                                               ; preds = %32
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %27
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 5
  %54 = call i32 @min(i32 300, i32 %53)
  %55 = add nsw i32 12, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %8, align 8
  %57 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 0), align 8
  %58 = load i64, i64* %8, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i8* %57(i32 %59)
  store i8* %60, i8** %7, align 8
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  store i8 76, i8* %61, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i8 34, i8* %63, align 1
  br label %65

65:                                               ; preds = %128, %51
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  %68 = icmp sgt i32 %66, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 -10
  %75 = icmp ule i8* %70, %74
  br label %76

76:                                               ; preds = %69, %65
  %77 = phi i1 [ false, %65 ], [ %75, %69 ]
  br i1 %77, label %78, label %129

78:                                               ; preds = %76
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %4, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  switch i32 %82, label %108 [
    i32 10, label %83
    i32 13, label %88
    i32 9, label %93
    i32 34, label %98
    i32 92, label %103
  ]

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  store i8 92, i8* %84, align 1
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 110, i8* %86, align 1
  br label %128

88:                                               ; preds = %78
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  store i8 92, i8* %89, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  store i8 114, i8* %91, align 1
  br label %128

93:                                               ; preds = %78
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 92, i8* %94, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  store i8 116, i8* %96, align 1
  br label %128

98:                                               ; preds = %78
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 92, i8* %99, align 1
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  store i8 34, i8* %101, align 1
  br label %128

103:                                              ; preds = %78
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  store i8 92, i8* %104, align 1
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %6, align 8
  store i8 92, i8* %106, align 1
  br label %128

108:                                              ; preds = %78
  %109 = load i32, i32* %10, align 4
  %110 = icmp sge i32 %109, 32
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = icmp sle i32 %112, 126
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  store i8 %116, i8* %117, align 1
  br label %127

119:                                              ; preds = %111, %108
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  store i8 92, i8* %120, align 1
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @sprintf(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  store i8* %126, i8** %6, align 8
  br label %127

127:                                              ; preds = %119, %114
  br label %128

128:                                              ; preds = %127, %103, %98, %93, %88, %83
  br label %65

129:                                              ; preds = %76
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %6, align 8
  store i8 34, i8* %130, align 1
  %132 = load i32, i32* %5, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  store i8 46, i8* %135, align 1
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %6, align 8
  store i8 46, i8* %137, align 1
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  store i8 46, i8* %139, align 1
  br label %141

141:                                              ; preds = %134, %129
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %6, align 8
  store i8 0, i8* %142, align 1
  %144 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 1), align 8
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = call i32 %144(i8* %145, i32 %151)
  %153 = load i8*, i8** %7, align 8
  store i8* %153, i8** %3, align 8
  br label %154

154:                                              ; preds = %141, %19, %18
  %155 = load i8*, i8** %3, align 8
  ret i8* %155
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @LOWORD(i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
