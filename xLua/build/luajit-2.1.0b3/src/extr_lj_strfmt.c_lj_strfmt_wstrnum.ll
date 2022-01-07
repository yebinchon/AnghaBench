; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt.c_lj_strfmt_wstrnum.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt.c_lj_strfmt_wstrnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@STRFMT_G14 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lj_strfmt_wstrnum(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = call i64 @tvisstr(%struct.TYPE_10__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = call %struct.TYPE_11__* @strV(%struct.TYPE_10__* %13)
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = call i8* @strVdata(%struct.TYPE_10__* %18)
  store i8* %19, i8** %4, align 8
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = call i64 @tvisint(%struct.TYPE_10__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @lj_buf_tmp_(i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = call i32 @intV(%struct.TYPE_10__* %27)
  %29 = call i32* @lj_strfmt_putint(i32 %26, i32 %28)
  store i32* %29, i32** %8, align 8
  br label %44

30:                                               ; preds = %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i64 @tvisnum(%struct.TYPE_10__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @lj_buf_tmp_(i32* %35)
  %37 = load i32, i32* @STRFMT_G14, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @lj_strfmt_putfnum(i32 %36, i32 %37, i32 %40)
  store i32* %41, i32** %8, align 8
  br label %43

42:                                               ; preds = %30
  store i8* null, i8** %4, align 8
  br label %51

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @sbuflen(i32* %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i8* @sbufB(i32* %49)
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %45, %42, %12
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local i64 @tvisstr(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @strV(%struct.TYPE_10__*) #1

declare dso_local i8* @strVdata(%struct.TYPE_10__*) #1

declare dso_local i64 @tvisint(%struct.TYPE_10__*) #1

declare dso_local i32* @lj_strfmt_putint(i32, i32) #1

declare dso_local i32 @lj_buf_tmp_(i32*) #1

declare dso_local i32 @intV(%struct.TYPE_10__*) #1

declare dso_local i64 @tvisnum(%struct.TYPE_10__*) #1

declare dso_local i32* @lj_strfmt_putfnum(i32, i32, i32) #1

declare dso_local i32 @sbuflen(i32*) #1

declare dso_local i8* @sbufB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
