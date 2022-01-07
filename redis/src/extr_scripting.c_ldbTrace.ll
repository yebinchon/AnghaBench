; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbTrace.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbTrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"Snl\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"user_script\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s:\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"top level\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"<error> Can't retrieve Lua stack.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbTrace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @lua_getstack(i32* %6, i32 %7, %struct.TYPE_4__* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %5
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_getinfo(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %3)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @strstr(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = call i32 (...) @sdsempty()
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i8* [ %28, %26 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %29 ]
  %32 = call i32 @sdscatprintf(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %22, i8* %31)
  %33 = call i32 @ldbLog(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ldbLogSourceLine(i32 %35)
  br label %37

37:                                               ; preds = %30, %10
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %5

40:                                               ; preds = %5
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 @sdsnew(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 @ldbLog(i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  ret void
}

declare dso_local i64 @lua_getstack(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @ldbLogSourceLine(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
