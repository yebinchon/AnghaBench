; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPRename.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPRename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"RNFR %s\00", align 1
@kErrRenameFailed = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"RNTO %s\00", align 1
@kNoErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPRename(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @kErrBadParameter, align 4
  store i32 %12, i32* %4, align 4
  br label %84

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @kLibraryMagic, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @kErrBadMagic, align 4
  store i32 %21, i32* %4, align 4
  br label %84

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %22
  %32 = load i32, i32* @kErrBadParameter, align 4
  store i32 %32, i32* %4, align 4
  br label %84

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %33
  %43 = load i32, i32* @kErrBadParameter, align 4
  store i32 %43, i32* %4, align 4
  br label %84

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @FTPCmd(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %84

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 3
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i8*, i8** @kErrRenameFailed, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  br label %84

63:                                               ; preds = %52
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @FTPCmd(%struct.TYPE_4__* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %84

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i8*, i8** @kErrRenameFailed, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @kNoErr, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %74, %69, %55, %50, %42, %31, %20, %11
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPCmd(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
