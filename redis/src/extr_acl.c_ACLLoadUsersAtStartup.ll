; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLLoadUsersAtStartup.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLLoadUsersAtStartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UsersToLoad = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [275 x i8] c"Configuring Redis with users defined in redis.conf and at the same setting an ACL file path is invalid. This setup is very likely to lead to configuration errors and security holes, please define either an ACL file or declare users directly in your redis.conf, but not both.\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Critical error while loading ACLs. Exiting.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Aborting Redis startup because of ACL errors: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ACLLoadUsersAtStartup() #0 {
  %1 = alloca i64, align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* @UsersToLoad, align 4
  %9 = call i64 @listLength(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @LL_WARNING, align 4
  %13 = call i32 (i32, i8*, ...) @serverLog(i32 %12, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %7, %0
  %16 = call i64 (...) @ACLLoadConfiguredUsers()
  %17 = load i64, i64* @C_ERR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = call i32 (i32, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %15
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %31 = call i64 @ACLLoadFromFile(i8* %30)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = load i64, i64* %1, align 8
  %37 = call i32 (i32, i8*, ...) @serverLog(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @sdsfree(i64 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %23
  ret void
}

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ACLLoadConfiguredUsers(...) #1

declare dso_local i64 @ACLLoadFromFile(i8*) #1

declare dso_local i32 @sdsfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
