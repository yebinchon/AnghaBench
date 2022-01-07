; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_avci.h_AVCi_create_AnnexB.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_avci.h_AVCi_create_AnnexB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.AVCi_create_AnnexB.rgi_startcode = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*)* @AVCi_create_AnnexB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AVCi_create_AnnexB(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %11, align 8
  %14 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.AVCi_create_AnnexB.rgi_startcode to i8*), i64 16, i1 false)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @AVCi_lookup(i32 %15, i32 %16, i32** %8, i32* %9, i32** %7, i32* %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = add nsw i32 %22, 10
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %19
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %33 = call i32 @memcpy(i32* %31, i32* %32, i32 4)
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 103, i32* %35, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 5, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %47 = call i32 @memcpy(i32* %45, i32* %46, i32 4)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 9, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 104, i32* %52, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 10, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %28, %19
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i32*, i32** %11, align 8
  ret i32* %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @AVCi_lookup(i32, i32, i32**, i32*, i32**, i32*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
