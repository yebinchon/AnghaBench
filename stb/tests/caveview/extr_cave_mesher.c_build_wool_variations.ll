; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_build_wool_variations.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_build_wool_variations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.build_wool_variations.tex = private unnamed_addr constant [16 x i8] c"@\D2\C2\B2\A2\92\82r\E1\D1\C1\B1\A1\91\81q", align 16
@next_blocktype = common dso_local global i64 0, align 8
@minecraft_tex1_for_blocktype = common dso_local global i8** null, align 8
@minecraft_geom_for_blocktype = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_wool_variations(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = bitcast [16 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.build_wool_variations.tex, i32 0, i32 0), i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %59, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %62

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 %17, i8* %21, align 1
  br label %58

22:                                               ; preds = %12
  %23 = load i64, i64* @next_blocktype, align 8
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 %24, i8* %28, align 1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %44, %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i8**, i8*** @minecraft_tex1_for_blocktype, align 8
  %38 = load i64, i64* @next_blocktype, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %36, i8* %43, align 1
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32*, i32** @minecraft_geom_for_blocktype, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @minecraft_geom_for_blocktype, align 8
  %54 = load i64, i64* @next_blocktype, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* @next_blocktype, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* @next_blocktype, align 8
  br label %58

58:                                               ; preds = %47, %15
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %9

62:                                               ; preds = %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
