; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetmib1/extr_main.c_init_test_functions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetmib1/extr_main.c_init_test_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inetmib1\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to load inetmib1.dll\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SnmpExtensionInit\00", align 1
@pSnmpExtensionInit = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"SnmpExtensionQuery\00", align 1
@pSnmpExtensionQuery = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @init_test_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init_test_functions() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %19

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @GetProcAddress(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pSnmpExtensionInit, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @GetProcAddress(i32* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @pSnmpExtensionQuery, align 8
  %18 = load i32*, i32** %2, align 8
  store i32* %18, i32** %1, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32*, i32** %1, align 8
  ret i32* %20
}

declare dso_local i32* @LoadLibraryA(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
