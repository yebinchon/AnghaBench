; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetSVQ3Tag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetSVQ3Tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"SMI \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SEQH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @GetSVQ3Tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetSVQ3Tag(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %70

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ugt i64 %15, 78
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 70
  store i32* %22, i32** %8, align 8
  br label %23

23:                                               ; preds = %54, %17
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @GetDWBE(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %59

34:                                               ; preds = %28
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = sub nsw i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = call i32 @bo_add_mem(i32* %41, i32 %49, i32* %51)
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %3, align 8
  br label %70

54:                                               ; preds = %34
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %8, align 8
  br label %23

59:                                               ; preds = %33, %23
  br label %60

60:                                               ; preds = %59, %14
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @bo_add_fourcc(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @bo_add_32be(i32* %63, i32 5)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @bo_add_32be(i32* %65, i32 -490725091)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @bo_add_8(i32* %67, i32 192)
  %69 = load i32*, i32** %6, align 8
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %60, %40, %13
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32* @box_new(i8*) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bo_add_mem(i32*, i32, i32*) #1

declare dso_local i32 @bo_add_fourcc(i32*, i8*) #1

declare dso_local i32 @bo_add_32be(i32*, i32) #1

declare dso_local i32 @bo_add_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
