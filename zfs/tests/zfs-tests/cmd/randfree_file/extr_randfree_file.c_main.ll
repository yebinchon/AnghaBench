; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/randfree_file/extr_randfree_file.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/randfree_file/extr_randfree_file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"l:s:n:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"FALLOC_FL_PUNCH_HOLE unsupported\00", align 1
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* @S_IRUSR, align 4
  %15 = load i32, i32* @S_IWUSR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IRGRP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @S_IROTH, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @EOF, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %39 [
    i32 108, label %29
    i32 115, label %33
    i32 110, label %36
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @optarg, align 4
  %31 = call i8* @atoll(i32 %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %8, align 8
  br label %44

33:                                               ; preds = %27
  %34 = load i32, i32* @optarg, align 4
  %35 = call i8* @atoll(i32 %34)
  store i8* %35, i8** %9, align 8
  br label %44

36:                                               ; preds = %27
  %37 = load i32, i32* @optarg, align 4
  %38 = call i8* @atoll(i32 %37)
  store i8* %38, i8** %10, align 8
  br label %44

39:                                               ; preds = %27
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @usage(i8* %42)
  br label %44

44:                                               ; preds = %39, %36, %33, %29
  br label %21

45:                                               ; preds = %21
  %46 = load i32, i32* @optind, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* @optind, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %6, align 8
  br label %61

56:                                               ; preds = %45
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @usage(i8* %59)
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @O_RDWR, align 4
  %64 = load i32, i32* @O_CREAT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @O_TRUNC, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @open(i8* %62, i32 %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %105

73:                                               ; preds = %61
  %74 = load i64, i64* %8, align 8
  %75 = call i64 @calloc(i32 1, i64 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %7, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @close(i32 %81)
  store i32 1, i32* %3, align 4
  br label %105

83:                                               ; preds = %73
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @memset(i8* %84, i8 signext 99, i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @write(i32 %87, i8* %88, i64 %89)
  %91 = load i64, i64* %8, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @free(i8* %94)
  %96 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @close(i32 %97)
  store i32 1, i32* %3, align 4
  br label %105

99:                                               ; preds = %83
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @free(i8* %100)
  %102 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @close(i32 %103)
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %93, %79, %71
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoll(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
