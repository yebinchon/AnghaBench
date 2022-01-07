; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_....demuxxiph.h_xiph_AppendHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_....demuxxiph.h_xiph_AppendHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32, i8*)* @xiph_AppendHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiph_AppendHeaders(i32* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load i8**, i8*** %7, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @xiph_SplitHeaders(i32* %19, i8** %22, i32* %13, i32 %32, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

39:                                               ; preds = %30
  br label %41

40:                                               ; preds = %26, %4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

47:                                               ; preds = %41
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %15, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %19, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %22, i64 %56
  store i8* %54, i8** %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i8**, i8*** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = add i32 %60, 1
  %62 = call i64 @xiph_PackHeaders(i32* %58, i8** %59, i32* %19, i8** %22, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load i32*, i32** %6, align 8
  store i32 0, i32* %65, align 4
  %66 = load i8**, i8*** %7, align 8
  store i8* null, i8** %66, align 8
  br label %67

67:                                               ; preds = %64, %47
  %68 = load i8*, i8** %15, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %75, %73, %45, %37
  %78 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xiph_SplitHeaders(i32*, i8**, i32*, i32, i8*) #2

declare dso_local i64 @xiph_PackHeaders(i32*, i8**, i32*, i8**, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
