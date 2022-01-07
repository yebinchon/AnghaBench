; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_find_chunk_mdat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_find_chunk_mdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Couldn't find mdat in box 1!\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't find mdat in box 2!\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mdat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32**)* @find_chunk_mdat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_chunk_mdat(i32* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %72, %4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ult i32* %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = ptrtoint i32* %18 to i64
  %21 = ptrtoint i32* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 4
  %24 = icmp slt i64 %23, 8
  br i1 %24, label %25, label %29

25:                                               ; preds = %17, %13
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @msg_Err(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32**, i32*** %9, align 8
  store i32* null, i32** %28, align 8
  store i32 0, i32* %5, align 4
  br label %86

29:                                               ; preds = %17
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @U32_AT(i32* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %64

40:                                               ; preds = %29
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = icmp sge i64 %46, 12
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @U64_AT(i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  store i32* %52, i32** %7, align 8
  br label %57

53:                                               ; preds = %40
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @msg_Err(i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32**, i32*** %9, align 8
  store i32* null, i32** %56, align 8
  store i32 0, i32* %5, align 4
  br label %86

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  store i32* %58, i32** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 16
  %61 = load i32*, i32** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %7, align 8
  br label %71

64:                                               ; preds = %29
  %65 = load i32*, i32** %7, align 8
  store i32* %65, i32** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 8
  %68 = load i32*, i32** %7, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %7, align 8
  br label %71

71:                                               ; preds = %64, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32*, i32** %10, align 8
  %74 = call i64 @memcmp(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %75 = icmp ne i64 0, %74
  br i1 %75, label %13, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %11, align 8
  %78 = load i32**, i32*** %9, align 8
  store i32* %77, i32** %78, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %76, %53, %25
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i64 @U32_AT(i32*) #1

declare dso_local i32 @U64_AT(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
