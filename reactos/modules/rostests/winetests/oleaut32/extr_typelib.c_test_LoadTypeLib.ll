; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_LoadTypeLib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_LoadTypeLib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_LoadTypeLib.kernel32_dllW = internal constant [13 x i8] c"kernel32.dll\00", align 1
@TYPE_E_CANTLOADLIBRARY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"LoadTypeLib returned: %08x, expected TYPE_E_CANTLOADLIBRARY\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Got %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Got %p.\0A\00", align 1
@REGKIND_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoadTypeLib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoadTypeLib() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i8* @LoadTypeLib(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_LoadTypeLib.kernel32_dllW, i64 0, i64 0), i8** %1)
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** @TYPE_E_CANTLOADLIBRARY, align 8
  %6 = icmp eq i8* %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i8* @LoadTypeLib(i8* null, i8** null)
  store i8* %10, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** @E_INVALIDARG, align 8
  %13 = icmp eq i8* %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %1, align 8
  %17 = call i8* @LoadTypeLib(i8* null, i8** %1)
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i8*, i8** @E_INVALIDARG, align 8
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %1, align 8
  %25 = icmp eq i8* %24, inttoptr (i64 3735928559 to i8*)
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @REGKIND_NONE, align 4
  %30 = call i8* @LoadTypeLibEx(i32* null, i32 %29, i8** null)
  store i8* %30, i8** %2, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = load i8*, i8** @E_INVALIDARG, align 8
  %33 = icmp eq i8* %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %1, align 8
  %37 = load i32, i32* @REGKIND_NONE, align 4
  %38 = call i8* @LoadTypeLibEx(i32* null, i32 %37, i8** %1)
  store i8* %38, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = load i8*, i8** @E_INVALIDARG, align 8
  %41 = icmp eq i8* %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %1, align 8
  %46 = icmp eq i8* %45, inttoptr (i64 3735928559 to i8*)
  %47 = zext i1 %46 to i32
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  ret void
}

declare dso_local i8* @LoadTypeLib(i8*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i8* @LoadTypeLibEx(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
