; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_aux.c_panic.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_aux.c_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"PANIC: unprotected error in call to Lua API (\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panic(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i8* @lua_tostring(i32* %4, i32 -1)
  store i8* %5, i8** %3, align 8
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fputs(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i8* [ %11, %10 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %12 ]
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fputs(i8* %14, i32 %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fputc(i8 signext 41, i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fputc(i8 signext 10, i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fflush(i32 %21)
  ret i32 0
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
