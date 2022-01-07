; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_python.c_BufferGetattr.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_python.c_BufferGetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BufferMethods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @BufferGetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BufferGetattr(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @BufferAttrValid(i32* %7, i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %3, align 8
  br label %34

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @CheckBuffer(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32* null, i32** %3, align 8
  br label %34

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @BufferAttr(i32* %19, i8* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = call i64 (...) @PyErr_Occurred()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %18
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %3, align 8
  br label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @BufferMethods, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32* @Py_FindMethod(i32 %30, i32* %31, i8* %32)
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %29, %27, %17, %11
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32* @BufferAttrValid(i32*, i8*) #1

declare dso_local i64 @CheckBuffer(i32*) #1

declare dso_local i32* @BufferAttr(i32*, i8*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32* @Py_FindMethod(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
