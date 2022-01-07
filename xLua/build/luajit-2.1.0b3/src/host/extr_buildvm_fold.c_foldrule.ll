; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_fold.c_foldrule.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_fold.c_foldrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@funcidx = common dso_local global i32 0, align 4
@nkeys = common dso_local global i64 0, align 8
@BUILD_MAX_FOLD = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Error: too many fold rules, increase BUILD_MAX_FOLD.\0A\00", align 1
@foldkeys = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Error: duplicate fold definition at line %d\0A\00", align 1
@lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @foldrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @foldrule(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i32 @nexttoken(i8** %2, i32 0, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = call i32 @nexttoken(i8** %2, i32 0, i32 127)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @nexttoken(i8** %2, i32 1, i32 1023)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @funcidx, align 4
  %12 = shl i32 %11, 24
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 17
  %15 = or i32 %12, %14
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 10
  %18 = or i32 %15, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* @nkeys, align 8
  %22 = load i64, i64* @BUILD_MAX_FOLD, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %1
  %29 = load i64, i64* @nkeys, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %73, %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %31
  %35 = load i32*, i32** @foldkeys, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 16777215
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 16777215
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %76

46:                                               ; preds = %34
  %47 = load i32*, i32** @foldkeys, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 16777215
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 16777215
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* @lineno, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %46
  %63 = load i32*, i32** @foldkeys, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @foldkeys, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  br label %31

76:                                               ; preds = %45, %31
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** @foldkeys, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i64, i64* @nkeys, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* @nkeys, align 8
  ret void
}

declare dso_local i32 @nexttoken(i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
