; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_encode_default.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_encode_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_arg = type { i64, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"__array\00", align 1
@SPROTO_CB_NOARRAY = common dso_local global i32 0, align 4
@SPROTO_CB_NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sproto_arg*)* @encode_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_default(%struct.sproto_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sproto_arg*, align 8
  %4 = alloca i32*, align 8
  store %struct.sproto_arg* %0, %struct.sproto_arg** %3, align 8
  %5 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %6 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %10 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @lua_pushstring(i32* %8, i32 %11)
  %13 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %14 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lua_newtable(i32* %18)
  %20 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %21 = call i32 @push_default(%struct.sproto_arg* %20, i32 1)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @lua_setfield(i32* %22, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_rawset(i32* %24, i32 -3)
  %26 = load i32, i32* @SPROTO_CB_NOARRAY, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %29 = call i32 @push_default(%struct.sproto_arg* %28, i32 0)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @lua_rawset(i32* %30, i32 -3)
  %32 = load i32, i32* @SPROTO_CB_NIL, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @push_default(%struct.sproto_arg*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
