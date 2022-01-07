; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codegrammar.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codegrammar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@MAXRULES = common dso_local global i32 0, align 4
@ICall = common dso_local global i32 0, align 4
@IJmp = common dso_local global i32 0, align 4
@TRule = common dso_local global i64 0, align 8
@NOINST = common dso_local global i32 0, align 4
@fullset = common dso_local global i32 0, align 4
@IRet = common dso_local global i32 0, align 4
@TTrue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @codegrammar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codegrammar(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* @MAXRULES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @ICall, align 4
  %18 = call i32 @addoffsetinst(i32* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @IJmp, align 4
  %21 = call i32 @addoffsetinst(i32* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @gethere(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @jumptohere(i32* %24, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  br label %29

29:                                               ; preds = %51, %2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TRule, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @gethere(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %15, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %43)
  %45 = load i32, i32* @NOINST, align 4
  %46 = load i32, i32* @fullset, align 4
  %47 = call i32 @codegen(i32* %42, %struct.TYPE_8__* %44, i32 0, i32 %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @IRet, align 4
  %50 = call i32 @addinstruction(i32* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %35
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = call %struct.TYPE_8__* @sib2(%struct.TYPE_8__* %52)
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %8, align 8
  br label %29

54:                                               ; preds = %29
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TTrue, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @jumptohere(i32* %62, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @gethere(i32* %67)
  %69 = call i32 @correctcalls(i32* %65, i32* %15, i32 %66, i32 %68)
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @addoffsetinst(i32*, i32) #2

declare dso_local i32 @gethere(i32*) #2

declare dso_local i32 @jumptohere(i32*, i32) #2

declare dso_local %struct.TYPE_8__* @sib1(%struct.TYPE_8__*) #2

declare dso_local i32 @codegen(i32*, %struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @addinstruction(i32*, i32, i32) #2

declare dso_local %struct.TYPE_8__* @sib2(%struct.TYPE_8__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @correctcalls(i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
