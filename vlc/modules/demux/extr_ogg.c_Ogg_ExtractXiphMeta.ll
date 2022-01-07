; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ExtractXiphMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ExtractXiphMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32, i32)* @Ogg_ExtractXiphMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ogg_ExtractXiphMeta(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @xiph_SplitHeaders(i32* %19, i8** %22, i32* %14, i32 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %51

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  %30 = icmp uge i32 %29, 2
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = getelementptr inbounds i32, i32* %19, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %22, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds i32, i32* %19, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %46, %47
  %49 = call i32 @Ogg_ExtractComments(i32* %37, i32* %38, i32* %44, i32 %48)
  br label %50

50:                                               ; preds = %36, %31, %28
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %15, align 4
  switch i32 %53, label %55 [
    i32 0, label %54
    i32 1, label %54
  ]

54:                                               ; preds = %51, %51
  ret void

55:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xiph_SplitHeaders(i32*, i8**, i32*, i32, i8*) #2

declare dso_local i32 @Ogg_ExtractComments(i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
