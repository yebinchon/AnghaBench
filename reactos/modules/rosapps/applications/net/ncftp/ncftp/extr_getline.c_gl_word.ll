; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_word.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_pos = common dso_local global i32 0, align 4
@gl_buf = common dso_local global i32* null, align 8
@gl_cnt = common dso_local global i32 0, align 4
@gl_prompt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gl_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_word(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @gl_pos, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32*, i32** @gl_buf, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @isspace(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @gl_cnt, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i1 [ false, %8 ], [ %19, %16 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32*, i32** @gl_buf, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @isspace(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @gl_cnt, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %26
  %39 = phi i1 [ false, %26 ], [ %37, %34 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %26

43:                                               ; preds = %38
  br label %100

44:                                               ; preds = %1
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32*, i32** @gl_buf, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @isspace(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %3, align 4
  %61 = icmp sgt i32 %60, 0
  br label %62

62:                                               ; preds = %59, %51
  %63 = phi i1 [ false, %51 ], [ %61, %59 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %3, align 4
  br label %51

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %81, %67
  %69 = load i32*, i32** @gl_buf, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @isspace(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %3, align 4
  %78 = icmp sgt i32 %77, 0
  br label %79

79:                                               ; preds = %76, %68
  %80 = phi i1 [ false, %68 ], [ %78, %76 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %3, align 4
  br label %68

84:                                               ; preds = %79
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @gl_cnt, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32*, i32** @gl_buf, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @isspace(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %88, %84
  br label %100

100:                                              ; preds = %99, %43
  %101 = load i32, i32* @gl_prompt, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @gl_fixup(i32 %101, i32 -1, i32 %102)
  ret void
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @gl_fixup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
