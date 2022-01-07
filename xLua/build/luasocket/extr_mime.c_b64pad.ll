; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_b64pad.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_b64pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.b64pad.code = private unnamed_addr constant [4 x i8] c"====", align 1
@b64base = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32*)* @b64pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b64pad(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.b64pad.code, i32 0, i32 0), i64 4, i1 false)
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %73 [
    i64 1, label %11
    i64 2, label %34
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = shl i32 %15, 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** @b64base, align 8
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, 63
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i64, i64* %7, align 8
  %25 = lshr i64 %24, 6
  store i64 %25, i64* %7, align 8
  %26 = load i8*, i8** @b64base, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %33 = call i32 @luaL_addlstring(i32* %31, i8* %32, i32 4)
  br label %74

34:                                               ; preds = %3
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = shl i64 %39, 8
  store i64 %40, i64* %7, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = shl i64 %47, 2
  store i64 %48, i64* %7, align 8
  %49 = load i8*, i8** @b64base, align 8
  %50 = load i64, i64* %7, align 8
  %51 = and i64 %50, 63
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 %53, i8* %54, align 1
  %55 = load i64, i64* %7, align 8
  %56 = lshr i64 %55, 6
  store i64 %56, i64* %7, align 8
  %57 = load i8*, i8** @b64base, align 8
  %58 = load i64, i64* %7, align 8
  %59 = and i64 %58, 63
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %61, i8* %62, align 1
  %63 = load i64, i64* %7, align 8
  %64 = lshr i64 %63, 6
  store i64 %64, i64* %7, align 8
  %65 = load i8*, i8** @b64base, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %68, i8* %69, align 1
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %72 = call i32 @luaL_addlstring(i32* %70, i8* %71, i32 4)
  br label %74

73:                                               ; preds = %3
  br label %74

74:                                               ; preds = %73, %34, %11
  ret i64 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
