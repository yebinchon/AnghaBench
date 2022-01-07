; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_elem_text.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_elem_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@READYSTATE_INTERACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c">>>\0A\00", align 1
@windowW = common dso_local global i32 0, align 4
@script_endW = common dso_local global i32 0, align 4
@SCRIPTTEXT_ISVISIBLE = common dso_local global i32 0, align 4
@SCRIPTTEXT_HOSTMANAGESSOURCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"<<<\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<<< %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @parse_elem_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_elem_text(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @debugstr_w(i32 %10)
  %12 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @READYSTATE_INTERACTIVE, align 4
  %15 = call i32 @set_script_elem_readystate(i32* %13, i32 %14)
  %16 = call i32 @VariantInit(i32* %8)
  %17 = call i32 @memset(i32* %7, i32 0, i32 4)
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @windowW, align 4
  %24 = load i32, i32* @script_endW, align 4
  %25 = load i32, i32* @SCRIPTTEXT_ISVISIBLE, align 4
  %26 = load i32, i32* @SCRIPTTEXT_HOSTMANAGESSOURCE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @IActiveScriptParse_ParseScriptText(i32 %21, i32 %22, i32 %23, i32* null, i32 %24, i32 0, i32 0, i32 %27, i32* %8, i32* %7)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @SUCCEEDED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @WARN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %32
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @set_script_elem_readystate(i32*, i32) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IActiveScriptParse_ParseScriptText(i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
