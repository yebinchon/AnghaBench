; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_VarType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_VarType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@VT_TYPEMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"not supported %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_VarType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_VarType(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @debugstr_variant(i32* %10)
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @V_VT(i32* %17)
  %19 = load i32, i32* @VT_TYPEMASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @debugstr_variant(i32* %24)
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @V_VT(i32* %30)
  %32 = call i32 @return_short(i32* %29, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @return_short(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
