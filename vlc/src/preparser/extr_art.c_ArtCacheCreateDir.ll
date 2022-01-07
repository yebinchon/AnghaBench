; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_ArtCacheCreateDir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_ArtCacheCreateDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIR_SEP_CHAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ArtCacheCreateDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArtCacheCreateDir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strcpy(i8* %12, i8* %13)
  store i8* %12, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %51, %1
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @DIR_SEP_CHAR, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br label %33

33:                                               ; preds = %26, %21
  %34 = phi i1 [ false, %21 ], [ %32, %26 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %21

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %56

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @EMPTY_STR(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @vlc_mkdir(i8* %49, i32 448)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8, i8* @DIR_SEP_CHAR, align 1
  %53 = load i8*, i8** %6, align 8
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %16

56:                                               ; preds = %42, %16
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 @vlc_mkdir(i8* %57, i32 448)
  %59 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @EMPTY_STR(i8*) #1

declare dso_local i32 @vlc_mkdir(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
