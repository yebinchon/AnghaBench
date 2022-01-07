; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_wine_debugstr_an.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_wine_debugstr_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wine_debugstr_an.hex = internal constant [16 x i8] c"0123456789abcdef", align 16
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"#%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @wine_debugstr_an to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wine_debugstr_an(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = ashr i32 %11, 16
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %141

18:                                               ; preds = %14
  %19 = call i8* @get_temp_buffer(i64 6)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @LOWORD(i8* %21)
  %23 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %3, align 8
  br label %141

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 4
  %38 = call i32 @min(i32 300, i32 %37)
  %39 = add nsw i32 10, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i8* @get_temp_buffer(i64 %41)
  store i8* %42, i8** %7, align 8
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 34, i8* %43, align 1
  br label %45

45:                                               ; preds = %124, %35
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 -9
  %55 = icmp ule i8* %50, %54
  br label %56

56:                                               ; preds = %49, %45
  %57 = phi i1 [ false, %45 ], [ %55, %49 ]
  br i1 %57, label %58, label %125

58:                                               ; preds = %56
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %59, align 1
  store i8 %61, i8* %9, align 1
  %62 = load i8, i8* %9, align 1
  %63 = zext i8 %62 to i32
  switch i32 %63, label %89 [
    i32 10, label %64
    i32 13, label %69
    i32 9, label %74
    i32 34, label %79
    i32 92, label %84
  ]

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  store i8 92, i8* %65, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 110, i8* %67, align 1
  br label %124

69:                                               ; preds = %58
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  store i8 92, i8* %70, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  store i8 114, i8* %72, align 1
  br label %124

74:                                               ; preds = %58
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 92, i8* %75, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 116, i8* %77, align 1
  br label %124

79:                                               ; preds = %58
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  store i8 92, i8* %80, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  store i8 34, i8* %82, align 1
  br label %124

84:                                               ; preds = %58
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 92, i8* %85, align 1
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8 92, i8* %87, align 1
  br label %124

89:                                               ; preds = %58
  %90 = load i8, i8* %9, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sge i32 %91, 32
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8, i8* %9, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sle i32 %95, 126
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8, i8* %9, align 1
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 %98, i8* %99, align 1
  br label %123

101:                                              ; preds = %93, %89
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  store i8 92, i8* %102, align 1
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  store i8 120, i8* %104, align 1
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = ashr i32 %107, 4
  %109 = and i32 %108, 15
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* @wine_debugstr_an.hex, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %6, align 8
  store i8 %112, i8* %113, align 1
  %115 = load i8, i8* %9, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 15
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* @wine_debugstr_an.hex, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  store i8 %120, i8* %121, align 1
  br label %123

123:                                              ; preds = %101, %97
  br label %124

124:                                              ; preds = %123, %84, %79, %74, %69, %64
  br label %45

125:                                              ; preds = %56
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  store i8 34, i8* %126, align 1
  %128 = load i32, i32* %5, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  store i8 46, i8* %131, align 1
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %6, align 8
  store i8 46, i8* %133, align 1
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  store i8 46, i8* %135, align 1
  br label %137

137:                                              ; preds = %130, %125
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %6, align 8
  store i8 0, i8* %138, align 1
  %140 = load i8*, i8** %7, align 8
  store i8* %140, i8** %3, align 8
  br label %141

141:                                              ; preds = %137, %18, %17
  %142 = load i8*, i8** %3, align 8
  ret i8* %142
}

declare dso_local i8* @get_temp_buffer(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @LOWORD(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
