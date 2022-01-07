; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lua.c_main.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lua.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Smain = type { i32, i8**, i32 }

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@pmain = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Smain, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32* (...) @lua_open()
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @l_message(i8* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 1
  store i8** %21, i8*** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @lua_cpcall(i32* %23, i32* @pmain, %struct.Smain* %7)
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @report(i32* %25, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @lua_close(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %18
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @lua_open(...) #1

declare dso_local i32 @l_message(i8*, i8*) #1

declare dso_local i32 @lua_cpcall(i32*, i32*, %struct.Smain*) #1

declare dso_local i32 @report(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
