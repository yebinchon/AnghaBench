; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyHelp.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"%s <subcommand> arg arg ... arg. Subcommands are:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyHelp(%struct.TYPE_9__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @sdsnew(i8* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i8* @addReplyDeferredLen(%struct.TYPE_9__* %17)
  store i8* %18, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sdstoupper(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @addReplyStatusFormat(%struct.TYPE_9__* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sdsfree(i32 %24)
  br label %26

26:                                               ; preds = %33, %2
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @addReplyStatus(%struct.TYPE_9__* %34, i8* %40)
  br label %26

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @setDeferredArrayLen(%struct.TYPE_9__* %45, i8* %46, i32 %47)
  ret void
}

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_9__*) #1

declare dso_local i32 @sdstoupper(i32) #1

declare dso_local i32 @addReplyStatusFormat(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @addReplyStatus(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @setDeferredArrayLen(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
