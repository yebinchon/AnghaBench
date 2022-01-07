; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_open_reliably.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_open_reliably.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADMSG = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".journal\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"File %s corrupted or uncleanly shut down, renaming and replacing.\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_open_reliably(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9, i32** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32** %10, i32*** %23, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load i32*, i32** %19, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = load i32*, i32** %21, align 8
  %34 = load i32*, i32** %22, align 8
  %35 = load i32**, i32*** %23, align 8
  %36 = call i32 @journal_file_open(i32 -1, i8* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* %31, i32* %32, i32* %33, i32* %34, i32** %35)
  store i32 %36, i32* %24, align 4
  %37 = load i32, i32* %24, align 4
  %38 = load i32, i32* @EBADMSG, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i32, i32* @EHOSTDOWN, align 4
  %43 = sub nsw i32 0, %42
  %44 = load i32, i32* @EPROTONOSUPPORT, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* @ESHUTDOWN, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* @EIDRM, align 4
  %53 = sub nsw i32 0, %52
  %54 = load i32, i32* @ETXTBSY, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @IN_SET(i32 %37, i32 %39, i32 %41, i32 %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %11
  %59 = load i32, i32* %24, align 4
  store i32 %59, i32* %12, align 4
  br label %105

60:                                               ; preds = %11
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @O_ACCMODE, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @O_RDONLY, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %24, align 4
  store i32 %67, i32* %12, align 4
  br label %105

68:                                               ; preds = %60
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @O_CREAT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %24, align 4
  store i32 %74, i32* %12, align 4
  br label %105

75:                                               ; preds = %68
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @endswith(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %24, align 4
  store i32 %80, i32* %12, align 4
  br label %105

81:                                               ; preds = %75
  %82 = load i32, i32* %24, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @log_warning_errno(i32 %82, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @AT_FDCWD, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @journal_file_dispose(i32 %85, i8* %86)
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %24, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %24, align 4
  store i32 %91, i32* %12, align 4
  br label %105

92:                                               ; preds = %81
  %93 = load i8*, i8** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32*, i32** %19, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = load i32*, i32** %21, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = load i32**, i32*** %23, align 8
  %104 = call i32 @journal_file_open(i32 -1, i8* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32* %99, i32* %100, i32* %101, i32* %102, i32** %103)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %92, %90, %79, %73, %66, %58
  %106 = load i32, i32* %12, align 4
  ret i32 %106
}

declare dso_local i32 @journal_file_open(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @IN_SET(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @endswith(i8*, i8*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*) #1

declare dso_local i32 @journal_file_dispose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
