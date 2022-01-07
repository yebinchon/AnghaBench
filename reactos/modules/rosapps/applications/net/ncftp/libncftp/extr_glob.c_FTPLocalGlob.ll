; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPLocalGlob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPLocalGlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPLocalGlob(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @kErrBadParameter, align 4
  store i32 %15, i32* %5, align 4
  br label %69

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @kLibraryMagic, align 4
  %21 = call i64 @strcmp(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @kErrBadMagic, align 4
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %16
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @kErrBadParameter, align 4
  store i32 %29, i32* %5, align 4
  br label %69

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @InitLineList(i32* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %30
  %42 = load i32, i32* @kErrBadParameter, align 4
  store i32 %42, i32* %5, align 4
  br label %69

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @STRNCPY(i32 %44, i8* %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @ExpandTilde(i32 %47, i32 4)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @InitLineList(i32* %49)
  %51 = load i32, i32* @kNoErr, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @GLOBCHARSINSTR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @LazyUnixLocalGlob(%struct.TYPE_5__* %59, i32* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  br label %67

63:                                               ; preds = %54, %43
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @AddLine(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %41, %28, %23, %14
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @InitLineList(i32*) #1

declare dso_local i32 @STRNCPY(i32, i8*) #1

declare dso_local i32 @ExpandTilde(i32, i32) #1

declare dso_local i64 @GLOBCHARSINSTR(i32) #1

declare dso_local i32 @LazyUnixLocalGlob(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @AddLine(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
