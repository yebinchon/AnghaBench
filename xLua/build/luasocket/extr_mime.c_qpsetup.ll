; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qpsetup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qpsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QP_QUOTED = common dso_local global i32 0, align 4
@QP_PLAIN = common dso_local global i32 0, align 4
@QP_IF_LAST = common dso_local global i32 0, align 4
@QP_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @qpsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpsetup(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i32, i32* @QP_QUOTED, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 %10, i32* %14, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %6

18:                                               ; preds = %6
  store i32 33, i32* %5, align 4
  br label %19

19:                                               ; preds = %28, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %20, 60
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @QP_PLAIN, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %19

31:                                               ; preds = %19
  store i32 62, i32* %5, align 4
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 126
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* @QP_PLAIN, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %32

44:                                               ; preds = %32
  %45 = load i32, i32* @QP_IF_LAST, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 9
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @QP_IF_LAST, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 32
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @QP_CR, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 13
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %62, %44
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 255, i32* %61, align 4
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %54

65:                                               ; preds = %54
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 48
  store i32 0, i32* %67, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 49
  store i32 1, i32* %69, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 50
  store i32 2, i32* %71, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 51
  store i32 3, i32* %73, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 52
  store i32 4, i32* %75, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 53
  store i32 5, i32* %77, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 54
  store i32 6, i32* %79, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 55
  store i32 7, i32* %81, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 56
  store i32 8, i32* %83, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 57
  store i32 9, i32* %85, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 65
  store i32 10, i32* %87, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 97
  store i32 10, i32* %89, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 66
  store i32 11, i32* %91, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 98
  store i32 11, i32* %93, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 67
  store i32 12, i32* %95, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 99
  store i32 12, i32* %97, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 68
  store i32 13, i32* %99, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 100
  store i32 13, i32* %101, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 69
  store i32 14, i32* %103, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 101
  store i32 14, i32* %105, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 70
  store i32 15, i32* %107, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 102
  store i32 15, i32* %109, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
