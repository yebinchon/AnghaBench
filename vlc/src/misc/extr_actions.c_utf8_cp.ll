; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_utf8_cp.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_utf8_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @utf8_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @utf8_cp(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  br label %100

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2048
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 0, i8* %20, align 1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 63
  %23 = or i32 128, %22
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 6
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 192, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %31, i8* %33, align 1
  br label %99

34:                                               ; preds = %15
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 65536
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 0, i8* %39, align 1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 63
  %42 = or i32 128, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 6
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 63
  %50 = or i32 128, %49
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %54, 6
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 224, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %58, i8* %60, align 1
  br label %98

61:                                               ; preds = %34
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 2097152
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8 0, i8* %66, align 1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 63
  %69 = or i32 128, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  store i8 %70, i8* %72, align 1
  %73 = load i32, i32* %4, align 4
  %74 = ashr i32 %73, 6
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, 63
  %77 = or i32 128, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %4, align 4
  %82 = ashr i32 %81, 6
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 63
  %85 = or i32 128, %84
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %88, align 1
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 6
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = or i32 224, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %93, i8* %95, align 1
  br label %97

96:                                               ; preds = %61
  store i8* null, i8** %3, align 8
  br label %102

97:                                               ; preds = %64
  br label %98

98:                                               ; preds = %97, %37
  br label %99

99:                                               ; preds = %98, %18
  br label %100

100:                                              ; preds = %99, %8
  %101 = load i8*, i8** %5, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
