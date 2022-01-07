; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_parse_sharetab.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_parse_sharetab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_SHARETAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @parse_sharetab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_sharetab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @ZFS_SHARETAB, align 4
  %12 = call i32* @fopen(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %98

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %86, %69, %61, %53, %16
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @fgets(i8* %18, i32 512, i32* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %95

22:                                               ; preds = %17
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %44, %22
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %32 = icmp uge i8* %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 13
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38, %33
  %45 = load i8*, i8** %5, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %5, align 8
  br label %29

48:                                               ; preds = %43, %29
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 9)
  store i8* %51, i8** %7, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %17

54:                                               ; preds = %48
  %55 = load i8*, i8** %7, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 9)
  store i8* %59, i8** %8, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %17

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 9)
  store i8* %67, i8** %9, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %17

70:                                               ; preds = %62
  %71 = load i8*, i8** %9, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 9)
  store i8* %75, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  br label %81

81:                                               ; preds = %77, %70
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i8* null, i8** %7, align 8
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, i32* %2, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* @B_TRUE, align 4
  %94 = call i32 @process_share(i32 %87, i32* null, i8* %88, i8* %89, i8* %90, i8* %91, i8* %92, i32* null, i32 %93)
  br label %17

95:                                               ; preds = %17
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @fclose(i32* %96)
  br label %98

98:                                               ; preds = %95, %15
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @process_share(i32, i32*, i8*, i8*, i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
