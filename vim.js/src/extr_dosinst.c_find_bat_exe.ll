; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_find_bat_exe.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_find_bat_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i8*, i32 }

@sysdrive = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@TARGET_COUNT = common dso_local global i32 0, align 4
@targets = common dso_local global %struct.TYPE_2__* null, align 8
@default_bat_dir = common dso_local global i32* null, align 8
@installdir = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @find_bat_exe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_bat_exe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i8*, i8** @sysdrive, align 8
  %5 = call i32 @mch_chdir(i8* %4)
  %6 = call i32 @mch_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %7

7:                                                ; preds = %96, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TARGET_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %99

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @searchpath_save(i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* %19, i32** %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %11
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @searchpath_save(i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i8* %34, i8** %39, align 8
  br label %40

40:                                               ; preds = %27, %11
  %41 = load i32*, i32** @default_bat_dir, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @strlen(i32* %57)
  %59 = add nsw i64 %58, 1
  %60 = call i32* @alloc(i64 %59)
  store i32* %60, i32** @default_bat_dir, align 8
  %61 = load i32*, i32** @default_bat_dir, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @strcpy(i32* %61, i32* %67)
  %69 = load i32*, i32** @default_bat_dir, align 8
  %70 = call i32 @remove_tail(i32* %69)
  br label %71

71:                                               ; preds = %51, %43, %40
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %74
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @free(i32* %88)
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %82, %74, %71
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %7

99:                                               ; preds = %7
  %100 = load i8*, i8** @installdir, align 8
  %101 = call i32 @mch_chdir(i8* %100)
  ret void
}

declare dso_local i32 @mch_chdir(i8*) #1

declare dso_local i8* @searchpath_save(i32) #1

declare dso_local i32* @alloc(i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @strcpy(i32*, i32*) #1

declare dso_local i32 @remove_tail(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
