; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_check_jscript.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_check_jscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"if(!('localeCompare' in String.prototype)) throw 1;\00", align 1
@S_OK = common dso_local global i64 0, align 8
@IID_IActiveScriptProperty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_jscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_jscript() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32* (...) @create_script()
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %1, align 4
  br label %39

11:                                               ; preds = %0
  %12 = call i32 @a2bstr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @IActiveScriptParse_ParseScriptText(i32* %13, i32 %14, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @SysFreeString(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i32*, i32** %3, align 8
  %23 = bitcast i32** %2 to i8**
  %24 = call i64 @IActiveScriptParse_QueryInterface(i32* %22, i32* @IID_IActiveScriptProperty, i8** %23)
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %21, %11
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @IActiveScriptParse_Release(i32* %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @IActiveScriptProperty_Release(i32* %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %34, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32* @create_script(...) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IActiveScriptParse_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IActiveScriptParse_Release(i32*) #1

declare dso_local i32 @IActiveScriptProperty_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
