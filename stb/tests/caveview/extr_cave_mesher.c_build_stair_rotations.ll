; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_build_stair_rotations.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_build_stair_rotations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@minecraft_color_for_blocktype = common dso_local global i32** null, align 8
@next_blocktype = common dso_local global i64 0, align 8
@minecraft_tex1_for_blocktype = common dso_local global i32** null, align 8
@STBVOX_GEOM_ceil_slope_north_is_bottom = common dso_local global i32 0, align 4
@minecraft_geom_for_blocktype = common dso_local global i8* null, align 8
@STBVOX_GEOM_floor_slope_north_is_top = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_stair_rotations(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %42, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 6
  br i1 %8, label %9, label %45

9:                                                ; preds = %6
  %10 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %20 = load i64, i64* @next_blocktype, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %36 = load i64, i64* @next_blocktype, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %34, i32* %41, align 4
  br label %42

42:                                               ; preds = %9
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %6

45:                                               ; preds = %6
  %46 = load i32, i32* @STBVOX_GEOM_ceil_slope_north_is_bottom, align 4
  %47 = call i64 @STBVOX_MAKE_GEOMETRY(i32 %46, i32 0, i32 0)
  %48 = trunc i64 %47 to i8
  %49 = load i8*, i8** @minecraft_geom_for_blocktype, align 8
  %50 = load i64, i64* @next_blocktype, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %48, i8* %51, align 1
  %52 = load i32, i32* @STBVOX_GEOM_floor_slope_north_is_top, align 4
  %53 = call i64 @STBVOX_MAKE_GEOMETRY(i32 %52, i32 0, i32 0)
  %54 = trunc i64 %53 to i8
  %55 = load i8*, i8** @minecraft_geom_for_blocktype, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 %54, i8* %58, align 1
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %89, %45
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 0, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 %64, i8* %69, align 1
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 0, %71
  %73 = add nsw i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  store i8 %64, i8* %75, align 1
  %76 = load i64, i64* @next_blocktype, align 8
  %77 = trunc i64 %76 to i8
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 4, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 %77, i8* %82, align 1
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 4, %84
  %86 = add nsw i32 %85, 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  store i8 %77, i8* %88, align 1
  br label %89

89:                                               ; preds = %62
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %59

92:                                               ; preds = %59
  %93 = load i64, i64* @next_blocktype, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* @next_blocktype, align 8
  ret void
}

declare dso_local i64 @STBVOX_MAKE_GEOMETRY(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
