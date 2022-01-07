; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_verifygrammar.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_verifygrammar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }

@MAXRULES = common dso_local global i32 0, align 4
@TRule = common dso_local global i64 0, align 8
@TTrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"empty loop in rule '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @verifygrammar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verifygrammar(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load i32, i32* @MAXRULES, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  br label %14

14:                                               ; preds = %31, %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TRule, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %28)
  %30 = call i32 @verifyrule(i32* %27, %struct.TYPE_9__* %29, i32* %11, i32 0, i32 0)
  br label %31

31:                                               ; preds = %26, %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = call %struct.TYPE_9__* @sib2(%struct.TYPE_9__* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %7, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TTrue, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %7, align 8
  br label %44

44:                                               ; preds = %72, %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRule, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %72

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %57)
  %59 = call i64 @checkloops(%struct.TYPE_9__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @lua_rawgeti(i32* %62, i32 -1, i64 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @val2str(i32* %68, i32 -1)
  %70 = call i32 @luaL_error(i32* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %61, %56
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = call %struct.TYPE_9__* @sib2(%struct.TYPE_9__* %73)
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %7, align 8
  br label %44

75:                                               ; preds = %44
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TTrue, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @sib1(%struct.TYPE_9__*) #2

declare dso_local i32 @verifyrule(i32*, %struct.TYPE_9__*, i32*, i32, i32) #2

declare dso_local %struct.TYPE_9__* @sib2(%struct.TYPE_9__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @checkloops(%struct.TYPE_9__*) #2

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #2

declare dso_local i32 @luaL_error(i32*, i8*, i32) #2

declare dso_local i32 @val2str(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
