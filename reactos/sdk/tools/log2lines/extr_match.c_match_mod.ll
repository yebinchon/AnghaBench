; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_match.c_match_mod.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_match.c_match_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8* }

@match_mod.state = internal global i32 0, align 4
@NAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" Base Size %5s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Module relocate list:\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%x %x %20s\00", align 1
@cache = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Relocated: %s %p -> %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @match_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_mod(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @NAMESIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i8*, ...) @sscanf(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %25, i32* %13, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i32, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @match_mod.state, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

29:                                               ; preds = %23
  %30 = load i32, i32* @match_mod.state, align 4
  switch i32 %30, label %56 [
    i32 1, label %31
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, i8*, ...) @sscanf(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %10, i8** %11, i8* %18)
  store i32 %33, i32* %13, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = call %struct.TYPE_3__* @entry_lookup(i32* @cache, i8* %18)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %12, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %18, i8* %48, i8* %51)
  br label %53

53:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

54:                                               ; preds = %31
  store i32 0, i32* @match_mod.state, align 4
  br label %55

55:                                               ; preds = %54
  br label %57

56:                                               ; preds = %29
  store i32 0, i32* @match_mod.state, align 4
  br label %57

57:                                               ; preds = %56, %55
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %53, %27, %21
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #2

declare dso_local i32 @l2l_dbg(i32, i8*, ...) #2

declare dso_local %struct.TYPE_3__* @entry_lookup(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
