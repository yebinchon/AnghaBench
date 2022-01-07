; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_scale_texture.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_scale_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEX_SIZE = common dso_local global i32 0, align 4
@texture = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scale_texture(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 256
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %80, %20
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @TEX_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %76, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @TEX_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32, i32* %14, align 4
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 2
  %44 = add nsw i32 %41, %43
  %45 = mul nsw i32 4, %44
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 4, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 2
  %51 = add nsw i32 %48, %50
  %52 = mul nsw i32 %47, %51
  %53 = add nsw i32 %45, %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %40, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 24
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %37
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load i32, i32* %14, align 4
  %68 = load i32**, i32*** @texture, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %67, i32* %75, align 4
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %29

79:                                               ; preds = %29
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %24

83:                                               ; preds = %24
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
