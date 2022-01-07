; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLDescribeUser.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLDescribeUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@ACLUserFlags = common dso_local global %struct.TYPE_6__* null, align 8
@USER_FLAG_ALLKEYS = common dso_local global i32 0, align 4
@USER_FLAG_ALLCOMMANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"~* \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"~\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLDescribeUser(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = call i32 (...) @sdsempty()
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %62, %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ACLUserFlags, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ACLUserFlags, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @USER_FLAG_ALLKEYS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ACLUserFlags, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USER_FLAG_ALLCOMMANDS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %19
  br label %62

38:                                               ; preds = %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ACLUserFlags, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %41, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %38
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ACLUserFlags, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sdscat(i32 %51, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @sdscatlen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %50, %38
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @listRewind(i32 %68, i32* %5)
  br label %70

70:                                               ; preds = %73, %65
  %71 = call i32* @listNext(i32* %5)
  store i32* %71, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @listNodeValue(i32* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @sdscatlen(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @sdscatsds(i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @sdscatlen(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %82, i32* %3, align 4
  br label %70

83:                                               ; preds = %70
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @USER_FLAG_ALLKEYS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @sdscatlen(i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  store i32 %92, i32* %3, align 4
  br label %112

93:                                               ; preds = %83
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @listRewind(i32 %96, i32* %5)
  br label %98

98:                                               ; preds = %101, %93
  %99 = call i32* @listNext(i32* %5)
  store i32* %99, i32** %6, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @listNodeValue(i32* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @sdscatlen(i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @sdscatsds(i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @sdscatlen(i32 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %110, i32* %3, align 4
  br label %98

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %90
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = call i32 @ACLDescribeUserCommandRules(%struct.TYPE_5__* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @sdscatsds(i32 %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @sdsfree(i32 %118)
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscat(i32, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local i32 @listNodeValue(i32*) #1

declare dso_local i32 @sdscatsds(i32, i32) #1

declare dso_local i32 @ACLDescribeUserCommandRules(%struct.TYPE_5__*) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
