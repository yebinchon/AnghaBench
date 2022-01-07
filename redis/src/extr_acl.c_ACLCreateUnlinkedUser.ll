; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCreateUnlinkedUser.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCreateUnlinkedUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"__fakeuser:%d__\00", align 1
@Users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ACLCreateUnlinkedUser() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %27, %0
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @snprintf(i8* %6, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %11 = call i32 @strlen(i8* %10)
  %12 = call i32* @ACLCreateUser(i8* %9, i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %27

16:                                               ; preds = %5
  %17 = load i32, i32* @Users, align 4
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @raxRemove(i32 %17, i8* %18, i32 %20, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @serverAssert(i32 %24)
  %26 = load i32*, i32** %3, align 8
  ret i32* %26

27:                                               ; preds = %15
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %5
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @ACLCreateUser(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #1

declare dso_local i32 @serverAssert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
