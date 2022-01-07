; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt.c_lj_strfmt_putfstr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt.c_lj_strfmt_putfstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@STRFMT_F_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_strfmt_putfstr(i32* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @STRFMT_PREC(i32 %13)
  %15 = icmp sle i64 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @STRFMT_PREC(i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i64 [ %19, %16 ], [ %22, %20 ]
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @STRFMT_WIDTH(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  br label %35

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = call i8* @lj_buf_more(i32* %27, i64 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STRFMT_F_LEFT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = call i32 @strdata(%struct.TYPE_4__* %44)
  %46 = load i64, i64* %7, align 8
  %47 = call i8* @lj_buf_wmem(i8* %43, i32 %45, i64 %46)
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %42, %35
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sgt i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  store i8 32, i8* %55, align 1
  br label %49

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @STRFMT_F_LEFT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = call i32 @strdata(%struct.TYPE_4__* %64)
  %66 = load i64, i64* %7, align 8
  %67 = call i8* @lj_buf_wmem(i8* %63, i32 %65, i64 %66)
  store i8* %67, i8** %9, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @setsbufP(i32* %69, i8* %70)
  %72 = load i32*, i32** %4, align 8
  ret i32* %72
}

declare dso_local i64 @STRFMT_PREC(i32) #1

declare dso_local i64 @STRFMT_WIDTH(i32) #1

declare dso_local i8* @lj_buf_more(i32*, i64) #1

declare dso_local i8* @lj_buf_wmem(i8*, i32, i64) #1

declare dso_local i32 @strdata(%struct.TYPE_4__*) #1

declare dso_local i32 @setsbufP(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
