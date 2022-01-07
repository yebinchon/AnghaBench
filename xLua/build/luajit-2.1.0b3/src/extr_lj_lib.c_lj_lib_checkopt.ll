; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lj_lib_checkopt.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lj_lib_checkopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@LJ_ERR_INVOPTM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_lib_checkopt(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_5__* @lj_lib_optstr(i32* %17, i32 %18)
  br label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_5__* @lj_lib_checkstr(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi %struct.TYPE_5__* [ %19, %16 ], [ %23, %20 ]
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = call i8* @strdata(%struct.TYPE_5__* %29)
  store i8* %30, i8** %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %61, %28
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @memcmp(i8* %46, i8* %48, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %72

54:                                               ; preds = %45, %39
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 1, %57
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @LJ_ERR_INVOPTM, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @lj_err_argv(i32* %65, i32 %66, i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %64, %24
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %52
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_5__* @lj_lib_optstr(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @lj_lib_checkstr(i32*, i32) #1

declare dso_local i8* @strdata(%struct.TYPE_5__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @lj_err_argv(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
