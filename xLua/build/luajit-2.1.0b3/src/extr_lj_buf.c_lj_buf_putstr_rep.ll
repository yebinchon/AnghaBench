; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_buf.c_lj_buf_putstr_rep.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_buf.c_lj_buf_putstr_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@LJ_MAX_STR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_buf_putstr_rep(i32* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul nsw i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @LJ_MAX_STR, align 8
  %27 = icmp sgt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @LJ_UNLIKELY(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @sbufL(i32* %32)
  %34 = call i32 @lj_err_mem(i32 %33)
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i8* @lj_buf_more(i32* %36, i64 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = call i8* @strdata(%struct.TYPE_4__* %42)
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %10, align 1
  br label %46

46:                                               ; preds = %50, %41
  %47 = load i8, i8* %10, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  store i8 %47, i8* %48, align 1
  br label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %6, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %46, label %54

54:                                               ; preds = %50
  br label %79

55:                                               ; preds = %35
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = call i8* @strdata(%struct.TYPE_4__* %56)
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %74, %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = call i8* @strdata(%struct.TYPE_4__* %61)
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %69, %60
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %12, align 8
  %66 = load i8, i8* %64, align 1
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  store i8 %66, i8* %67, align 1
  br label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ult i8* %70, %71
  br i1 %72, label %63, label %73

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %6, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %60, label %78

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @setsbufP(i32* %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %18, %3
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @lj_err_mem(i32) #1

declare dso_local i32 @sbufL(i32*) #1

declare dso_local i8* @lj_buf_more(i32*, i64) #1

declare dso_local i8* @strdata(%struct.TYPE_4__*) #1

declare dso_local i32 @setsbufP(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
