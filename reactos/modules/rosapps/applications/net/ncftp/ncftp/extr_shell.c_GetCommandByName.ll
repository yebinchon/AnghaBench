; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_shell.c_GetCommandByName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_shell.c_GetCommandByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gCommands = common dso_local global i32* null, align 8
@gNumCommands = common dso_local global i32 0, align 4
@CommandExactSearchCmp = common dso_local global i64 0, align 8
@kNoCommand = common dso_local global i32* null, align 8
@kAmbiguousCommand = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetCommandByName(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32*, i32** @gCommands, align 8
  %10 = load i32, i32* @gNumCommands, align 4
  %11 = load i64, i64* @CommandExactSearchCmp, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i64 @bsearch(i8* %8, i32* %9, i32 %10, i32 4, i32 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** @kNoCommand, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i32*, i32** @gCommands, align 8
  %24 = load i32, i32* @gNumCommands, align 4
  %25 = call i64 @bsearch(i8* %22, i32* %23, i32 %24, i32 4, i32 ptrtoint (i64 (i8*, i32*)* @CommandSubSearchCmp to i32))
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** @kNoCommand, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** @gCommands, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = icmp ne i32* %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  store i32* %37, i32** %7, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @CommandSubSearchCmp(i8* %38, i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32*, i32** @kAmbiguousCommand, align 8
  store i32* %43, i32** %3, align 8
  br label %67

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** @gCommands, align 8
  %48 = load i32, i32* @gNumCommands, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = icmp ne i32* %46, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32* %55, i32** %7, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @CommandSubSearchCmp(i8* %56, i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32*, i32** @kAmbiguousCommand, align 8
  store i32* %61, i32** %3, align 8
  br label %67

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %21
  br label %65

65:                                               ; preds = %64, %18, %2
  %66 = load i32*, i32** %6, align 8
  store i32* %66, i32** %3, align 8
  br label %67

67:                                               ; preds = %65, %60, %42
  %68 = load i32*, i32** %3, align 8
  ret i32* %68
}

declare dso_local i64 @bsearch(i8*, i32*, i32, i32, i32) #1

declare dso_local i64 @CommandSubSearchCmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
