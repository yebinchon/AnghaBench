; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetWaveTag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetWaveTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"wave\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"frma\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mp4a\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"srcq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @GetWaveTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetWaveTag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @bo_add_fourcc(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @box_gather(i32* %15, i32* %16)
  br label %18

18:                                               ; preds = %12, %8
  %19 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @bo_add_32be(i32* %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @box_gather(i32* %25, i32* %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32*, i32** %2, align 8
  %30 = call i32* @GetESDS(i32* %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @box_gather(i32* %31, i32* %32)
  %34 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @bo_add_32be(i32* %38, i32 64)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @box_gather(i32* %40, i32* %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @bo_add_32be(i32* %44, i32 8)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @bo_add_32be(i32* %46, i32 0)
  br label %48

48:                                               ; preds = %43, %1
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local i32* @box_new(i8*) #1

declare dso_local i32 @bo_add_fourcc(i32*, i8*) #1

declare dso_local i32 @box_gather(i32*, i32*) #1

declare dso_local i32 @bo_add_32be(i32*, i32) #1

declare dso_local i32* @GetESDS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
