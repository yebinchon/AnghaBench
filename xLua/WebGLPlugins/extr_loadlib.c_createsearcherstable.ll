; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_loadlib.c_createsearcherstable.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_loadlib.c_createsearcherstable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@createsearcherstable.searchers = internal constant [5 x i32*] [i32* inttoptr (i64 128 to i32*), i32* inttoptr (i64 129 to i32*), i32* inttoptr (i64 131 to i32*), i32* inttoptr (i64 130 to i32*), i32* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"searchers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @createsearcherstable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createsearcherstable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @lua_createtable(i32* %4, i32 4, i32 0)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x i32*], [5 x i32*]* @createsearcherstable.searchers, i64 0, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_pushvalue(i32* %13, i32 -2)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i32*], [5 x i32*]* @createsearcherstable.searchers, i64 0, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @lua_pushcclosure(i32* %15, i32* %19, i32 1)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @lua_rawseti(i32* %21, i32 -2, i32 %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_setfield(i32* %29, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
