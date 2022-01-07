; ModuleID = '/home/carl/AnghaBench/rufus/src/ms-sys/extr_fat32.c_is_fat_32_br.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ms-sys/extr_fat32.c_is_fat_32_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.is_fat_32_br.aucRef = private unnamed_addr constant [2 x i8] c"U\AA", align 1
@__const.is_fat_32_br.aucMagic = private unnamed_addr constant [8 x i8] c"MSWIN4.1", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_fat_32_br(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.is_fat_32_br.aucRef, i32 0, i32 0), i64 2, i1 false)
  %8 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.is_fat_32_br.aucMagic, i32 0, i32 0), i64 8, i1 false)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 512
  %16 = add nsw i32 510, %15
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %18 = call i32 @contains_data(i32* %13, i32 %16, i8* %17, i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %32

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %28 = call i32 @contains_data(i32* %26, i32 3, i8* %27, i32 8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %32

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @contains_data(i32*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
