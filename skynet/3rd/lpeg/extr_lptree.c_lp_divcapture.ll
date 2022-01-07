; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_divcapture.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_divcapture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Cfunction = common dso_local global i32 0, align 4
@Cquery = common dso_local global i32 0, align 4
@Cstring = common dso_local global i32 0, align 4
@TCapture = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@Cnum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid replacement value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lp_divcapture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_divcapture(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_type(i32* %6, i32 2)
  switch i32 %7, label %43 [
    i32 131, label %8
    i32 128, label %12
    i32 129, label %16
    i32 130, label %20
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @Cfunction, align 4
  %11 = call i32 @capture_aux(i32* %9, i32 %10, i32 2)
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @Cquery, align 4
  %15 = call i32 @capture_aux(i32* %13, i32 %14, i32 2)
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @Cstring, align 4
  %19 = call i32 @capture_aux(i32* %17, i32 %18, i32 2)
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_tointeger(i32* %21, i32 2)
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @TCapture, align 4
  %25 = call %struct.TYPE_3__* @newroot1sib(i32* %23, i32 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %5, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 0, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SHRT_MAX, align 4
  %32 = icmp sle i32 %30, %31
  br label %33

33:                                               ; preds = %29, %20
  %34 = phi i1 [ false, %20 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @luaL_argcheck(i32* %26, i32 %35, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @Cnum, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %2, align 4
  br label %46

43:                                               ; preds = %1
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @luaL_argerror(i32* %44, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %33, %16, %12, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @capture_aux(i32*, i32, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @newroot1sib(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
