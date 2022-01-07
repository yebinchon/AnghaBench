; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_luac.c_main.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_luac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Smain = type { i32, i8** }

@.str = private unnamed_addr constant [21 x i8] c"no input files given\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not enough memory for state\00", align 1
@pmain = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Smain, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @doargs(i32 %9, i8** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8** %18, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = call i32* (...) @lua_open()
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 1
  store i8** %32, i8*** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @pmain, align 4
  %36 = call i64 @lua_cpcall(i32* %34, i32 %35, %struct.Smain* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @lua_tostring(i32* %39, i32 -1)
  %41 = call i32 @fatal(i8* %40)
  br label %42

42:                                               ; preds = %38, %29
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @lua_close(i32* %43)
  %45 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %45
}

declare dso_local i32 @doargs(i32, i8**) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @lua_open(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @lua_cpcall(i32*, i32, %struct.Smain*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
