; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ldump.c_DumpConstants.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ldump.c_DumpConstants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @DumpConstants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpConstants(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @DumpInt(i32 %11, i32* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @ttype(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @DumpByte(i32 %26, i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ttype(i32* %29)
  switch i32 %30, label %52 [
    i32 131, label %31
    i32 133, label %32
    i32 130, label %37
    i32 129, label %42
    i32 128, label %47
    i32 132, label %47
  ]

31:                                               ; preds = %18
  br label %54

32:                                               ; preds = %18
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @bvalue(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @DumpByte(i32 %34, i32* %35)
  br label %54

37:                                               ; preds = %18
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @fltvalue(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @DumpNumber(i32 %39, i32* %40)
  br label %54

42:                                               ; preds = %18
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ivalue(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @DumpInteger(i32 %44, i32* %45)
  br label %54

47:                                               ; preds = %18, %18
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @tsvalue(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @DumpString(i32 %49, i32* %50)
  br label %54

52:                                               ; preds = %18
  %53 = call i32 @lua_assert(i32 0)
  br label %54

54:                                               ; preds = %52, %47, %42, %37, %32, %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %14

58:                                               ; preds = %14
  ret void
}

declare dso_local i32 @DumpInt(i32, i32*) #1

declare dso_local i32 @DumpByte(i32, i32*) #1

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @DumpNumber(i32, i32*) #1

declare dso_local i32 @fltvalue(i32*) #1

declare dso_local i32 @DumpInteger(i32, i32*) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i32 @DumpString(i32, i32*) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
