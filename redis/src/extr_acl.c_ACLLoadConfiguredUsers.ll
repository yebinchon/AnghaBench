; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLLoadConfiguredUsers.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLLoadConfiguredUsers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@UsersToLoad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@C_OK = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Error loading ACL rule '%s' for the user named '%s': %s\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@USER_FLAG_DISABLED = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [124 x i8] c"The user '%s' is disabled (there is no 'on' modifier in the user description). Make sure this is not a configuration error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLLoadConfiguredUsers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @UsersToLoad, align 4
  %10 = call i32 @listRewind(i32 %9, i32* %2)
  br label %11

11:                                               ; preds = %92, %0
  %12 = call i32* @listNext(i32* %2)
  store i32* %12, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %93

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = call i8** @listNodeValue(i32* %15)
  store i8** %16, i8*** %4, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @sdslen(i8* %21)
  %23 = call %struct.TYPE_5__* @ACLCreateUser(i8* %20, i32 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %14
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @sdslen(i8* %28)
  %30 = call %struct.TYPE_5__* @ACLGetUserByName(i8* %27, i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @serverAssert(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = call i64 @ACLSetUser(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %37

37:                                               ; preds = %26, %14
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %79

45:                                               ; preds = %38
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load i8**, i8*** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @sdslen(i8* %56)
  %58 = call i64 @ACLSetUser(%struct.TYPE_5__* %46, i8* %51, i32 %57)
  %59 = load i64, i64* @C_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %45
  %62 = call i8* (...) @ACLSetUserStringError()
  store i8* %62, i8** %8, align 8
  %63 = load i32, i32* @LL_WARNING, align 4
  %64 = load i8**, i8*** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %63, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %71, i8* %72)
  %74 = load i32, i32* @C_ERR, align 4
  store i32 %74, i32* %1, align 4
  br label %96

75:                                               ; preds = %45
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %38

79:                                               ; preds = %38
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @USER_FLAG_DISABLED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @LL_NOTICE, align 4
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %87, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %86, %79
  br label %11

93:                                               ; preds = %11
  %94 = load i64, i64* @C_OK, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %93, %61
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local i8** @listNodeValue(i32*) #1

declare dso_local %struct.TYPE_5__* @ACLCreateUser(i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local %struct.TYPE_5__* @ACLGetUserByName(i8*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @ACLSetUser(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i8* @ACLSetUserStringError(...) #1

declare dso_local i32 @serverLog(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
