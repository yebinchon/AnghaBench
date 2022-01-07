; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLAppendUserForLoading.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLAppendUserForLoading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@UsersToLoad = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLAppendUserForLoading(i32** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32**, i32*** %5, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @strcasecmp(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14, %3
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @C_ERR, align 4
  store i32 %26, i32* %4, align 4
  br label %105

27:                                               ; preds = %14
  %28 = call i32* (...) @ACLCreateUnlinkedUser()
  store i32* %28, i32** %8, align 8
  store i32 2, i32* %9, align 4
  br label %29

29:                                               ; preds = %65, %27
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sdslen(i32* %44)
  %46 = call i32 @ACLSetUser(i32* %34, i32* %39, i32 %45)
  %47 = load i32, i32* @C_ERR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %33
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @ENOENT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @ACLFreeUser(i32* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* @C_ERR, align 4
  store i32 %62, i32* %4, align 4
  br label %105

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %33
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %29

68:                                               ; preds = %29
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 8, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32** @zmalloc(i32 %72)
  store i32** %73, i32*** %10, align 8
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %90, %68
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i32**, i32*** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = call i32* @sdsdup(i32* %83)
  %85 = load i32**, i32*** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %85, i64 %88
  store i32* %84, i32** %89, align 8
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %74

93:                                               ; preds = %74
  %94 = load i32**, i32*** %10, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %94, i64 %97
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @UsersToLoad, align 4
  %100 = load i32**, i32*** %10, align 8
  %101 = call i32 @listAddNodeTail(i32 %99, i32** %100)
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @ACLFreeUser(i32* %102)
  %104 = load i32, i32* @C_OK, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %93, %61, %25
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i32* @ACLCreateUnlinkedUser(...) #1

declare dso_local i32 @ACLSetUser(i32*, i32*, i32) #1

declare dso_local i32 @sdslen(i32*) #1

declare dso_local i32 @ACLFreeUser(i32*) #1

declare dso_local i32** @zmalloc(i32) #1

declare dso_local i32* @sdsdup(i32*) #1

declare dso_local i32 @listAddNodeTail(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
