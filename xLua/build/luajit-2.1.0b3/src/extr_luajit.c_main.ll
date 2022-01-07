; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_main.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i32 }

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@smain = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pmain = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32* (...) @lua_open()
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @l_message(i8* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smain, i32 0, i32 0), align 8
  %19 = load i8**, i8*** %5, align 8
  store i8** %19, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smain, i32 0, i32 1), align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @pmain, align 4
  %22 = call i32 @lua_cpcall(i32* %20, i32 %21, i32* null)
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @report(i32* %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @lua_close(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smain, i32 0, i32 2), align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %17
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @lua_open(...) #1

declare dso_local i32 @l_message(i8*, i8*) #1

declare dso_local i32 @lua_cpcall(i32*, i32, i32*) #1

declare dso_local i32 @report(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
