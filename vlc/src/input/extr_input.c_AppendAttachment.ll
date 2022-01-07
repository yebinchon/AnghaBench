; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_AppendAttachment.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_AppendAttachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32***, i32***, i32, i32**, i32*)* @AppendAttachment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AppendAttachment(i32* %0, i32*** %1, i32*** %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32***, align 8
  %9 = alloca i32***, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  store i32* %0, i32** %7, align 8
  store i32*** %1, i32**** %8, align 8
  store i32*** %2, i32**** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32***, i32**** %8, align 8
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32** @realloc(i32** %20, i32 %26)
  store i32** %27, i32*** %15, align 8
  %28 = load i32**, i32*** %15, align 8
  %29 = call i64 @likely(i32** %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %6
  %32 = load i32**, i32*** %15, align 8
  %33 = load i32***, i32**** %8, align 8
  store i32** %32, i32*** %33, align 8
  %34 = load i32***, i32**** %9, align 8
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32** @realloc(i32** %35, i32 %41)
  store i32** %42, i32*** %16, align 8
  %43 = load i32**, i32*** %16, align 8
  %44 = call i64 @likely(i32** %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %31
  %47 = load i32**, i32*** %16, align 8
  %48 = load i32***, i32**** %9, align 8
  store i32** %47, i32*** %48, align 8
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %69, %46
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i32**, i32*** %11, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** %15, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %58, i32** %62, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32**, i32*** %16, align 8
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  store i32* %63, i32** %68, align 8
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %49

72:                                               ; preds = %49
  %73 = load i32, i32* %13, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32**, i32*** %11, align 8
  %76 = call i32 @free(i32** %75)
  br label %96

77:                                               ; preds = %31
  br label %78

78:                                               ; preds = %77, %6
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32**, i32*** %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @vlc_input_attachment_Delete(i32* %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %79

93:                                               ; preds = %79
  %94 = load i32**, i32*** %11, align 8
  %95 = call i32 @free(i32** %94)
  br label %96

96:                                               ; preds = %93, %72
  ret void
}

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i64 @likely(i32**) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @vlc_input_attachment_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
