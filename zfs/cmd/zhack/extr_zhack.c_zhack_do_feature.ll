; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_do_feature.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_do_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error: no feature operation specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"error: unknown subcommand: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zhack_do_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zhack_do_feature(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %9, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @usage()
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = call i32 @zhack_do_feature_stat(i32 %24, i8** %25)
  br label %50

27:                                               ; preds = %16
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = call i32 @zhack_do_feature_enable(i32 %32, i8** %33)
  br label %49

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = call i32 @zhack_do_feature_ref(i32 %40, i8** %41)
  br label %48

43:                                               ; preds = %35
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49, %23
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zhack_do_feature_stat(i32, i8**) #1

declare dso_local i32 @zhack_do_feature_enable(i32, i8**) #1

declare dso_local i32 @zhack_do_feature_ref(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
