; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_parse_name_value.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_parse_name_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ZTEST_VDEV_CLASS_RND = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"missing value in property=value '-C' argument (%s)\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ZTEST_VDEV_CLASS_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ZTEST_VDEV_CLASS_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid property value '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"invalid property name '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%s vdev state is '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*)* @ztest_parse_name_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_parse_name_value(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32, i32* @ZTEST_VDEV_CLASS_RND, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlcpy(i8* %9, i8* %10, i32 32)
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %13 = call i8* @strchr(i8* %12, i8 signext 61)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @B_FALSE, align 4
  %21 = call i32 @usage(i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i8*, i8** %6, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ZTEST_VDEV_CLASS_ON, align 4
  store i32 %30, i32* %7, align 4
  br label %51

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @ZTEST_VDEV_CLASS_OFF, align 4
  store i32 %36, i32* %7, align 4
  br label %50

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @ZTEST_VDEV_CLASS_RND, align 4
  store i32 %42, i32* %7, align 4
  br label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @B_FALSE, align 4
  %48 = call i32 @usage(i32 %47)
  br label %49

49:                                               ; preds = %43, %41
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %29
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %65

59:                                               ; preds = %51
  %60 = load i32, i32* @stderr, align 4
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @B_FALSE, align 4
  %64 = call i32 @usage(i32 %63)
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 3
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %65
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
